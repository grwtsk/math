# colimitIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e80992de3884a29b92968a976859d2ed94797f04ae7bcb674a21c30a3ad77c53",
  "kind": "def",
  "lexical_name": "colimitIsColimit",
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
  "slug": "colimitiscolimit--0afd16680b7ff97a380e47d8",
  "source": {
    "blob": "1fa49b3040a128ca94ce4ef87c008b155ad15906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 214,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0afd16680b7ff97a380e47d82b44c4e6fd8e383b5f721397e55420cd8d95aecc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e80992de3884a29b92968a976859d2ed94797f04ae7bcb674a21c30a3ad77c53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitIsColimit : IsColimit (colimitCocone F) where
  desc s := descMorphism F s
  uniq s m w := by
    ext x
    induction x using Quot.inductionOn with | h x => ?_
    induction x with
    | of j =>
      change _ = s.ι.app j _
      rw [← w j]
      rfl
    | one =>
      rw [quot_one, map_one]
      rfl
    | mul x y hx hy =>
      rw [quot_mul, map_mul, hx, hy]
      dsimp [descMorphism, DFunLike.coe, descFun]
      simp only [← quot_mul, descFunLift]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant291c08754d83cff2e67e335dc941e198bf177eda99e28a7520dc8821f53ddf1f.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fa49b3040a128ca94ce4ef87c008b155ad15906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
