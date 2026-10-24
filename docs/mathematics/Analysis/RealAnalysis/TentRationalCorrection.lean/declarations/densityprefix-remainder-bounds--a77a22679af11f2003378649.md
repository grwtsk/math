# densityPrefix_remainder_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f73787c-3013-a893-094a-06c88186c504",
  "kind": "theorem",
  "lexical_name": "densityPrefix_remainder_bounds",
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
  "slug": "densityprefix-remainder-bounds--a77a22679af11f2003378649",
  "source": {
    "blob": "a3debc7101743b93b2dec8d9f013aa0e950f4d2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 162,
    "path": "GRWTSK/Analysis/Real/TentRationalCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a77a22679af11f20033786490bc0c018e7e196f5bbff4f01f36256be72e3d9b8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f73787c-3013-a893-094a-06c88186c504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem densityPrefix_remainder_bounds (N : ℕ) {a b t : ℝ}
    (ha : 1 < a) (ht : t ∈ Icc a b) :
    0 ≤ rationalDensity t - densityPrefix N t ∧
      rationalDensity t - densityPrefix N t ≤
        rationalDensity a * (1 / a ^ 2) ^ N := by
  have ht1 : 1 < t := ha.trans_le ht.1
  have hid : rationalDensity t - densityPrefix N t =
      rationalDensity t * (1 / t ^ 2) ^ N := by
    rw [densityPrefix_eq N t ht1]
    ring
  rw [hid]
  have hr : 1 / t ^ 2 ≤ 1 / a ^ 2 := by
    apply (div_le_div_iff₀ (by nlinarith : 0 < t ^ 2) (by nlinarith : 0 < a ^ 2)).2
    have hsq : a ^ 2 ≤ t ^ 2 :=
      (sq_le_sq₀ (by linarith : 0 ≤ a) (by linarith : 0 ≤ t)).2 ht.1
    simpa only [one_mul] using hsq
  exact ⟨mul_nonneg (rationalDensity_pos ht1).le (pow_nonneg (by positivity) _),
    mul_le_mul (rationalDensity_antitone ha ht.1)
      (pow_le_pow_left₀ (by positivity) hr N) (pow_nonneg (by positivity) _)
      (rationalDensity_pos ha).le⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/TentRationalCorrection.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3debc7101743b93b2dec8d9f013aa0e950f4d2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
