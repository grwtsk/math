# exp_neg_le_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b72f2a04-0b11-b0d2-0a2b-aad4c7af36a8",
  "kind": "lemma",
  "lexical_name": "exp_neg_le_pow",
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
  "slug": "exp-neg-le-pow--73bfcebde4262ec31e86d40d",
  "source": {
    "blob": "be7f02109c11b29282a87bb98e199242d2cf0b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73bfcebde4262ec31e86d40d242c7c9e82fe1e748fa2d759bb173ce0fe20533b",
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

Occurrence: `result:b72f2a04-0b11-b0d2-0a2b-aad4c7af36a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exp_neg_le_pow (n : ℕ) {x : ℝ} (hx : (n : ℝ) ≤ x) : exp (-x) ≤ exp_neg_one_ub ^ n := by
  have h1 : exp (-x) ≤ exp (-(n : ℝ)) := by
    have : -x ≤ -(n : ℝ) := by linarith
    exact (Real.exp_le_exp).2 this
  have hbase : exp (-1) ≤ exp_neg_one_ub := by
    exact le_of_lt Real.exp_neg_one_lt_d9
  have hpos : 0 ≤ exp (-1) := by positivity
  have hExp : exp (-(n : ℝ)) = exp (-1) ^ n := by
    have hmul : (n : ℝ) * (-1) = -(n : ℝ) := by ring
    simpa [hmul] using (Real.exp_nat_mul (-1) n)
  calc
    exp (-x) ≤ exp (-(n : ℝ)) := h1
    _ = exp (-1) ^ n := hExp
    _ ≤ exp_neg_one_ub ^ n := by
      exact pow_le_pow_left₀ hpos hbase n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be7f02109c11b29282a87bb98e199242d2cf0b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
