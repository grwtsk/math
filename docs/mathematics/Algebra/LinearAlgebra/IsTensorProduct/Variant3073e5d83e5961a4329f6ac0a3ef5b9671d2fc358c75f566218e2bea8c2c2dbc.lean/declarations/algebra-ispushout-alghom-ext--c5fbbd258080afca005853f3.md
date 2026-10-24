# Algebra.IsPushout.algHom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0987335067045550de2d8a3f6a68c6d1b1fa87fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 495,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:876d2fe9-1939-ca75-0711-c8e513dfec25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71828a17-8cfa-5293-5e27-83a3d19b9833",
  "kind": "theorem",
  "lexical_name": "Algebra.IsPushout.algHom_ext",
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
  "slug": "algebra-ispushout-alghom-ext--c5fbbd258080afca005853f3",
  "source": {
    "blob": "0987335067045550de2d8a3f6a68c6d1b1fa87fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 495,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5fbbd258080afca005853f33fbd0cf5f2a16316143a4e4d3e205aecaa7e9046",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71828a17-8cfa-5293-5e27-83a3d19b9833`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem Algebra.IsPushout.algHom_ext [H : Algebra.IsPushout R S R' S'] {A : Type*} [Semiring A]
    [Algebra R A] {f g : S' →ₐ[R] A} (h₁ : f.comp (toAlgHom R R' S') = g.comp (toAlgHom R R' S'))
    (h₂ : f.comp (toAlgHom R S S') = g.comp (toAlgHom R S S')) : f = g := by
  ext x
  refine H.1.inductionOn x _ ?_ ?_ ?_ ?_
  · simp only [map_zero]
  · exact AlgHom.congr_fun h₁
  · intro s s' e
    rw [Algebra.smul_def, map_mul, map_mul, e]
    congr 1
    exact (AlgHom.congr_fun h₂ s :)
  · intro s₁ s₂ e₁ e₂
    rw [map_add, map_add, e₁, e₂]

variable (R S R')
/--
Let the following be a commutative diagram of rings
```
  R  →  S  →  T
  ↓     ↓     ↓
  R' →  S' →  T'
```
where the left-hand square is a pushout. Then the following are equivalent:
- the big rectangle is a pushout.
- the right-hand square is a pushout.

Note that this is essentially the isomorphism `T ⊗[S] (S ⊗[R] R') ≃ₐ[T] T ⊗[R] R'`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0987335067045550de2d8a3f6a68c6d1b1fa87fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
