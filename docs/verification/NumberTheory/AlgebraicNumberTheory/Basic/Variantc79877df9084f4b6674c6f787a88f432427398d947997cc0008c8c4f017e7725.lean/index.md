# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Basic.Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db683007f03664e2020ace3a71a069e9a1ec25af",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db683007f03664e2020ace3a71a069e9a1ec25af`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean.json)

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
| 1 | `theorem` | [IsPrimitiveRoot.not_coprime_norm_of_mk_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/isprimitiveroot-not-coprime-norm-of-mk-eq-one--1954312273a442f0f1408e04.md) | 42 | `result-track:1954312273a442f0f1408e04dd5ef39d1ad28b3316a116fa3ff64a467625ec49` |
| 2 | `def` | [Ideal.rootsOfUnityMapQuot](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/ideal-rootsofunitymapquot--65b419e5fe2469ca6f8add89.md) | 60 | `declaration-track:65b419e5fe2469ca6f8add89261ac0afa1965d999991c08d4a9679eba04ec056` |
| 3 | `theorem` | [Ideal.rootsOfUnityMapQuot_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/ideal-rootsofunitymapquot-apply--57121e1b5649c50936e46fc5.md) | 64 | `result-track:57121e1b5649c50936e46fc57b0d271189b96fb0e2d10051721140382cb3a256` |
| 4 | `def` | [Ideal.torsionMapQuot](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/ideal-torsionmapquot--d9a4b3de5c0124572e170853.md) | 70 | `declaration-track:d9a4b3de5c0124572e170853782ebcc5cf6a9a740b5872862ad85ad93003568b` |
| 5 | `theorem` | [Ideal.torsionMapQuot_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/ideal-torsionmapquot-apply--ad09a5bbe7246bd8a453a1cc.md) | 74 | `result-track:ad09a5bbe7246bd8a453a1ccac23b0250862e7f31db5bec0291e3b5d9fc805c0` |
| 6 | `theorem` | [Ideal.rootsOfUnityMapQuot_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/ideal-rootsofunitymapquot-injective--cd557443b4405c430e55ec0d.md) | 79 | `result-track:cd557443b4405c430e55ec0d275c04ed169f57c85e7662feed188661abb74d8e` |
| 7 | `theorem` | [Ideal.rootsOfUnityMapQuot_inj](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/ideal-rootsofunitymapquot-inj--ef52e6d76a38b12d2bd45e71.md) | 94 | `result-track:ef52e6d76a38b12d2bd45e71c35bd41fc1c28059b9454520980bb2f8ad98c3b5` |
| 8 | `theorem` | [IsPrimitiveRoot.idealQuotient_mk](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/isprimitiveroot-idealquotient-mk--fdb3ede809d31d2842330008.md) | 99 | `result-track:fdb3ede809d31d2842330008ded73ff0c5f1ad47bdbd3c331ac5575b3d5307b8` |
| 9 | `theorem` | [Ideal.torsionMapQuot_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/ideal-torsionmapquot-injective--b10dc2cbcf636a251fd48f99.md) | 114 | `result-track:b10dc2cbcf636a251fd48f9990fec8929c51bbee867a8c0976e5d6143f1baa3e` |
| 10 | `theorem` | [Ideal.torsionMapQuot_inj](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/ideal-torsionmapquot-inj--ab11025e3f2acde4c8f85715.md) | 122 | `result-track:ab11025e3f2acde4c8f85715e32a34c4a7688a3652d0a50d447e4a13e905a0d0` |
| 11 | `theorem` | [Ideal.torsionMapQuot_injective'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/ideal-torsionmapquot-injective--8f554eb835e33c32b7c7e571.md) | 135 | `result-track:8f554eb835e33c32b7c7e57162f514623ad933da094ae65c3cecc0462ce76e8b` |
| 12 | `theorem` | [Ideal.torsionMapQuot_inj'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/ideal-torsionmapquot-inj--07d273400456c319bb488a25.md) | 164 | `result-track:07d273400456c319bb488a25d180852c03c732c5049836c9f7b6bad2c0d5ff80` |
| 13 | `theorem` | [NumberField.torsionOrder_dvd_absNorm_sub_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/numberfield-torsionorder-dvd-absnorm-sub-one--dcabc7aa7b8c41807b04e5c2.md) | 176 | `result-track:dcabc7aa7b8c41807b04e5c22a0c8e4dabc43352ab7d6f1794f47007ee5a9b1f` |
| 14 | `theorem` | [NumberField.torsionOrder_dvd_absNorm_sub_one'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/numberfield-torsionorder-dvd-absnorm-sub-one--4d51de87988ecef8c44db214.md) | 192 | `result-track:4d51de87988ecef8c44db2143e7f756dba92ab603006c02cce909ab746d325ad` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc79877df9084f4b6674c6f787a88f432427398d947997cc0008c8c4f017e7725.lean/declarations/instance--80deb65105183affd455c4ab.md) | 211 | `declaration-track:80deb65105183affd455c4ab3dbc5696866de8dc1f61e260e689f8f7c3bfb06a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
