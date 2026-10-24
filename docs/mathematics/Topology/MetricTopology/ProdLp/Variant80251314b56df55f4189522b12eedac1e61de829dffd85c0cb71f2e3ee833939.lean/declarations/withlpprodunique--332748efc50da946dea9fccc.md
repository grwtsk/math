# withLpProdUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:394b156f280c2edb1729f7fa704b3ed1866012985d77d30787520e6de2304db3",
  "kind": "def",
  "lexical_name": "withLpProdUnique",
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
  "slug": "withlpprodunique--332748efc50da946dea9fccc",
  "source": {
    "blob": "4ff43a7387a1337681de02a6dc85d5987fa3d40d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1229,
    "line": 1226,
    "path": "GRWTSK/Topology/MetricTopology/ProdLp/Variant80251314b56df55f4189522b12eedac1e61de829dffd85c0cb71f2e3ee833939.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:332748efc50da946dea9fccc5bc2aa70647c00b7434cea931baedda37cf14f9f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ProdLp/Variant80251314b56df55f4189522b12eedac1e61de829dffd85c0cb71f2e3ee833939.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:394b156f280c2edb1729f7fa704b3ed1866012985d77d30787520e6de2304db3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1226–1229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withLpProdUnique [Unique β] : WithLp p (α × β) ≃ₗᵢ[𝕜] α where
  __ := (WithLp.linearEquiv _ _ _).trans LinearEquiv.prodUnique
  norm_map' := (IsometryEquiv.withLpProdUnique _ _ _).isometry.norm_map_of_map_zero rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ProdLp/Variant80251314b56df55f4189522b12eedac1e61de829dffd85c0cb71f2e3ee833939.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ProdLp/Variant80251314b56df55f4189522b12eedac1e61de829dffd85c0cb71f2e3ee833939.lean#L1226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ff43a7387a1337681de02a6dc85d5987fa3d40d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
