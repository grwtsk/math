# exp_neg_three_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2f30c61-2d3c-71c2-0bfa-41ada86d7477",
  "kind": "theorem",
  "lexical_name": "exp_neg_three_le",
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
  "slug": "exp-neg-three-le--54282a61fc09ef30568319a2",
  "source": {
    "blob": "3cdf1d08f6e4eb2b143d39cae33ed109bd3dc6a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530aPerturbation05/Variant581dffb9f21c6453b764af377931d51c846a8e9ccaf938c492e01daa826a72b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54282a61fc09ef30568319a27a52ff3c32340054b537b75b89a2f54fde4ed14a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530aPerturbation05/Variant581dffb9f21c6453b764af377931d51c846a8e9ccaf938c492e01daa826a72b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2f30c61-2d3c-71c2-0bfa-41ada86d7477`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exp_neg_three_le {A : ℝ} (hA : 3 ≤ A) :
    Real.exp (-3 * A) ≤ 1 / 4096 := by
  have he9 : Real.exp (9 : ℝ) = Real.exp 3 ^ 3 := by
    convert! Real.exp_nat_mul (3 : ℝ) 3 using 1 <;> norm_num
  have he : (4096 : ℝ) ≤ Real.exp (3 * A) := calc
    _ ≤ (20 : ℝ) ^ 3 := by norm_num
    _ ≤ Real.exp 3 ^ 3 := pow_le_pow_left₀ (by norm_num) thetaExpThree_gt_twenty.le 3
    _ = Real.exp 9 := he9.symm
    _ ≤ _ := Real.exp_le_exp.mpr (by linarith)
  rw [show -3 * A = -(3 * A) by ring, Real.exp_neg, ← one_div]
  exact one_div_le_one_div_of_le (by norm_num) he

/-- A uniform absolute bound for the first two polynomial modes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530aPerturbation05/Variant581dffb9f21c6453b764af377931d51c846a8e9ccaf938c492e01daa826a72b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530aPerturbation05/Variant581dffb9f21c6453b764af377931d51c846a8e9ccaf938c492e01daa826a72b5.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cdf1d08f6e4eb2b143d39cae33ed109bd3dc6a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
