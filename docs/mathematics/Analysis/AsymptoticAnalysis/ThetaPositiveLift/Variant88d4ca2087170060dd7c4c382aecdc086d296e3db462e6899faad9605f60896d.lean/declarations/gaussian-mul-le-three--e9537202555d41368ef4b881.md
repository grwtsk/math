# gaussian_mul_le_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5513675b-7ae1-a897-901a-6fdb282667df",
  "kind": "theorem",
  "lexical_name": "gaussian_mul_le_three",
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
  "slug": "gaussian-mul-le-three--e9537202555d41368ef4b881",
  "source": {
    "blob": "839473362e74b673c214b0fb14370732e61032ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 123,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9537202555d41368ef4b881e7a1237e8de23c8856b075e65787f01eba27333f",
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

Occurrence: `result:5513675b-7ae1-a897-901a-6fdb282667df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gaussian_mul_le_three {A : ℝ} (hA : 3 ≤ A) (m : ℕ) :
    A * gaussianMode A m ≤ 3 * gaussianMode 3 m := by
  let d : ℝ := ((m : ℝ) + 2) ^ 2 - 1
  have hd : 3 ≤ d := by dsimp [d]; nlinarith [Nat.cast_nonneg (α := ℝ) m]
  have he : A ≤ 3 * Real.exp ((A - 3) * d) := by
    have hexp := Real.add_one_le_exp ((A - 3) * d)
    nlinarith [mul_nonneg (sub_nonneg.mpr hA) (sub_nonneg.mpr hd)]
  have hh := mul_le_mul_of_nonneg_right he (Real.exp_nonneg (-A * d))
  have hexp : Real.exp ((A - 3) * d) * Real.exp (-A * d) = Real.exp (-3 * d) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [mul_assoc, hexp] at hh
  unfold gaussianMode
  change A * (((m : ℝ) + 2) ^ 8 * Real.exp (-A * d)) ≤
    3 * (((m : ℝ) + 2) ^ 8 * Real.exp (-3 * d))
  nlinarith [mul_le_mul_of_nonneg_left hh (show 0 ≤ ((m : ℝ) + 2) ^ 8 by positivity)]

/-- The shifted eighth-power Gaussian tail is summable for every `A ≥ 3`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `839473362e74b673c214b0fb14370732e61032ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
