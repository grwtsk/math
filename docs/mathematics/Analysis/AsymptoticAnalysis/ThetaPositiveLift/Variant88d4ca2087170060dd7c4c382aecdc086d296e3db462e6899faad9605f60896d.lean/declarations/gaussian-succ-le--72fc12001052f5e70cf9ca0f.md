# gaussian_succ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5402fe1e-89b1-8a71-b16d-c022781f72be",
  "kind": "theorem",
  "lexical_name": "gaussian_succ_le",
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
  "slug": "gaussian-succ-le--72fc12001052f5e70cf9ca0f",
  "source": {
    "blob": "839473362e74b673c214b0fb14370732e61032ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 60,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72fc12001052f5e70cf9ca0fe92c2b24a5e39fff1f82007be993f0b02490f1be",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5402fe1e-89b1-8a71-b16d-c022781f72be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gaussian_succ_le (m : ℕ) :
    gaussianMode 3 (m + 1) ≤ (1 / 16) * gaussianMode 3 m := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hp : ((m : ℝ) + 3) ^ 8 ≤ (2 * ((m : ℝ) + 2)) ^ 8 :=
    pow_le_pow_left₀ (by positivity) (by linarith) _
  have he : Real.exp (-3 * (((m : ℝ) + 3) ^ 2 - 1)) ≤
      Real.exp (-3 * (((m : ℝ) + 2) ^ 2 - 1) - 15) := by
    apply Real.exp_le_exp.mpr
    nlinarith
  unfold gaussianMode
  push_cast
  calc
    _ = ((m : ℝ) + 3) ^ 8 * Real.exp (-3 * (((m : ℝ) + 3) ^ 2 - 1)) := by ring_nf
    _ ≤ (2 * ((m : ℝ) + 2)) ^ 8 *
        Real.exp (-3 * (((m : ℝ) + 2) ^ 2 - 1) - 15) :=
      mul_le_mul hp he (by positivity) (by positivity)
    _ = ((2 : ℝ) ^ 8 * Real.exp (-15)) *
        (((m : ℝ) + 2) ^ 8 * Real.exp (-3 * (((m : ℝ) + 2) ^ 2 - 1))) := by
      rw [Real.exp_sub, Real.exp_neg, mul_pow]
      ring
    _ ≤ _ := mul_le_mul_of_nonneg_right gaussian_ratio_small (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `839473362e74b673c214b0fb14370732e61032ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
