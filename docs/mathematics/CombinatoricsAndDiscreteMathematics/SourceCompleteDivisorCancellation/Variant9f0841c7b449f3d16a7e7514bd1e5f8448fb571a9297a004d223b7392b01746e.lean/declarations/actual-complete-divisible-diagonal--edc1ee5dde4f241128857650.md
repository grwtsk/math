# actual_complete_divisible_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:269e2651-5acc-6caa-e601-bbed9e105e56",
  "kind": "theorem",
  "lexical_name": "actual_complete_divisible_diagonal",
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
  "slug": "actual-complete-divisible-diagonal--edc1ee5dde4f241128857650",
  "source": {
    "blob": "00c2dc3610ffd83c49bd988d236d3bec67098aeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 112,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant9f0841c7b449f3d16a7e7514bd1e5f8448fb571a9297a004d223b7392b01746e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edc1ee5dde4f2411288576502366d6fd4a22e99e3d962e0f0b94def6af2616f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant9f0841c7b449f3d16a7e7514bd1e5f8448fb571a9297a004d223b7392b01746e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:269e2651-5acc-6caa-e601-bbed9e105e56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_complete_divisible_diagonal (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      (∑ m ∈ longInventory A,
        if d ∣ m then vonMangoldt m *
          sourcePlainWeight A ((m * m : ℕ) : ℝ) else 0)) = -typeTwoDiagonal A := by
  classical
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  unfold typeTwoDiagonal
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have hmU := (Finset.mem_Ioc.mp hm).1
  have hU := vaughanCutoff_pos A hA
  have hb := beta_eq_delta_sub_short (vaughanCutoff A) m
  rw [if_neg (by omega), zero_sub,
    short_divisor_sum_eq_indicator (vaughanCutoff A) m (by omega)] at hb
  change _ = -(vonMangoldt m * beta (vaughanCutoff A) m * _)
  rw [hb]
  unfold realMoebius
  rw [mul_neg, neg_mul, neg_neg, Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro d _
  split_ifs
  · ring
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant9f0841c7b449f3d16a7e7514bd1e5f8448fb571a9297a004d223b7392b01746e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant9f0841c7b449f3d16a7e7514bd1e5f8448fb571a9297a004d223b7392b01746e.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00c2dc3610ffd83c49bd988d236d3bec67098aeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
