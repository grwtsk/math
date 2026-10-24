# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.GodelBetaFunction.Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0177cb022ba8235fe6d750656d2ccb345490efdf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0177cb022ba8235fe6d750656d2ccb345490efdf`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean.json)

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
| 1 | `lemma` | [coprime_mul_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean/declarations/coprime-mul-succ--887dc2edca50ed8638030e5b.md) | 52 | `result-track:887dc2edca50ed8638030e5b59ebd0da623ae22326155cbbfc4668cab2e001a6` |
| 2 | `def` | [supOfSeq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean/declarations/supofseq--e8785c03e0bd5b3e23744fe2.md) | 66 | `declaration-track:e8785c03e0bd5b3e23744fe2e192906f7c52ece8daac3af55353cfc72f8b215a` |
| 3 | `def` | [coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean/declarations/coprimes--20f23e0d69d48bcefa5f48ee.md) | 68 | `declaration-track:20f23e0d69d48bcefa5f48ee7023ac8c3626eb6c56cd45da5d4eeb809d823a49` |
| 4 | `lemma` | [coprimes_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean/declarations/coprimes-lt--ee072575ac0b0d655e68fdd0.md) | 70 | `result-track:ee072575ac0b0d655e68fdd0d8c2a6fbc6714e0db3b9e51a89c05d91b81e0709` |
| 5 | `lemma` | [pairwise_coprime_coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean/declarations/pairwise-coprime-coprimes--1b59045ecb06e09d85eaba81.md) | 79 | `result-track:1b59045ecb06e09d85eaba814b6ab60b1f685ffb33b12f943f1d7d94b4616916` |
| 6 | `def` | [beta](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean/declarations/beta--dbe31a70aacb0d5323b745b7.md) | 91 | `declaration-track:dbe31a70aacb0d5323b745b7bd3ddc2033f5727cc013f2b0bbd3c23f2cfb0234` |
| 7 | `def` | [unbeta](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean/declarations/unbeta--e2092f7ede0eb8b2a3ba57b8.md) | 95 | `declaration-track:e2092f7ede0eb8b2a3ba57b8651935c1eafd620909b5b24e46e65f1c22c7e6f5` |
| 8 | `lemma` | [beta_unbeta_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean/declarations/beta-unbeta-coe--8fa55ae1300aad54bc8a27cb.md) | 102 | `result-track:8fa55ae1300aad54bc8a27cb8aceb5c4e260a078e73ca4df13011f580cd5edab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
