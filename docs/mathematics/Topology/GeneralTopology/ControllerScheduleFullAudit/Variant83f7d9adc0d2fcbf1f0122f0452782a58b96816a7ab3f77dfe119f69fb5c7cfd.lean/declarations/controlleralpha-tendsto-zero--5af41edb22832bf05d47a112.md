# controllerAlpha_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96f35b2d-16bf-9f5e-0501-7a3af1bbb1ff",
  "kind": "theorem",
  "lexical_name": "controllerAlpha_tendsto_zero",
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
  "slug": "controlleralpha-tendsto-zero--5af41edb22832bf05d47a112",
  "source": {
    "blob": "3eb00679ffad0d129066d35b14fd37a089145da6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/ControllerScheduleFullAudit/Variant83f7d9adc0d2fcbf1f0122f0452782a58b96816a7ab3f77dfe119f69fb5c7cfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5af41edb22832bf05d47a112b867add4de6747e3f59c474c4c1b61eccc326a93",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ControllerScheduleFullAudit/Variant83f7d9adc0d2fcbf1f0122f0452782a58b96816a7ab3f77dfe119f69fb5c7cfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96f35b2d-16bf-9f5e-0501-7a3af1bbb1ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controllerAlpha_tendsto_zero (q : ℕ → H) :
    Tendsto (controllerAlpha q) atTop (nhds 0) := by
  apply squeeze_zero'
  · filter_upwards [eventually_ge_atTop 1] with j hj
    exact (controllerAlpha_pos q j hj).le
  · filter_upwards [eventually_ge_atTop 1] with j hj
    exact controllerAlpha_le_one_div q j hj
  · simpa only [one_div, Function.comp_def] using
      (tendsto_inv_atTop_zero.comp (tendsto_natCast_atTop_atTop (R := ℝ)))

/-- The exact full-energy theorem bounds the actual output-side TT* mass on this schedule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControllerScheduleFullAudit/Variant83f7d9adc0d2fcbf1f0122f0452782a58b96816a7ab3f77dfe119f69fb5c7cfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControllerScheduleFullAudit/Variant83f7d9adc0d2fcbf1f0122f0452782a58b96816a7ab3f77dfe119f69fb5c7cfd.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eb00679ffad0d129066d35b14fd37a089145da6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
