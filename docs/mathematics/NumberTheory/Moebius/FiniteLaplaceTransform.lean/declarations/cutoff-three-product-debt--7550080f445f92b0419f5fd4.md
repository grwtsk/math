# cutoff_three_product_debt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:800c50ea-8905-531e-e118-ffd6af0dc85b",
  "kind": "theorem",
  "lexical_name": "cutoff_three_product_debt",
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
  "slug": "cutoff-three-product-debt--7550080f445f92b0419f5fd4",
  "source": {
    "blob": "99ec3cd35e67734ba05ca5b4a04a012e8950660f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 181,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7550080f445f92b0419f5fd42cca838b78d6e50802ebd4b16523812dbf448946",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:800c50ea-8905-531e-e118-ffd6af0dc85b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoff_three_product_debt (s : ℂ) :
    (1-Complex.exp (-s*Real.log 2))*(1-Complex.exp (-s*Real.log 3)) =
      pickupDirichletPrefix 3 s + Complex.exp (-s*Real.log 6) := by
  have hm2 : moebiusReal 2 = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2)]
  have hm3 : moebiusReal 3 = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]
  have hI : Finset.Icc 1 3 = {1,2,3} := by decide
  have he : Complex.exp (-s*Real.log 2)*Complex.exp (-s*Real.log 3) =
      Complex.exp (-s*Real.log 6) := by
    rw [← Complex.exp_add, show (6:ℝ) = 2*3 by norm_num,
      Real.log_mul (by norm_num : (2:ℝ) ≠ 0) (by norm_num : (3:ℝ) ≠ 0),
      Complex.ofReal_add]
    congr 1
    ring
  have hm1 : moebiusReal 1 = 1 := by simp [moebiusReal]
  simp (disch := decide) only [pickupDirichletPrefix, hI, Finset.sum_insert,
    Finset.sum_singleton, hm1, hm2, hm3, Nat.cast_one, Real.log_one,
    Complex.ofReal_zero, Complex.ofReal_neg, Complex.ofReal_one,
    mul_zero, neg_zero, Complex.exp_zero, one_mul, neg_mul]
  linear_combination (norm := skip) he
  simp only [neg_mul]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99ec3cd35e67734ba05ca5b4a04a012e8950660f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
