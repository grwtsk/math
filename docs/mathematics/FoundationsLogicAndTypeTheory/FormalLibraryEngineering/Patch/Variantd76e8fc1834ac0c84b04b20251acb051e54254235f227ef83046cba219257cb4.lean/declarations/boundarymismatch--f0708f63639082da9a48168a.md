# BoundaryMismatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49ebfcd03b3c950c94a68a140461a5936a4bddc208fd3d7fe861f5e4ffcdd9d2",
  "kind": "structure",
  "lexical_name": "BoundaryMismatch",
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
  "slug": "boundarymismatch--f0708f63639082da9a48168a",
  "source": {
    "blob": "45eebd2cc5639a6524dfdee6ed6e2b3903bd0afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Patch/Variantd76e8fc1834ac0c84b04b20251acb051e54254235f227ef83046cba219257cb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0708f63639082da9a48168a485041ee5b3fa6bb82b9e693c69cee9ad32a3c91",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Patch/Variantd76e8fc1834ac0c84b04b20251acb051e54254235f227ef83046cba219257cb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49ebfcd03b3c950c94a68a140461a5936a4bddc208fd3d7fe861f5e4ffcdd9d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BoundaryMismatch
    {F : Fabric}
    {n : Nat}
    {x : F.Cell n}
    (patch : LocalPatch F x) where
  boundaryDimension : Nat
  operator : ProperBoundaryOperator boundaryDimension n
  expected :
    Presentation.Hom
      (F.cellPresentation x)
      (F.cellPresentation
        (F.shape.restrict operator.operator x))
  actual :
    Presentation.Hom
      (F.cellPresentation x)
      (F.cellPresentation
        (F.shape.restrict operator.operator x))
  expected_eq : expected = F.contract operator.operator x
  actual_eq :
    actual =
      (patch.boundary.replacementContract operator).comp patch.update
  different : expected ≠ actual

/--
A global extension is a genuine reaction to a target fabric whose selected
cell and boundary data are identified with the local patch.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Patch/Variantd76e8fc1834ac0c84b04b20251acb051e54254235f227ef83046cba219257cb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Patch/Variantd76e8fc1834ac0c84b04b20251acb051e54254235f227ef83046cba219257cb4.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45eebd2cc5639a6524dfdee6ed6e2b3903bd0afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
