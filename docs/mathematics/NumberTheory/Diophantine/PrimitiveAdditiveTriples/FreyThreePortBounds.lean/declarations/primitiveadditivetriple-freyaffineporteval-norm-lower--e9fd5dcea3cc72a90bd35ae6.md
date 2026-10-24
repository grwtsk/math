# PrimitiveAdditiveTriple.freyAffinePortEval_norm_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96fedbca-49bf-25b2-e204-eca01f6ac305",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyAffinePortEval_norm_lower",
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
  "slug": "primitiveadditivetriple-freyaffineporteval-norm-lower--e9fd5dcea3cc72a90bd35ae6",
  "source": {
    "blob": "becae935ce2f0f952cd11851aa75141b8674c2fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 25,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9fd5dcea3cc72a90bd35ae6955a65589734b53c6681c0a859b7c7817f03fac0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96fedbca-49bf-25b2-e204-eca01f6ac305`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyAffinePortEval_norm_lower
    (t : PrimitiveAdditiveTriple) (v : FreyRationalSectionCoordinates) :
    freyMaxNorm2 v ≤ freyMaxNorm3 (t.freyAffinePortEval v) := by
  let y := t.freyAffinePortEval v
  let B := freyMaxNorm3 y
  have hy0 : |y 0| ≤ B := le_max_left _ _
  have hy1 : |y 1| ≤ B := (le_max_left _ _).trans (le_max_right _ _)
  have hy2 : |y 2| ≤ B := (le_max_right _ _).trans (le_max_right _ _)
  have h0 : y 0 = v 0 := by
    dsimp only [y]
    rw [t.freyAffinePortEval_eq]
    rfl
  have hc : (2 : ℚ) ≤ (t.c : ℚ) := by exact_mod_cast t.two_le_c
  have hc0 : (0 : ℚ) ≤ (t.c : ℚ) := le_trans (by norm_num) hc
  have hsum : (t.a : ℚ) + (t.b : ℚ) = (t.c : ℚ) := by
    exact_mod_cast t.sum_eq
  have hd : y 1 - y 2 = (t.c : ℚ) * v 1 := by
    dsimp only [y]
    rw [t.freyAffinePortEval_eq]
    change (v 0 + (t.a : ℚ) * v 1) -
      (v 0 - (t.b : ℚ) * v 1) = (t.c : ℚ) * v 1
    rw [← hsum]
    ring
  have hprod : (t.c : ℚ) * |v 1| ≤ 2 * B := by
    calc
      (t.c : ℚ) * |v 1| = |(t.c : ℚ) * v 1| := by
        rw [abs_mul, abs_of_nonneg hc0]
      _ = |y 1 - y 2| := by rw [hd]
      _ ≤ |y 1| + |y 2| := abs_sub _ _
      _ ≤ 2 * B := by linarith
  have hsmall : 2 * |v 1| ≤ (t.c : ℚ) * |v 1| :=
    mul_le_mul_of_nonneg_right hc (abs_nonneg _)
  change max |v 0| |v 1| ≤ B
  exact max_le (by simpa only [h0] using hy0) (by linarith)

/-- Saturation preserves every common divisor, not just squarefree support.
In particular this can be applied to each prime power d=p^k. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `becae935ce2f0f952cd11851aa75141b8674c2fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
