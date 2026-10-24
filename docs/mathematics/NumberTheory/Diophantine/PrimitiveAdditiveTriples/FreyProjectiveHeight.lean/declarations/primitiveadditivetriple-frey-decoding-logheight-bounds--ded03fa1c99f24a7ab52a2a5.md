# PrimitiveAdditiveTriple.frey_decoding_logHeight_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55151177-ba49-9113-eb96-314ec6a7fcd4",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.frey_decoding_logHeight_bounds",
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
  "slug": "primitiveadditivetriple-frey-decoding-logheight-bounds--ded03fa1c99f24a7ab52a2a5",
  "source": {
    "blob": "7d719bffacefa1187b1292d7e3f024a917f8194e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 162,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ded03fa1c99f24a7ab52a2a581b25d86a236af426c6242800f6b10ef21873922",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55151177-ba49-9113-eb96-314ec6a7fcd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.frey_decoding_logHeight_bounds
    (t : PrimitiveAdditiveTriple) :
    Height.logHeight (t.freyAffinePortEval freyXRationalSection) ≤
        Height.logHeight ![(t.a : ℚ), (t.b : ℚ), (t.c : ℚ)] ∧
    Height.logHeight ![(t.a : ℚ), (t.b : ℚ), (t.c : ℚ)] ≤
        Height.logHeight (t.freyAffinePortEval freyXRationalSection) + Real.log 2 := by
  rw [t.frey_observation_logHeight, t.frey_triple_logHeight]
  have hc : (0 : ℝ) < (t.c : ℝ) := by exact_mod_cast t.c_pos
  have ha : (0 : ℝ) < (t.a : ℝ) := by exact_mod_cast t.a_pos
  have hm : (0 : ℝ) < max (t.a : ℝ) (t.b : ℝ) := ha.trans_le (le_max_left _ _)
  have hlo : max (t.a : ℝ) (t.b : ℝ) ≤ (t.c : ℝ) := by
    exact max_le (by exact_mod_cast t.a_lt_c.le) (by exact_mod_cast t.b_lt_c.le)
  have hhi : (t.c : ℝ) ≤ 2 * max (t.a : ℝ) (t.b : ℝ) := by
    have hs : (t.a : ℝ) + (t.b : ℝ) = (t.c : ℝ) := by exact_mod_cast t.sum_eq
    have h1 := le_max_left (t.a : ℝ) (t.b : ℝ)
    have h2 := le_max_right (t.a : ℝ) (t.b : ℝ)
    linarith
  constructor
  · exact Real.log_le_log hm hlo
  · calc
      Real.log (t.c : ℝ) ≤ Real.log (2 * max (t.a : ℝ) (t.b : ℝ)) :=
        Real.log_le_log hc hhi
      _ = Real.log (max (t.a : ℝ) (t.b : ℝ)) + Real.log 2 := by
        rw [Real.log_mul (by norm_num) hm.ne', add_comm]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d719bffacefa1187b1292d7e3f024a917f8194e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
