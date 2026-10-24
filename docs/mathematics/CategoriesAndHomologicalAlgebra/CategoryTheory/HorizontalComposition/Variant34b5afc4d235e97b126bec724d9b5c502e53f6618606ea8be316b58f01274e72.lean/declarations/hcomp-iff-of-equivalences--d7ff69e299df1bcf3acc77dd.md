# hComp_iff_of_equivalences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:965c6f72-e17e-1eea-9bac-fc89b5e1f539",
  "kind": "lemma",
  "lexical_name": "hComp_iff_of_equivalences",
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
  "slug": "hcomp-iff-of-equivalences--d7ff69e299df1bcf3acc77dd",
  "source": {
    "blob": "70d2c43b229215792642d27a45cca08145566b30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HorizontalComposition/Variant34b5afc4d235e97b126bec724d9b5c502e53f6618606ea8be316b58f01274e72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7ff69e299df1bcf3acc77dde253f4cf5ea0a77008a9da8bb020d7ed2a626ae6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HorizontalComposition/Variant34b5afc4d235e97b126bec724d9b5c502e53f6618606ea8be316b58f01274e72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:965c6f72-e17e-1eea-9bac-fc89b5e1f539`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hComp_iff_of_equivalences (eT : C₂ ≌ C₃) (eB : D₂ ≌ D₃)
    (w' : eT.functor ⋙ V₃ ≅ V₂ ⋙ eB.functor) :
    (w ≫ₕ w'.hom).GuitartExact ↔ w.GuitartExact := by
  let w'' : V₂.op ⋙ eB.op.functor ≅ eT.op.functor ⋙ V₃.op := NatIso.op w'
  have : (w ≫ₕ w'.hom).op = (w.op ≫ᵥ w''.hom) := by ext; simp [w'']
  rw [← guitartExact_op_iff, ← guitartExact_op_iff w,
    ← vComp_iff_of_equivalences _ _ _ w'', this]
  rfl

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HorizontalComposition/Variant34b5afc4d235e97b126bec724d9b5c502e53f6618606ea8be316b58f01274e72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HorizontalComposition/Variant34b5afc4d235e97b126bec724d9b5c502e53f6618606ea8be316b58f01274e72.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70d2c43b229215792642d27a45cca08145566b30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
