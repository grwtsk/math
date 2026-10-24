# subpolynomialLogarithmicShallowDepthPacket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a33e8df1-673d-56ae-6dd4-05b0cc916512",
  "kind": "theorem",
  "lexical_name": "subpolynomialLogarithmicShallowDepthPacket",
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
  "slug": "subpolynomiallogarithmicshallowdepthpacket--01f84445595ce650358d1432",
  "source": {
    "blob": "5b3556714a377d18f199d0c9c6360a863068f8ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 104,
    "path": "GRWTSK/NumberTheory/Moebius/MertensShallowDepthPayment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01f84445595ce650358d14322f754bcea74e3f5e7917d80114626a5fa435410d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensShallowDepthPayment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a33e8df1-673d-56ae-6dd4-05b0cc916512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialLogarithmicShallowDepthPacket :
    SubpolynomialLogarithmicShallowDepthPacket := by
  intro δ hδ
  obtain ⟨A, hA, hlog⟩ :=
    nat_add_two_le_const_mul_dyadic_rpow hδ
  refine ⟨2 * A, mul_nonneg (by norm_num) hA, ?_⟩
  intro j
  calc
    |logarithmicShallowDepthPacket j| ≤
        2 * (logarithmicShallowDepthCount j : ℝ) :=
      abs_logarithmicShallowDepthPacket_le j
    _ ≤ 2 * (logarithmicShiftThreshold j : ℝ) := by
      apply mul_le_mul_of_nonneg_left
      · exact_mod_cast logarithmicShallowDepthCount_le_threshold j
      · norm_num
    _ = 2 * (j + 2 : ℝ) := by simp [logarithmicShiftThreshold]
    _ ≤ 2 * (A * (((2 ^ j : ℕ) : ℝ) ^ δ)) := by
      exact mul_le_mul_of_nonneg_left (hlog j) (by norm_num)
    _ = (2 * A) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Per-depth analytic long remainder: complete depth slice minus the already
paid short cumulative-length interior. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensShallowDepthPayment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensShallowDepthPayment.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3556714a377d18f199d0c9c6360a863068f8ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
