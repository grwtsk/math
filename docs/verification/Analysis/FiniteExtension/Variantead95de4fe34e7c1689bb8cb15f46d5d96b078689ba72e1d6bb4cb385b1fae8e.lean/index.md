# Verification target: GRWTSK.Analysis.FiniteExtension.Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "905d22684e454bf8b5388134a03f196d15ea9338",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `905d22684e454bf8b5388134a03f196d15ea9338`.

Source path: `GRWTSK/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [norm](../../../../mathematics/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/declarations/norm--eac61384b5a0e02efb6cd888.md) | 67 | `declaration-track:eac61384b5a0e02efb6cd8886ce1b828fa7b7d7b2c51005715e75b80a9b4e6eb` |
| 2 | `theorem` | [norm_repr_le_norm](../../../../mathematics/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/declarations/norm-repr-le-norm--9368560a705d7ca7007db215.md) | 71 | `result-track:9368560a705d7ca7007db2154ab2729c2a882f3f5d70cf25e154731a1f3606dd` |
| 3 | `theorem` | [norm_zero](../../../../mathematics/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/declarations/norm-zero--afc91801c6578da81fd8a853.md) | 75 | `result-track:afc91801c6578da81fd8a853c7febfc1fec79b7bad57e914dd14b9c32b339e19` |
| 4 | `theorem` | [norm_neg](../../../../mathematics/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/declarations/norm-neg--7c042f165725a1655ed58cac.md) | 79 | `result-track:7c042f165725a1655ed58cac0e142d9baaaeac3fa4e9d8c7164fad60d7e4a4a6` |
| 5 | `theorem` | [norm_nonneg](../../../../mathematics/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/declarations/norm-nonneg--742aae7d4bb38333e0dc4625.md) | 83 | `result-track:742aae7d4bb38333e0dc46254a3039b918923cdf4b3a18276d8794e87e90fca4` |
| 6 | `theorem` | [norm_extends](../../../../mathematics/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/declarations/norm-extends--07ff2d583f3cae931191c6b2.md) | 89 | `result-track:07ff2d583f3cae931191c6b284f10475292ef3b7ba7dac287407105ada93a151` |
| 7 | `theorem` | [norm_isNonarchimedean](../../../../mathematics/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/declarations/norm-isnonarchimedean--9ed12b44686b575bde1a26dc.md) | 98 | `result-track:9ed12b44686b575bde1a26dc57fd029e29d75eebc644911c156b2c08de08e1a8` |
| 8 | `theorem` | [norm_mul_le_const_mul_norm](../../../../mathematics/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/declarations/norm-mul-le-const-mul-norm--1fbf80425afcd95cd4a30328.md) | 110 | `result-track:1fbf80425afcd95cd4a30328432c271945e10e27abf632cf4785755c0dc4553b` |
| 9 | `theorem` | [norm_smul](../../../../mathematics/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/declarations/norm-smul--3f098808e96a67805295f51f.md) | 159 | `result-track:3f098808e96a67805295f51f2eaec8422882fdd645ea475a4ecc951dc27f4c3c` |
| 10 | `theorem` | [exists_nonarchimedean_pow_mul_seminorm_of_finiteDimensional](../../../../mathematics/Analysis/FiniteExtension/Variantead95de4fe34e7c1689bb8cb15f46d5d96b078689ba72e1d6bb4cb385b1fae8e.lean/declarations/exists-nonarchimedean-pow-mul-seminorm-of-finitedimensional--a66cc712eebb73dc16611238.md) | 177 | `result-track:a66cc712eebb73dc16611238ae45e920bb2be36558ec7d21dacf69fc881337e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
