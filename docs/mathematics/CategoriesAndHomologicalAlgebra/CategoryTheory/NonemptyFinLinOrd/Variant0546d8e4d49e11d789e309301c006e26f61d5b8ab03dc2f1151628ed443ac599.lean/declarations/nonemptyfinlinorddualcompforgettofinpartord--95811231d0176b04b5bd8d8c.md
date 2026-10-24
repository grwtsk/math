# nonemptyFinLinOrdDualCompForgetToFinPartOrd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8cca43ecf90b5798cbbc715dea80630fb728489bd50f6b56d6f544f4d61e18e1",
  "kind": "def",
  "lexical_name": "nonemptyFinLinOrdDualCompForgetToFinPartOrd",
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
  "slug": "nonemptyfinlinorddualcompforgettofinpartord--95811231d0176b04b5bd8d8c",
  "source": {
    "blob": "bca22bdfba6cca3a214d87de26c253ca327af3d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 237,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant0546d8e4d49e11d789e309301c006e26f61d5b8ab03dc2f1151628ed443ac599.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95811231d0176b04b5bd8d8c43302a23bd3072a40592635f6a874d6e3918ed1e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant0546d8e4d49e11d789e309301c006e26f61d5b8ab03dc2f1151628ed443ac599.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8cca43ecf90b5798cbbc715dea80630fb728489bd50f6b56d6f544f4d61e18e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nonemptyFinLinOrdDualCompForgetToFinPartOrd :
    NonemptyFinLinOrd.dual ⋙ forget₂ NonemptyFinLinOrd FinPartOrd ≅
      forget₂ NonemptyFinLinOrd FinPartOrd ⋙ FinPartOrd.dual where
  hom.app X := FinPartOrd.ofHom OrderHom.id
  inv.app X := FinPartOrd.ofHom OrderHom.id

/-- The generating arrow `i ⟶ i+1` in the category `Fin n` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant0546d8e4d49e11d789e309301c006e26f61d5b8ab03dc2f1151628ed443ac599.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variant0546d8e4d49e11d789e309301c006e26f61d5b8ab03dc2f1151628ed443ac599.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bca22bdfba6cca3a214d87de26c253ca327af3d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
