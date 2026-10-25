# FillingCoreRecoveryCapability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ec683d24c9dfee00518f1cf59382a1e5fed52f981a6b7aafcaa74acf66f071c",
  "kind": "structure",
  "lexical_name": "FillingCoreRecoveryCapability",
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
  "slug": "fillingcorerecoverycapability--119e6887722d9a1a66c7d06c",
  "source": {
    "blob": "a446d9101a32cf5141edb7e84691a85438f3daf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreRecovery/Variant2fce4561bc460778a7f1560d3bdbaa10c07355f09a120d2c4c924dfc746cfcea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:119e6887722d9a1a66c7d06cc92616cd5927ff0e488c8daabcd2e437efc67fa3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreRecovery/Variant2fce4561bc460778a7f1560d3bdbaa10c07355f09a120d2c4c924dfc746cfcea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ec683d24c9dfee00518f1cf59382a1e5fed52f981a6b7aafcaa74acf66f071c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FillingCoreRecoveryCapability
    (T : OrientedKnotFillingTheory.{u}) where
  /-- The selected filling homeomorphism carries the first core to the second up to isotopy. -/
  RecoversCore : {K : T.Knot} → {r s : T.Slope K} →
    T.FillingHomeomorphism K r s → Prop
  /-- Drill a core-recovering map to obtain a self-homeomorphism of the exterior. -/
  drill : ∀ {K : T.Knot} {r s : T.Slope K}
      (homeomorphism : T.FillingHomeomorphism K r s),
    RecoversCore homeomorphism →
      T.OrientationPreservingExteriorSelfHomeomorphism K
  drilled_map_carries_slope : ∀ {K : T.Knot} {r s : T.Slope K}
      (homeomorphism : T.FillingHomeomorphism K r s)
      (recovers : RecoversCore homeomorphism),
    T.actOnSlope (drill homeomorphism recovers) r = s
  /-- Extend an exterior symmetry that carries the first marked slope to the second. -/
  extend : ∀ {K : T.Knot} {r s : T.Slope K}
      (exteriorMap : T.OrientationPreservingExteriorSelfHomeomorphism K),
    T.actOnSlope exteriorMap r = s → T.FillingHomeomorphism K r s
  extended_map_recovers_core : ∀ {K : T.Knot} {r s : T.Slope K}
      (exteriorMap : T.OrientationPreservingExteriorSelfHomeomorphism K)
      (carries : T.actOnSlope exteriorMap r = s),
    RecoversCore (extend exteriorMap carries)

namespace FillingCoreRecoveryCapability

variable {T : OrientedKnotFillingTheory.{u}}

/-- Some filling homeomorphism recovers the two filling cores up to isotopy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreRecovery/Variant2fce4561bc460778a7f1560d3bdbaa10c07355f09a120d2c4c924dfc746cfcea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreRecovery/Variant2fce4561bc460778a7f1560d3bdbaa10c07355f09a120d2c4c924dfc746cfcea.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a446d9101a32cf5141edb7e84691a85438f3daf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
