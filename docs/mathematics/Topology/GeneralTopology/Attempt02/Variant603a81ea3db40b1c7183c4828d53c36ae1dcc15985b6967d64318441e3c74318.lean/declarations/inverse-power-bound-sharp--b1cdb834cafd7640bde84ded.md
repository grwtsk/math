# inverse_power_bound_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f270c32-f433-4e58-7206-88c4b5b18c0e",
  "kind": "theorem",
  "lexical_name": "inverse_power_bound_sharp",
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
  "slug": "inverse-power-bound-sharp--b1cdb834cafd7640bde84ded",
  "source": {
    "blob": "34309476036ddbc214028f27bcb59318bc2cdbf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 24,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt02/Variant603a81ea3db40b1c7183c4828d53c36ae1dcc15985b6967d64318441e3c74318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1cdb834cafd7640bde84dedfc16c5e9b25c1a06ad34a2ba1dbe7601f8794ead",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt02/Variant603a81ea3db40b1c7183c4828d53c36ae1dcc15985b6967d64318441e3c74318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f270c32-f433-4e58-7206-88c4b5b18c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_power_bound_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (n : ℕ) :
    ‖(1 : ℂ)/((A : ℂ)*z)^n‖ ≤ 1/(A*delta)^n := by
  have hp : 0 < A := by linarith
  have hzN : delta ≤ ‖z‖ := hz.trans (Complex.re_le_norm z)
  rw [norm_div,norm_one,norm_pow,norm_mul,Complex.norm_real,
    Real.norm_eq_abs,abs_of_pos hp]
  gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt02/Variant603a81ea3db40b1c7183c4828d53c36ae1dcc15985b6967d64318441e3c74318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt02/Variant603a81ea3db40b1c7183c4828d53c36ae1dcc15985b6967d64318441e3c74318.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34309476036ddbc214028f27bcb59318bc2cdbf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
