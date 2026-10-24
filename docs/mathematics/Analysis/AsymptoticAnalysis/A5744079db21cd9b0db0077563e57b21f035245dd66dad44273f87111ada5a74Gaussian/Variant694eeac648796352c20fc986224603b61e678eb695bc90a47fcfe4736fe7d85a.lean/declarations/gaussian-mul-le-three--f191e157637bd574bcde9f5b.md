# gaussian_mul_le_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4df63664-1463-2f3e-ebe8-1b4cafe3e58d",
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
  "slug": "gaussian-mul-le-three--f191e157637bd574bcde9f5b",
  "source": {
    "blob": "c9a5bb3161f7658c9687037c08d8eccac0e6f1b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 109,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f191e157637bd574bcde9f5b51af0dc2fb0d856d3a4eb767ffbdf338121222b8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4df63664-1463-2f3e-ebe8-1b4cafe3e58d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–126.

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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9a5bb3161f7658c9687037c08d8eccac0e6f1b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
