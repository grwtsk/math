# toDescentDataAsCoalgebraCompCoalgebraEquivalenceFunctorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3956a5e11ba87f635870b25dff76e8084d56c1de5c1afbf4c2aca3c7f3cf7b9e",
  "kind": "def",
  "lexical_name": "toDescentDataAsCoalgebraCompCoalgebraEquivalenceFunctorIso",
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
  "slug": "todescentdataascoalgebracompcoalgebraequivalencefunctoriso--a076a4f008d6040078749d03",
  "source": {
    "blob": "65024d76fe2659d728bfcb61b7425ec1abed5d97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 202,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variantcdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a076a4f008d6040078749d03fe11e525510db945bd5f650e75962f06443b2236",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variantcdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3956a5e11ba87f635870b25dff76e8084d56c1de5c1afbf4c2aca3c7f3cf7b9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toDescentDataAsCoalgebraCompCoalgebraEquivalenceFunctorIso
    (ι : Type*) [Unique ι] {X S : C} (f : X ⟶ S) :
    F.toDescentDataAsCoalgebra (fun (_ : ι) ↦ f) ⋙
      (DescentDataAsCoalgebra.coalgebraEquivalence F ι f).functor ≅
    Comonad.comparison (Adjunction.ofCat (F.map f.op.toLoc).adj) :=
  Iso.refl _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variantcdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variantcdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65024d76fe2659d728bfcb61b7425ec1abed5d97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
