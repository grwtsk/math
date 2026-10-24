# actual_complex_amplitude_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6466a1d3-8c3c-42e5-5307-30876cb53c2c",
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
  "slug": "actual-complex-amplitude-tendsto--3f13730651670925837fd952",
  "source": {
    "blob": "00a15798822a50988ed99e8cd514ef65f41097c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt06/Variant3189850445d005c845da2f73f843345887870ecad57a4db6f19d2e7fb18a7fd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f13730651670925837fd952b774540ab5dc1b4a8730c8f89e8fd3073d8c9ede",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt06/Variant3189850445d005c845da2f73f843345887870ecad57a4db6f19d2e7fb18a7fd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6466a1d3-8c3c-42e5-5307-30876cb53c2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–194.

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

end ContinuousResearch.ComplexBoundaryAsymptotic
end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt06/Variant3189850445d005c845da2f73f843345887870ecad57a4db6f19d2e7fb18a7fd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt06/Variant3189850445d005c845da2f73f843345887870ecad57a4db6f19d2e7fb18a7fd9.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00a15798822a50988ed99e8cd514ef65f41097c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
