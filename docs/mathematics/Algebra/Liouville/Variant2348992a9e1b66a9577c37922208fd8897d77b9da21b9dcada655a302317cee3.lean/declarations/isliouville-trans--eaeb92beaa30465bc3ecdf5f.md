# IsLiouville.trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e2b8ad285a8c71949e545d611536925dd54be74",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08770002-cf64-9ec1-7fc2-24f4a0e3c3e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1b8d050-cab2-362c-3e38-f23e8914369d",
  "kind": "lemma",
  "lexical_name": "IsLiouville.trans",
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
  "slug": "isliouville-trans--eaeb92beaa30465bc3ecdf5f",
  "source": {
    "blob": "7e2b8ad285a8c71949e545d611536925dd54be74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 56,
    "path": "GRWTSK/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaeb92beaa30465bc3ecdf5f2f434947fa4cb618060098acbd843609ca965092",
  "verification": {
    "reference": "docs/verification/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1b8d050-cab2-362c-3e38-f23e8914369d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLiouville.trans {A : Type*} [Field A] [Algebra K A] [Algebra F A]
    [Differential A] [IsScalarTower F K A] [Differential.ContainConstants F K]
    (inst1 : IsLiouville F K) (inst2 : IsLiouville K A) : IsLiouville F A where
  isLiouville (a : F) (ι : Type) [Fintype ι] (c : ι → F) (hc : ∀ x, (c x)′ = 0)
      (u : ι → A) (v : A) (h : a = ∑ x, c x * logDeriv (u x) + v′) := by
    obtain ⟨ι₀, _, c₀, hc₀, u₀, v₀, h₀⟩ := inst2.isLiouville (a : K) ι
        ((↑) ∘ c)
        (fun _ ↦ by simp only [Function.comp_apply, ← coe_deriv, coe_eq_zero_iff, hc])
        ((↑) ∘ u) v (by simpa only [Function.comp_apply, ← IsScalarTower.algebraMap_apply])
    have hc (x : ι₀) := mem_range_of_deriv_eq_zero F (hc₀ x)
    choose c₀ hc using hc
    apply inst1.isLiouville a ι₀ c₀ _ u₀ v₀
    · rw [h₀]
      simp [hc]
    · intro
      apply_fun ((↑) : F → K)
      · simp only [coe_deriv, hc, algebraMap.coe_zero]
        apply hc₀
      · apply FaithfulSMul.algebraMap_injective

section Algebraic
/-
The case of Liouville's theorem for algebraic extensions.
-/

variable {F K} [CharZero F]

/--
If `K` is a Liouville extension of `F` and `B` is a finite-dimensional intermediate
field `K / B / F`, then it's also a Liouville extension of `F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Liouville/Variant2348992a9e1b66a9577c37922208fd8897d77b9da21b9dcada655a302317cee3.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2b8ad285a8c71949e545d611536925dd54be74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
