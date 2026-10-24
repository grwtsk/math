# shift_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9c26cdf-11c1-7f38-58d7-5f53569d46f1",
  "kind": "theorem",
  "lexical_name": "shift_inner",
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
  "slug": "shift-inner--a9068cf638c5a82ec10c2220",
  "source": {
    "blob": "4d4e90cdf46d2564b891ccf453980bd4acc159b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant1440d21547cc73e17c4050c8b5df6eebf1d458f4f3ff0c8f96c367d438a7c6f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9068cf638c5a82ec10c2220d59c766cfd3737c1bac9d0c2bb012e6771c2684c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant1440d21547cc73e17c4050c8b5df6eebf1d458f4f3ff0c8f96c367d438a7c6f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9c26cdf-11c1-7f38-58d7-5f53569d46f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem shift_inner (A : ℝ) (hp : 0 < A) (a b : ℝ) :
    ⟪shift A hp a, shift A hp b⟫_ℝ =
      sourceCorrelation explicitSecondDerivative A (b - a) := by
  rw [L2.inner_def]
  calc
    _ = ∫ x : ℝ, normalizedTest explicitSecondDerivative A (x + a) *
        normalizedTest explicitSecondDerivative A (x + b) := by
      apply integral_congr_ae
      filter_upwards [shift_coe A hp a, shift_coe A hp b] with x ha hb
      rw [ha, hb, Real.inner_apply]
    _ = ∫ x : ℝ, normalizedTest explicitSecondDerivative A (x + b) *
        normalizedTest explicitSecondDerivative A (x + b - (b - a)) := by
      apply integral_congr_ae
      filter_upwards [] with x
      rw [show x + b - (b - a) = x + a by ring]
      ring
    _ = _ := integral_add_right_eq_self
      (fun x : ℝ => normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x - (b - a))) b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant1440d21547cc73e17c4050c8b5df6eebf1d458f4f3ff0c8f96c367d438a7c6f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant1440d21547cc73e17c4050c8b5df6eebf1d458f4f3ff0c8f96c367d438a7c6f2.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d4e90cdf46d2564b891ccf453980bd4acc159b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
