# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.LogBounds.Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3de41db314648d9d680e153f59f4f5c8641ee5a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3de41db314648d9d680e153f59f4f5c8641ee5a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [pow_div_one_sub_le_two_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/pow-div-one-sub-le-two-mul--179550bf132493d234821ffc.md) | 27 | `result-track:179550bf132493d234821ffc07179e6ad5a9efc787d22c984e2c0761f0b4c82f` |
| 2 | `lemma` | [neg_log_one_sub_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/neg-log-one-sub-eq-tsum--eb0c43eb5b3f23c890ed5e82.md) | 42 | `result-track:eb0c43eb5b3f23c890ed5e821938880aa06ddc10596f95e3ac0bdee35f7fc365` |
| 3 | `def` | [partialLogSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/partiallogsum--cc0d59586c230e9bfc06f912.md) | 50 | `declaration-track:cc0d59586c230e9bfc06f912508b252c6cc9e4417d7018396bcf04da8844228b` |
| 4 | `lemma` | [partialLogSum_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/partiallogsum-zero--cf18d709c82b22ae313275bb.md) | 54 | `result-track:cf18d709c82b22ae313275bbe504dbc1b069983707b777a22b054f12d599edbb` |
| 5 | `lemma` | [partialLogSum_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/partiallogsum-at-zero--a4ac010f38c754e425927178.md) | 58 | `result-track:a4ac010f38c754e4259271781cad9b46f7ea3def9f0ee6a7f9d779e9b30c931a` |
| 6 | `lemma` | [logTaylor_succ_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/logtaylor-succ-neg--f30a40cddc38f88d4be98e9b.md) | 61 | `result-track:f30a40cddc38f88d4be98e9b87e94bdfeedeea0eab09e23ed5f3acb8f9d7659a` |
| 7 | `lemma` | [partialLogSum_succ](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/partiallogsum-succ--436b8d5c9f541d8740d70bf0.md) | 78 | `result-track:436b8d5c9f541d8740d70bf0495e7f99f4b16546f41ab94796501d2f5b08ff00` |
| 8 | `lemma` | [logTaylor_neg_eq_neg_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/logtaylor-neg-eq-neg-sum--94cd0f352f0a728c6acd34dd.md) | 85 | `result-track:94cd0f352f0a728c6acd34ddd271119759422264a7731f3284b37bd99648cba2` |
| 9 | `lemma` | [partialLogSum_eq_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/partiallogsum-eq-sum--b873223126035a23132398df.md) | 98 | `result-track:b873223126035a23132398df6cad771757ef7f786c58b07c517b96023d190821` |
| 10 | `lemma` | [hasDerivAt_partialLogSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/hasderivat-partiallogsum--a1a741812d385cea053e9fd8.md) | 102 | `result-track:a1a741812d385cea053e9fd81f29395c3efeccec17a9c50d57bbe4556f620511` |
| 11 | `lemma` | [differentiable_partialLogSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/differentiable-partiallogsum--8e7d7db0c0b7026857a213b7.md) | 127 | `result-track:8e7d7db0c0b7026857a213b705e4ca404ee7e2eef450e8d87c16ec0479a6f64b` |
| 12 | `def` | [logTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/logtail--d50c482224e357a5d0618f90.md) | 134 | `declaration-track:d50c482224e357a5d0618f90ef4b98c34df590a96adb7289d7ead7adaa337f83` |
| 13 | `lemma` | [summable_logTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/summable-logtail--e07747a81dfd60d3b909464b.md) | 137 | `result-track:e07747a81dfd60d3b909464bb6770fbc7b0517ff5150157bdccea6166c01979b` |
| 14 | `lemma` | [norm_logTail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/norm-logtail-le--5403b9c6e76ec1788a4f4546.md) | 163 | `result-track:5403b9c6e76ec1788a4f4546f4283e3783809d1fe65af2e58698f5d0d8f5eebf` |
| 15 | `lemma` | [norm_logTail_le_two_mul_norm_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/norm-logtail-le-two-mul-norm-pow--19890a67d8ae66463786d297.md) | 206 | `result-track:19890a67d8ae66463786d29704ec5ee9199c7d8b0bad12479a1f999a784f3b26` |
| 16 | `lemma` | [norm_partialLogSum_le_nat_mul_max_one_norm_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/norm-partiallogsum-le-nat-mul-max-one-norm-pow--041c1e44124dcaf48b0a34c6.md) | 210 | `result-track:041c1e44124dcaf48b0a34c69318ba6b2b7e9fcbcbc238f96813780e31d81715` |
| 17 | `lemma` | [neg_log_one_sub_eq_partialLogSum_add_logTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/LogBounds/Variant254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9.lean/declarations/neg-log-one-sub-eq-partiallogsum-add-logtail--c92f2c2a63b74d51e4fc00d0.md) | 248 | `result-track:c92f2c2a63b74d51e4fc00d03535e97ac12d8fc4ad5e819d476ebbe5687f58d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
