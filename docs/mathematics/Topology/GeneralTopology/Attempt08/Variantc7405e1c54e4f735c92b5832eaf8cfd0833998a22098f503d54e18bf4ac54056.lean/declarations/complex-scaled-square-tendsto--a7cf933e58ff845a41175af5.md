# complex_scaled_square_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b914ab8-ef15-d16b-0110-d2ba59a5f772",
  "kind": "theorem",
  "lexical_name": "complex_scaled_square_tendsto",
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
  "slug": "complex-scaled-square-tendsto--a7cf933e58ff845a41175af5",
  "source": {
    "blob": "d97f365e1cecd14d1b77f20cd3b06989534aa96c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 211,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt08/Variantc7405e1c54e4f735c92b5832eaf8cfd0833998a22098f503d54e18bf4ac54056.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7cf933e58ff845a41175af59937b0f5ee52452e8e1d1c3756d2e464a70245cd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt08/Variantc7405e1c54e4f735c92b5832eaf8cfd0833998a22098f503d54e18bf4ac54056.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b914ab8-ef15-d16b-0110-d2ba59a5f772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_scaled_square_tendsto (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ =>
      (A : ℂ)^9*Complex.exp (-2*(A : ℂ)*z)*normalizedTransform A z^2)
      atTop (𝓝 (leadingCoefficient z^2)) := by
  apply ((scaledAmplitude_tendsto z hz).pow 2).congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact scaledAmplitude_square hA z

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt08/Variantc7405e1c54e4f735c92b5832eaf8cfd0833998a22098f503d54e18bf4ac54056.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt08/Variantc7405e1c54e4f735c92b5832eaf8cfd0833998a22098f503d54e18bf4ac54056.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d97f365e1cecd14d1b77f20cd3b06989534aa96c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
