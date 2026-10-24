# Verification target: GRWTSK.Algebra.Hairer.Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcbd01964068cbfa05c5b818db35945e69b8dac2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcbd01964068cbfa05c5b818db35945e69b8dac2`.

Source path: `GRWTSK/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Funext` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.AEEqOfIntegralContDiff` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.MvPolynomial` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContDiffSupportedOn](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/declarations/contdiffsupportedon--2616a8105b802219a43eb0e8.md) | 39 | `declaration-track:2616a8105b802219a43eb0e8ca994df265b8110bf2b9abf53e7dccb9f05b4d4e` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/declarations/instance--d8b64396952993d94ff2e578.md) | 51 | `declaration-track:d8b64396952993d94ff2e57831ef4e10592c080c0ea77103c41aff1ab3cde226` |
| 3 | `lemma` | [coe_mk](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/declarations/coe-mk--b5de73bceb31176063658e2c.md) | 56 | `result-track:b5de73bceb31176063658e2c3dccf4fd83cf2237959531f89349daf5d3551f27` |
| 4 | `lemma` | [tsupport_subset](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/declarations/tsupport-subset--baf708461cfd9e3ae307fae7.md) | 58 | `result-track:baf708461cfd9e3ae307fae780759ef1d88b7d1853531ef0e57b06ff36f933d5` |
| 5 | `lemma` | [support_subset](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/declarations/support-subset--88b99f141cdb86147d1a45ff.md) | 60 | `result-track:88b99f141cdb86147d1a45ff0f666f7e7309c28ecb40a5da53da743672dd9933` |
| 6 | `lemma` | [contDiff](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/declarations/contdiff--d962b33f53fc802d0cc11d9d.md) | 63 | `result-track:d962b33f53fc802d0cc11d9ddd96a58a180ac157fcecb85bfcb11bd88ff82d62` |
| 7 | `theorem` | [continuous](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/declarations/continuous--44adf914c8c19efae64f08f4.md) | 66 | `result-track:44adf914c8c19efae64f08f4e89b646679369ef210648af09d2e0b053c612561` |
| 8 | `lemma` | [hasCompactSupport](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/declarations/hascompactsupport--03f336bb2e5c45cd6ea2aee6.md) | 69 | `result-track:03f336bb2e5c45cd6ea2aee6ea84494ff049ff9ffa80930e33cb9c2a5d28f5d3` |
| 9 | `theorem` | [integrable_eval_mul](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/declarations/integrable-eval-mul--c1a5fa12bf740b8bc96b2967.md) | 73 | `result-track:c1a5fa12bf740b8bc96b296793c7784c77cf2cbd493a71ebdb2575e0e639eb79` |
| 10 | `def` | [L](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/declarations/l--05b7f212a454362e980282fa.md) | 87 | `declaration-track:05b7f212a454362e980282fa29df0e40bb977f12c88534dbf9fab891d311d8fa` |
| 11 | `lemma` | [inj_L](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/declarations/inj-l--fe41229378877c777f62778a.md) | 96 | `result-track:fe41229378877c777f62778a6b0809709452a2c5ce15ba5f376a36e55c18b2a1` |
| 12 | `lemma` | [hairer](../../../../mathematics/Algebra/Hairer/Variantadc1788c7b29065b4f54065338cda4020f64c1aec9e6da3ca27f1aeb012afef0.lean/declarations/hairer--2c3e3996e4ff06e27f0cbd7f.md) | 113 | `result-track:2c3e3996e4ff06e27f0cbd7f000fd38bc210ab009513575b2956026cf6c7c0da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
