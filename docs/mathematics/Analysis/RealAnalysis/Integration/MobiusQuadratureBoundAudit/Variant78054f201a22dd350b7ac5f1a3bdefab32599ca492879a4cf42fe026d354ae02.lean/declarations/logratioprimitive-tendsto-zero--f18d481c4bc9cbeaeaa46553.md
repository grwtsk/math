# logRatioPrimitive_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04391769-b11e-085a-80f4-261907829be6",
  "kind": "theorem",
  "lexical_name": "logRatioPrimitive_tendsto_zero",
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
  "slug": "logratioprimitive-tendsto-zero--f18d481c4bc9cbeaeaa46553",
  "source": {
    "blob": "a5881e4e90c32c468900f00c025d41b736ef2f07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 183,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f18d481c4bc9cbeaeaa4655353f519b739568082fdd50c56ef4461b6da945335",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04391769-b11e-085a-80f4-261907829be6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logRatioPrimitive_tendsto_zero (x : ℝ) :
    Tendsto (logRatioPrimitive x) (𝓝[>] 0) (𝓝 0) := by
  have h0 : Tendsto (fun t : ℝ => t) (𝓝[>] 0) (𝓝 0) :=
    tendsto_nhdsWithin_of_tendsto_nhds tendsto_id
  have h1 : Tendsto (fun t : ℝ => t * Real.log t) (𝓝[>] 0) (𝓝 0) := by
    simpa only [Real.rpow_one, mul_comm] using
      tendsto_log_mul_rpow_nhdsGT_zero (by norm_num : (0 : ℝ) < 1)
  have h := ((h0.mul_const (Real.log x ^ 2 + 2 * Real.log x + 2)).sub
    (h1.mul_const (2 * (Real.log x + 1)))).add tendsto_self_log_square
  convert h using 1
  · funext t
    unfold logRatioPrimitive
    ring
  · simp

/-- Exact evaluation includes the genuinely integrable endpoint at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5881e4e90c32c468900f00c025d41b736ef2f07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
