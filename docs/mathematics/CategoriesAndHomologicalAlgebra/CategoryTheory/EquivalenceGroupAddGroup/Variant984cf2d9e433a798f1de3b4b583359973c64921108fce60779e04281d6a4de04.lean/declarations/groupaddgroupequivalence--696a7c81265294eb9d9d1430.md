# groupAddGroupEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80df446fb00a3d6cae1be0b6b02bba124ee8750aefe74ff374d649b9da80e56c",
  "kind": "def",
  "lexical_name": "groupAddGroupEquivalence",
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
  "slug": "groupaddgroupequivalence--696a7c81265294eb9d9d1430",
  "source": {
    "blob": "6e10fba5ab91884f4ad2dad34249d8678cb6d558",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 80,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant984cf2d9e433a798f1de3b4b583359973c64921108fce60779e04281d6a4de04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:696a7c81265294eb9d9d1430f1631c15e9d205576e1dee88703af6e53b27babb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant984cf2d9e433a798f1de3b4b583359973c64921108fce60779e04281d6a4de04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80df446fb00a3d6cae1be0b6b02bba124ee8750aefe74ff374d649b9da80e56c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def groupAddGroupEquivalence : GrpCat ≌ AddGrpCat where
  functor := GrpCat.toAddGrp
  inverse := AddGrpCat.toGrp
  unitIso := Iso.refl _
  counitIso := Iso.refl _

/-- The equivalence of categories between `CommGrpCat` and `AddCommGrpCat`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant984cf2d9e433a798f1de3b4b583359973c64921108fce60779e04281d6a4de04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant984cf2d9e433a798f1de3b4b583359973c64921108fce60779e04281d6a4de04.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e10fba5ab91884f4ad2dad34249d8678cb6d558` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
