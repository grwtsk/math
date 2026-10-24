# Verification target: GRWTSK.Algebra.HopkinsLevitzki.Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "270101694a5674e96efb2a6cb1ae7bc4cb1515ba",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/index.md) · [Full source](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `270101694a5674e96efb2a6cb1ae7bc4cb1515ba`.

Source path: `GRWTSK/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean.json)

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
| 1 | `theorem` | [induction](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/induction--381864831bc3f1ad10330b2b.md) | 54 | `result-track:381864831bc3f1ad10330b2b921593a07c5b9b17183aed295e8f0962f77088c2` |
| 2 | `theorem` | [finite_of_isNoetherian_or_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/finite-of-isnoetherian-or-isartinian--b8438199b14e44f69513c62d.md) | 88 | `result-track:b8438199b14e44f69513c62d6c789498678389f9ce0c986f9dae74c29acb175b` |
| 3 | `theorem` | [finite_of_isNoetherian](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/finite-of-isnoetherian--298870b3a09f0fbbdaec8eae.md) | 102 | `result-track:298870b3a09f0fbbdaec8eae0ed1445d5f37dcea0b93f46575d14070810f48f8` |
| 4 | `theorem` | [finite_of_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/finite-of-isartinian--e6f357c76f3e511842ec870c.md) | 105 | `result-track:e6f357c76f3e511842ec870c10c1a5365d67b760a111ce853e3a4a9beabebc9a` |
| 5 | `theorem` | [isNoetherian_iff_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/isnoetherian-iff-isartinian--828770455cd4985a7d569150.md) | 112 | `result-track:828770455cd4985a7d5691503d73124fd62cd51e06688d73732225af7a8e65cb` |
| 6 | `theorem` | [isNoetherian_iff_finite_of_jacobson_fg](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/isnoetherian-iff-finite-of-jacobson-fg--46682c9b0354ffdbe75987c4.md) | 118 | `result-track:46682c9b0354ffdbe75987c4bc32fcb813bf4f521d1baf76fbf101fe3bbca206` |
| 7 | `theorem` | [isNoetherianRing_iff_jacobson_fg](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/isnoetherianring-iff-jacobson-fg--c682ecd7f2c7b17ff2cdf5b2.md) | 126 | `result-track:c682ecd7f2c7b17ff2cdf5b2b8411dab38a5ac345bd09fbafeba1d56ec7dfdc2` |
| 8 | `theorem` | [IsArtinianRing.tfae](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/isartinianring-tfae--2ebd0994640f07156e4fd54b.md) | 132 | `result-track:2ebd0994640f07156e4fd54b6b4429beb8e1f4fdebd0bd5df348dda4767006bd` |
| 9 | `theorem` | [isArtinianRing_iff_isFiniteLength](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/isartinianring-iff-isfinitelength--f94b47f7dc204061e74d7230.md) | 143 | `result-track:f94b47f7dc204061e74d72303d5d0bc2b5ea8ff47037ba3db2a13477578e8f3b` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/instance--e42d945d3fcee49d04b65f91.md) | 149 | `declaration-track:e42d945d3fcee49d04b65f91435199af8094054d97fff839c31435d77dd88bf6` |
| 11 | `theorem` | [isNoetherian_of_finite_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/isnoetherian-of-finite-isartinian--48a9616b4735d6f538284bee.md) | 153 | `result-track:48a9616b4735d6f538284bee970504d59693f38c061a44f91f657a419cbf0057` |
| 12 | `theorem` | [IsNoetherianRing.isArtinianRing_of_krullDimLE_zero](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/isnoetherianring-isartinianring-of-krulldimle-zero--5b6c07283edb47be82350207.md) | 169 | `result-track:5b6c07283edb47be82350207b075e41dfba22b3c25e7f84f86088993a138fe3e` |
| 13 | `theorem` | [isArtinianRing_iff_isNoetherianRing_krullDimLE_zero](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/isartinianring-iff-isnoetherianring-krulldimle-zero--0c806eb57849d050f42f842d.md) | 184 | `result-track:0c806eb57849d050f42f842d70571d58172c295e103b5c6ba276beb1d5037b9d` |
| 14 | `theorem` | [isArtinianRing_iff_krullDimLE_zero](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/isartinianring-iff-krulldimle-zero--4fcdecbc1d872507fa306918.md) | 188 | `result-track:4fcdecbc1d872507fa306918abc0ed0a52b272474b1e82d0ca3955e99c768d14` |
| 15 | `lemma` | [isArtinianRing_iff_isNilpotent_maximalIdeal](../../../../mathematics/Algebra/HopkinsLevitzki/Variante0c8f4697e27928c8031ea7d134d15380ecbf4762686a6cf466e63e7fafe1bd6.lean/declarations/isartinianring-iff-isnilpotent-maximalideal--72d30fe6b038322644cf91bc.md) | 192 | `result-track:72d30fe6b038322644cf91bcb429b6bb7632f643606b74d4694cdbad44ab69a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
