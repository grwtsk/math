# actual_scaled_laplace_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfc18536-68b1-88ad-2258-7e281f9da56a",
  "kind": "theorem",
  "lexical_name": "actual_scaled_laplace_tendsto_zero",
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
  "slug": "actual-scaled-laplace-tendsto-zero--403f08161e7cbf0bc4d766f8",
  "source": {
    "blob": "ec1d7d74b94ceadc1e0404c80bcce25c87c3b258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCentering/Variante7754ca9df2febe723a984909cae5187c16b5b95cc579ebe66201d63fedf0a76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:403f08161e7cbf0bc4d766f8d911b3b20958e5ac57980fa5dc4e0fa0e4538dfc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCentering/Variante7754ca9df2febe723a984909cae5187c16b5b95cc579ebe66201d63fedf0a76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfc18536-68b1-88ad-2258-7e281f9da56a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_scaled_laplace_tendsto_zero :
    Tendsto (fun s : ℝ => s * actualLaplace s) (𝓝[>] (0 : ℝ)) (𝓝 (0 : ℝ)) := by
  have hs : Tendsto (fun s : ℝ => s) (𝓝[>] (0 : ℝ)) (𝓝 (0 : ℝ)) :=
    tendsto_id.mono_left nhdsWithin_le_nhds
  simpa only [zero_mul] using hs.mul actual_laplace_tendsto_coefficient

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCentering/Variante7754ca9df2febe723a984909cae5187c16b5b95cc579ebe66201d63fedf0a76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCentering/Variante7754ca9df2febe723a984909cae5187c16b5b95cc579ebe66201d63fedf0a76.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec1d7d74b94ceadc1e0404c80bcce25c87c3b258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
