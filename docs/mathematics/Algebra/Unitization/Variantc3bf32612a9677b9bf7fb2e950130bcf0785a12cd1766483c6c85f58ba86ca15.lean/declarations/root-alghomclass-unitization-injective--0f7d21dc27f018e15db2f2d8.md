# _root_.AlgHomClass.unitization_injective'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f23d0d807ad6fd118a05c62611a31cf9f47e4f1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:691ac4e1-1a48-e2ab-3a95-e5596f46f6b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dba4eb5-a018-9da8-85b7-a48ae8b7291b",
  "kind": "theorem",
  "lexical_name": "_root_.AlgHomClass.unitization_injective'",
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
  "slug": "root-alghomclass-unitization-injective--0f7d21dc27f018e15db2f2d8",
  "source": {
    "blob": "f23d0d807ad6fd118a05c62611a31cf9f47e4f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 96,
    "path": "GRWTSK/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f7d21dc27f018e15db2f2d81cb7684fb4c748324d3ae054c7aec09f820fc7c1",
  "verification": {
    "reference": "docs/verification/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dba4eb5-a018-9da8-85b7-a48ae8b7291b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.AlgHomClass.unitization_injective' {F R S A : Type*} [CommRing R] [Ring A]
    [Algebra R A] [SetLike S A] [hSA : NonUnitalSubringClass S A] [hSRA : SMulMemClass S R A]
    (s : S) (h : ∀ r, r ≠ 0 → algebraMap R A r ∉ s)
    [FunLike F (Unitization R s) A] [AlgHomClass F R (Unitization R s) A]
    (f : F) (hf : ∀ x : s, f x = x) : Function.Injective f := by
  refine (injective_iff_map_eq_zero f).mpr fun x hx => ?_
  induction x with
  | inl_add_inr r a =>
    simp_rw [map_add, hf, ← Unitization.algebraMap_eq_inl, AlgHomClass.commutes] at hx
    rw [add_eq_zero_iff_eq_neg] at hx ⊢
    by_cases hr : r = 0
    · ext
      · simp [hr]
      · simpa [hr] using hx
    · exact (h r hr <| hx ▸ (neg_mem a.property)).elim

/-- This is a generic version which allows us to prove both
`NonUnitalSubalgebra.unitization_injective` and `NonUnitalStarSubalgebra.unitization_injective`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f23d0d807ad6fd118a05c62611a31cf9f47e4f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
