# check_row_prop_of_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0e03ad6-c672-9072-b31c-8214755f2f49",
  "kind": "lemma",
  "lexical_name": "check_row_prop_of_bounds",
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
  "slug": "check-row-prop-of-bounds--13a80b1538d2c3dcf2b4844f",
  "source": {
    "blob": "be7f02109c11b29282a87bb98e199242d2cf0b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13a80b1538d2c3dcf2b4844f71962e5a00c45660eab9bd6a3299c92fcc187412",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0e03ad6-c672-9072-b31c-8214755f2f49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma check_row_prop_of_bounds {b M m eps c1 c2 c3 : ℝ}
    (hb : 20 ≤ b)
    (h_eps : BKLNW_app.table_8_ε b ≤ eps)
    (h_epsM : eps ≤ M)
    (h1 : exp (-b / 2) ≤ c1)
    (h2 : exp (-2 * b / 3) ≤ c2)
    (h3 : exp (-4 * b / 5) ≤ c3)
    (hbound : eps + RS_prime.c₀ * (c1 + c2 + c3) ≤ m) :
    check_row_prop (b, M, m) := by
  refine ⟨hb, ?_, ?_⟩
  · exact le_trans h_eps h_epsM
  · have hc0 : 0 ≤ RS_prime.c₀ := by norm_num [RS_prime.c₀]
    have hsum : exp (-b / 2) + exp (-2 * b / 3) + exp (-4 * b / 5) ≤ c1 + c2 + c3 := by
      linarith [h1, h2, h3]
    have hsum' : RS_prime.c₀ * (exp (-b / 2) + exp (-2 * b / 3) + exp (-4 * b / 5)) ≤
        RS_prime.c₀ * (c1 + c2 + c3) := by
      exact mul_le_mul_of_nonneg_left hsum hc0
    have hmain : BKLNW_app.table_8_ε b + RS_prime.c₀ *
        (exp (-b / 2) + exp (-2 * b / 3) + exp (-4 * b / 5)) ≤
        eps + RS_prime.c₀ * (c1 + c2 + c3) := by
      linarith [h_eps, hsum']
    exact hmain.trans hbound

-- This lemma no longer works because we changed the definition of table_8_ε to use sInf.  It may be safely deleted.
--
-- lemma row_1_checked : check_row_prop (20, 4.2676e-5, 9.1639e-5) := by
--   norm_num [check_row_prop, BKLNW_app.table_8_ε, RS_prime.c₀]
--   rw [← neg_one_mul 10, ← neg_one_mul (40 / 3), ← neg_one_mul 16, exp_mul, exp_mul, exp_mul]
--   grw [exp_neg_one_lt_d9]
--   suffices (0.3678794412 : ℝ) ^ (40 / 3 : ℝ) < 0.00000162 by grw [this]; norm_num only
--   rw [← pow_lt_pow_iff_left₀ (by positivity) (n := 3), ← rpow_mul_natCast] <;> norm_num only

set_option maxRecDepth 10000 in
@[blueprint
  "bklnw-table-14-check"
  (statement := /-- The entries in Table 14 obey the criterion in Sublemma \ref{bklnw-thm-1a-checked}. -/)
  (latexEnv := "sublemma")
  (discussion := 808)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be7f02109c11b29282a87bb98e199242d2cf0b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
