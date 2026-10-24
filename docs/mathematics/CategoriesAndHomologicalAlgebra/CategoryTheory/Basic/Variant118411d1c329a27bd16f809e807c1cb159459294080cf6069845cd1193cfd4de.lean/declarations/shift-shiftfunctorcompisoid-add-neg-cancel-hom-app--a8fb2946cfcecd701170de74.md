# shift_shiftFunctorCompIsoId_add_neg_cancel_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:710e4d5e-d5e4-6a68-a1ee-7638c930337f",
  "kind": "theorem",
  "lexical_name": "shift_shiftFunctorCompIsoId_add_neg_cancel_hom_app",
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
  "slug": "shift-shiftfunctorcompisoid-add-neg-cancel-hom-app--a8fb2946cfcecd701170de74",
  "source": {
    "blob": "f312e72830ae8491b1e8be035a0fc1bb1c971d6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 471,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant118411d1c329a27bd16f809e807c1cb159459294080cf6069845cd1193cfd4de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8fb2946cfcecd701170de742e8d14c5a464b13c269b3f70e3817472e00d2976",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant118411d1c329a27bd16f809e807c1cb159459294080cf6069845cd1193cfd4de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:710e4d5e-d5e4-6a68-a1ee-7638c930337f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shift_shiftFunctorCompIsoId_add_neg_cancel_hom_app (n : A) (X : C) :
    ((shiftFunctorCompIsoId C n (-n) (add_neg_cancel n)).hom.app X)⟦n⟧' =
    (shiftFunctorCompIsoId C (-n) n (neg_add_cancel n)).hom.app (X⟦n⟧) := by
  apply shift_shiftFunctorCompIsoId_hom_app

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant118411d1c329a27bd16f809e807c1cb159459294080cf6069845cd1193cfd4de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant118411d1c329a27bd16f809e807c1cb159459294080cf6069845cd1193cfd4de.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f312e72830ae8491b1e8be035a0fc1bb1c971d6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
