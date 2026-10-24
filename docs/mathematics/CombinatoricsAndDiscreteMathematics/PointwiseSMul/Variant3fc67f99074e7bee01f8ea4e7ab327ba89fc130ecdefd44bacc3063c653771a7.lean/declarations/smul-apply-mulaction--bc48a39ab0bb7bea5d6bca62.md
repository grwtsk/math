# smul_apply_mulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bd339bbe32099e4cd4eedf8ec0519b39e0bfed4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f5b375c-c10e-8a5b-34b2-40c9489993ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98412b3f-daf2-5baa-e477-91f183413116",
  "kind": "theorem",
  "lexical_name": "smul_apply_mulAction",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "smul-apply-mulaction--bc48a39ab0bb7bea5d6bca62",
  "source": {
    "blob": "4bd339bbe32099e4cd4eedf8ec0519b39e0bfed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PointwiseSMul/Variant3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc48a39ab0bb7bea5d6bca62b68faec4e5d3ae6ebb5fd4fcd41ca65b18c802bd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PointwiseSMul/Variant3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98412b3f-daf2-5baa-e477-91f183413116`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_apply_mulAction [Group G] [MulAction G P] [Semiring R] [AddCommMonoid V]
    [SMulWithZero R V] (f : MonoidAlgebra R G) (x : P → V) (p : P) :
    (f • x) p = ∑ i ∈ f.coeff.support, (f.coeff i) • x (i⁻¹ • p) := by
  have hp : ((f.coeff.support : Set G).smulAntidiagonal (Function.support x) p).Finite :=
    Set.SMulAntidiagonal.finite_of_finite_fst f.coeff.support.finite_toSet x.support p
  set s : Set (G × P) := ↑(Finset.SMulAntidiagonal p hp)
  have h₁ : s.InjOn Prod.fst := fun _ h₁ _ h₂ h ↦ by
    rw [Finset.mem_coe, mem_smulAntidiagonal_of_group] at h₁ h₂
    aesop
  have h₂ : s.MapsTo Prod.fst ↑f.coeff.support := fun g hg ↦ by aesop
  have h₃ (g : G) (hg : g ∈ f.coeff.support) (hgn : g ∉ Prod.fst '' s) :
      f.coeff g • x (g⁻¹ • p) = 0 := by
    obtain (h | h) : f.coeff g = 0 ∨ ∀ q, ¬ x q = 0 → ¬g • q = p := by aesop
    · simp [h]
    · have := h (g⁻¹ • p)
      aesop
  rw [smul_eq, Finset.sum_of_injOn Prod.fst h₁ h₂ h₃]
  aesop

end MonoidAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PointwiseSMul/Variant3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PointwiseSMul/Variant3fc67f99074e7bee01f8ea4e7ab327ba89fc130ecdefd44bacc3063c653771a7.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bd339bbe32099e4cd4eedf8ec0519b39e0bfed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
