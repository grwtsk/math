# sourceCorrelation_double_derivative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56d092e2-29cc-851c-c37b-23d877f1f38e",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_double_derivative_abs_le",
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
  "slug": "sourcecorrelation-double-derivative-abs-le--5ccbf9b9cfbe4281cbf1e779",
  "source": {
    "blob": "72a86e9587b25dea10f08fae04cc161c402bd5f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant31901f8b82f87f3c342d53bf191b1126058c2cd69fb3bbf87da0eaab7f9931df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ccbf9b9cfbe4281cbf1e779cde1f9a01220027ade90854f33f93b6f46bd3ac8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant31901f8b82f87f3c342d53bf191b1126058c2cd69fb3bbf87da0eaab7f9931df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56d092e2-29cc-851c-c37b-23d877f1f38e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_double_derivative_abs_le (A u : ℝ) (hA : 1 ≤ A) (hu : 0 ≤ u) :
    |deriv (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u)) u| ≤
      (260 / (3 * A ^ 2)) * u := by
  rw [(sourceCorrelation_double_hasDerivAt A u hA).deriv, abs_mul]
  have hd := sourceCorrelation_derivative_linear_bound A (2 * u) hA
  rw [abs_of_nonneg (by positivity : 0 ≤ 2 * u)] at hd
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    2 * _ ≤ 2 * ((65 / (3 * A ^ 2)) * (2 * u)) := mul_le_mul_of_nonneg_left hd (by norm_num)
    _ = _ := by ring

/-- An exact polynomial primitive for the unmodified scaled bump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant31901f8b82f87f3c342d53bf191b1126058c2cd69fb3bbf87da0eaab7f9931df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant31901f8b82f87f3c342d53bf191b1126058c2cd69fb3bbf87da0eaab7f9931df.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72a86e9587b25dea10f08fae04cc161c402bd5f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
