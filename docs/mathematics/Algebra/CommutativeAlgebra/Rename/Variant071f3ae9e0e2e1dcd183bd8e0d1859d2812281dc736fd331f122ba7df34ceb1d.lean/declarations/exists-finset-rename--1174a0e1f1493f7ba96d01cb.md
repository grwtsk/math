# exists_finset_rename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d16ddf46015ca45c086f648b3fde88d740fce8b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd1873d2-18dc-653a-4da1-af7a4ef5ed0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43c7cfcb-3b74-4ef5-d33b-b192ba1490a5",
  "kind": "theorem",
  "lexical_name": "exists_finset_rename",
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
  "slug": "exists-finset-rename--1174a0e1f1493f7ba96d01cb",
  "source": {
    "blob": "d16ddf46015ca45c086f648b3fde88d740fce8b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 228,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1174a0e1f1493f7ba96d01cbaf22edca09d6e8a8bf7445223c11bb78597d4c79",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Rename/Variant071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43c7cfcb-3b74-4ef5-d33b-b192ba1490a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finset_rename (p : MvPolynomial σ R) :
    ∃ (s : Finset σ) (q : MvPolynomial { x // x ∈ s } R), p = rename (↑) q := by
  classical
  apply induction_on p
  · intro r
    exact ⟨∅, C r, by rw [rename_C]⟩
  · rintro p q ⟨s, p, rfl⟩ ⟨t, q, rfl⟩
    refine' ⟨s ∪ t, ⟨_, _⟩⟩
    · refine' rename (Subtype.map id _) p + rename (Subtype.map id _) q <;>
        simp (config := { contextual := true }) only [id.def, true_or_iff, or_true_iff,
          Finset.mem_union, forall_true_iff]
    · simp only [rename_rename, AlgHom.map_add]
      rfl
  · rintro p n ⟨s, p, rfl⟩
    refine' ⟨insert n s, ⟨_, _⟩⟩
    · refine' rename (Subtype.map id _) p * X ⟨n, s.mem_insert_self n⟩
      simp (config := { contextual := true }) only [id.def, or_true_iff, Finset.mem_insert,
        forall_true_iff]
    · simp only [rename_rename, rename_X, Subtype.coe_mk, AlgHom.map_mul]
      rfl
#align mv_polynomial.exists_finset_rename MvPolynomial.exists_finset_rename

/-- `exists_finset_rename` for two polynomials at once: for any two polynomials `p₁`, `p₂` in a
  polynomial semiring `R[σ]` of possibly infinitely many variables, `exists_finset_rename₂` yields
  a finite subset `s` of `σ` such that both `p₁` and `p₂` are contained in the polynomial semiring
  `R[s]` of finitely many variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Rename/Variant071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d16ddf46015ca45c086f648b3fde88d740fce8b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
