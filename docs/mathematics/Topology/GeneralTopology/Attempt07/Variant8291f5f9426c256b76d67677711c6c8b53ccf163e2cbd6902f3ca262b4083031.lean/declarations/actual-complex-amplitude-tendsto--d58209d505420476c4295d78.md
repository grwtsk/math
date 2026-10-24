# actual_complex_amplitude_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f47ca434-f34f-8f46-5885-0676c3ebfb13",
  "kind": "theorem",
  "lexical_name": "actual_complex_amplitude_tendsto",
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
  "slug": "actual-complex-amplitude-tendsto--d58209d505420476c4295d78",
  "source": {
    "blob": "c5f8d6adf5840a9f60e959193d56cabf68630bf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt07/Variant8291f5f9426c256b76d67677711c6c8b53ccf163e2cbd6902f3ca262b4083031.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d58209d505420476c4295d78e19aaff7744b6a73797230e0329eca2961172d2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt07/Variant8291f5f9426c256b76d67677711c6c8b53ccf163e2cbd6902f3ca262b4083031.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f47ca434-f34f-8f46-5885-0676c3ebfb13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_complex_amplitude_tendsto (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => ((A^(9/2 : ℝ) : ℝ) : ℂ)*
      Complex.exp (-(A : ℂ)*z)*normalizedTransform A z)
      atTop (𝓝 (leadingCoefficient z)) := by
  apply (scaledAmplitude_tendsto z hz).congr'
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
  rw [amplitude_scale_rpow hA]
  rfl

/-- Ordinary complex square at the exact source scale, not a norm square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt07/Variant8291f5f9426c256b76d67677711c6c8b53ccf163e2cbd6902f3ca262b4083031.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt07/Variant8291f5f9426c256b76d67677711c6c8b53ccf163e2cbd6902f3ca262b4083031.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5f8d6adf5840a9f60e959193d56cabf68630bf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
