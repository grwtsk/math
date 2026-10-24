# logHeight_le_of_height_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4921fc40-7f14-8871-39d3-cec0667b1306",
  "kind": "theorem",
  "lexical_name": "logHeight_le_of_height_le",
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
  "slug": "logheight-le-of-height-le--21477e6f1570e741489ead16",
  "source": {
    "blob": "08bf6ec91f9a7815932c3a245b5d5132fb986135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 237,
    "path": "GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21477e6f1570e741489ead1616ed4058d30042dabd7ea7830495725ba1920d2f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Height/RationalVectorAffineHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4921fc40-7f14-8871-39d3-cec0667b1306`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logHeight_le_of_height_le (x : ι → ℚ) (y : κ → ℚ) (A : ℚ) (hA : 0 < A)
    (h : height y ≤ A * height x) : logHeight y ≤ logHeight x + Real.log (A : ℝ) := by
  have hx : (0 : ℝ) < (height x : ℝ) := by exact_mod_cast (lt_of_lt_of_le (by norm_num) (height_one_le x))
  have hy : (0 : ℝ) < (height y : ℝ) := by exact_mod_cast (lt_of_lt_of_le (by norm_num) (height_one_le y))
  have ha : (0 : ℝ) < (A : ℝ) := by exact_mod_cast hA
  have hc : (height y : ℝ) ≤ (A : ℝ) * (height x : ℝ) := by exact_mod_cast h
  have hl := Real.log_le_log hy hc
  rw [Real.log_mul ha.ne' hx.ne'] at hl
  simpa only [logHeight, add_comm] using hl

/-- Scaling x is NOT projective scaling of the homogeneous vector (1,x). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Height/RationalVectorAffineHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08bf6ec91f9a7815932c3a245b5d5132fb986135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
