# fractionalWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9641263ddadbc47eb746b22e38b398440f24adf774ff6ab05a064b78d438a814",
  "kind": "def",
  "lexical_name": "fractionalWeight",
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
  "slug": "fractionalweight--ba656d542d25456009a11a27",
  "source": {
    "blob": "f912c8baf11c6b2a94a1409e5a5b54d58852641a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variante2bfc35d068eb7b7a89ada37306acaa21a3cdf9037cb1edec6ff64fb687d5192.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba656d542d25456009a11a2796e50498d0fcae5b2c211bf42d468c4a915c5817",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt05/Variante2bfc35d068eb7b7a89ada37306acaa21a3cdf9037cb1edec6ff64fb687d5192.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9641263ddadbc47eb746b22e38b398440f24adf774ff6ab05a064b78d438a814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fractionalWeight (σ u : ℝ) : ℝ := Int.fract u * u ^ (-σ - 1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt05/Variante2bfc35d068eb7b7a89ada37306acaa21a3cdf9037cb1edec6ff64fb687d5192.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variante2bfc35d068eb7b7a89ada37306acaa21a3cdf9037cb1edec6ff64fb687d5192.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f912c8baf11c6b2a94a1409e5a5b54d58852641a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
