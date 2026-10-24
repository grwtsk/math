# integerMoment_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ceb29b7-bf56-c75e-f91b-819db0ab907f",
  "kind": "theorem",
  "lexical_name": "integerMoment_le",
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
  "slug": "integermoment-le--e8cd7b906c0966865c4e19e2",
  "source": {
    "blob": "0a735a74cd7d037f0dd38188cf6c5ce466041f6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 47,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8cd7b906c0966865c4e19e24e1777115d2a0d1e347c5a0344a721fb490994da",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ceb29b7-bf56-c75e-f91b-819db0ab907f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerMoment_le (n : ℕ) :
    integerMoment n ≤ 1728 * (n : ℝ) ^ (-(5 / 4 : ℝ)) := by
  by_cases hn : n = 0
  · subst n
    norm_num [integerMoment]
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  have hlog := Real.log_natCast_le_rpow_div n (by norm_num : (0 : ℝ) < 1 / 12)
  have hcub : Real.log (n : ℝ) ^ 3 ≤ ((n : ℝ) ^ (1 / 12 : ℝ) / (1 / 12 : ℝ)) ^ 3 :=
    pow_le_pow_left₀ (Real.log_natCast_nonneg n) hlog 3
  unfold integerMoment
  calc
    _ ≤ ((n : ℝ) ^ (1 / 12 : ℝ) / (1 / 12 : ℝ)) ^ 3 *
        (n : ℝ) ^ (-(3 / 2 : ℝ)) :=
      mul_le_mul_of_nonneg_right hcub (Real.rpow_nonneg hn0.le _)
    _ = 1728 * ((n : ℝ) ^ (1 / 12 : ℝ)) ^ 3 * (n : ℝ) ^ (-(3 / 2 : ℝ)) := by ring
    _ = _ := by
      rw [← Real.rpow_natCast, ← Real.rpow_mul hn0.le, mul_assoc, ← Real.rpow_add hn0]
      norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a735a74cd7d037f0dd38188cf6c5ce466041f6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
