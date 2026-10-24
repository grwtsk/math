# mem_table_from_buthe_and_bounds_of_mem_table_12

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f194b55-3c07-6d88-6eb7-d6dffbacde8a",
  "kind": "lemma",
  "lexical_name": "mem_table_from_buthe_and_bounds_of_mem_table_12",
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
  "slug": "mem-table-from-buthe-and-bounds-of-mem-table-12--05b634b320bc59cda058d894",
  "source": {
    "blob": "ffde19a257af38792c1e302adf6bb58acc6c98a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1824,
    "line": 1804,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05b634b320bc59cda058d894ccf791bbb3cc0cc0ca52a9fb1333e8821a760ec7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f194b55-3c07-6d88-6eb7-d6dffbacde8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1804–1824.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mem_table_from_buthe_and_bounds_of_mem_table_12 (b c C M : ℝ) (Cb : ℕ → ℝ)
    (h : (b, Cb 1, Cb 2, Cb 3, Cb 4, Cb 5, c, C, M) ∈ BKLNW.table_12) :
    ((100 : ℝ), M, c, C) ∈ table_from_buthe ∧
    exp b ≤ M ∧ (10000 : ℝ) ≤ exp b ∧ (10 : ℝ) ≤ b ∧ 0 < b ∧
    (M = 5 * 10 ^ 10 ∨ M = 32 * 10 ^ 12 ∨ M = 10 ^ 19) := by
  simp only [table_12, List.mem_cons, List.not_mem_nil, Prod.mk.injEq] at h
  casesm* _ ∨ _
  all_goals try contradiction
  all_goals try rcases h with ⟨rfl, -, -, -, -, -, rfl, rfl, rfl⟩
  all_goals try refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  all_goals try simp only [table_from_buthe, List.mem_cons, List.not_mem_nil, Prod.mk.injEq]
  all_goals try simp only [Real.exp_log (show (0 : ℝ) < 5e10 by norm_num),
                            Real.exp_log (show (0 : ℝ) < 32e12 by norm_num)]
  all_goals try grw [← exp_one_rpow, Real.exp_one_lt_d9]
  all_goals try (rw [← exp_one_rpow]
                 refine le_trans ?_ (rpow_le_rpow (by norm_num) exp_one_gt_d9.le (by norm_num)))
  all_goals try (rw [Real.le_log_iff_exp_le (by norm_num)]
                 grw [← exp_one_rpow 10, Real.exp_one_lt_d9])
  all_goals try (apply Real.log_pos; norm_num)
  all_goals try norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean#L1804).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde19a257af38792c1e302adf6bb58acc6c98a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
