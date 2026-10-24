# defaultMathlibGrothendieckTopologyCandidateSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27d74d4009a839187513aaea493d149bb291149acae33bf948ea27283c63d068",
  "kind": "def",
  "lexical_name": "defaultMathlibGrothendieckTopologyCandidateSurface",
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
  "slug": "defaultmathlibgrothendiecktopologycandidatesurface--9c96dbfb93bfd69e5ed1a0c5",
  "source": {
    "blob": "468e31b636a24458cf397a74c241447b030aa3b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGrothendieckTopology/Variant788e7c88eb27a2752563188907c287c32d1cbd976d9a4c1ca28d164324400fe8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c96dbfb93bfd69e5ed1a0c5abbeb6ddb9fa583326261d4a5c39d4d476a9bee0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGrothendieckTopology/Variant788e7c88eb27a2752563188907c287c32d1cbd976d9a4c1ca28d164324400fe8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27d74d4009a839187513aaea493d149bb291149acae33bf948ea27283c63d068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def defaultMathlibGrothendieckTopologyCandidateSurface (M : BitMatrix) :
    MathlibGrothendieckTopologyCandidateSurface M :=
  { hasMathlibPresieve := true
    hasGeneratedSieve := true
    hasCoverageSurface := true
    grothendieckTopologyInstanceClaim := false
    sheafCategoryClaim := false
    lawvereTierneyTopologyClaim := false
    essentialGeometricMorphismClaim := false
    toposClaim := false
    theoremPromotionClaim := false }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGrothendieckTopology/Variant788e7c88eb27a2752563188907c287c32d1cbd976d9a4c1ca28d164324400fe8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGrothendieckTopology/Variant788e7c88eb27a2752563188907c287c32d1cbd976d9a4c1ca28d164324400fe8.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `468e31b636a24458cf397a74c241447b030aa3b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
