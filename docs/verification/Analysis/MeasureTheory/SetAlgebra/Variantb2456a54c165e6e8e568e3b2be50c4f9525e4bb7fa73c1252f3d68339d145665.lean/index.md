# Verification target: GRWTSK.Analysis.MeasureTheory.SetAlgebra.Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "608224c0d4d0b73137c0cc91b2dc97f5ac357c4b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `608224c0d4d0b73137c0cc91b2dc97f5ac357c4b`.

Source path: `GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean.json)

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
| 1 | `structure` | [IsSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/issetalgebra--ecb56a7acaf58b3aea562df7.md) | 59 | `declaration-track:ecb56a7acaf58b3aea562df757e818c8fbc2b12d6b6b4d341464ebee7b2a6a8a` |
| 2 | `theorem` | [univ_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/univ-mem--e0d71b6fe1316f7dd053b005.md) | 67 | `result-track:e0d71b6fe1316f7dd053b005ebc73d6675097bb897fd9dab6369f07b4b335531` |
| 3 | `theorem` | [inter_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/inter-mem--1a9884e0d4ff49db7fa8df9a.md) | 71 | `result-track:1a9884e0d4ff49db7fa8df9a304486f2b8d3a50a81ebe32cfda451dcecf7a314` |
| 4 | `theorem` | [sdiff_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/sdiff-mem--2b89a1516e481df76f9134ac.md) | 77 | `result-track:2b89a1516e481df76f9134ac3ca0d0ea6b1eb512860aa59b1361da49ccb4c839` |
| 5 | `theorem` | [isSetRing](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/issetring--5f722f12d042d885dd68a90c.md) | 83 | `result-track:5f722f12d042d885dd68a90c54ce7f52bdf9d5ce14bdd1b8d484a21f1a4655c2` |
| 6 | `theorem` | [biUnion_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/biunion-mem--61d8f322cdf846e2c997c870.md) | 89 | `result-track:61d8f322cdf846e2c997c870014c254fc7644235046cd6b0de836365e91f63bb` |
| 7 | `theorem` | [biInter_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/biinter-mem--eeb908f66f5fc91af3358643.md) | 93 | `result-track:eeb908f66f5fc91af33586432eb4039f68a296e0932670b4b721063a2eddea9a` |
| 8 | `inductive` | [GenerateSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/generatesetalgebra--4cdee873fb9dfb25f9d0aff3.md) | 108 | `declaration-track:4cdee873fb9dfb25f9d0aff3707dea1a86c31901f0bb8ce919cacfe122d158cb` |
| 9 | `def` | [generateSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/generatesetalgebra--0fd5360cb17c186f20e14486.md) | 116 | `declaration-track:0fd5360cb17c186f20e14486f7acdb20493cdd778fb19044e3b8c21e0a2416dd` |
| 10 | `theorem` | [isSetAlgebra_generateSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/issetalgebra-generatesetalgebra--6e79fc485ca18daeec4825fa.md) | 120 | `result-track:6e79fc485ca18daeec4825faccf4da12e48d4aa5ef643d075fb7a38808d157b3` |
| 11 | `theorem` | [self_subset_generateSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/self-subset-generatesetalgebra--07a4899657a8cf6621de4ea8.md) | 127 | `result-track:07a4899657a8cf6621de4ea85c3ea7e27cf4446f9c2da4b47a632c54096028ae` |
| 12 | `lemma` | [generateSetAlgebra_induction](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/generatesetalgebra-induction--48a1af51a017c59382b62e0a.md) | 133 | `result-track:48a1af51a017c59382b62e0add57cf64306e955ea0f47861d898865a4e22dff1` |
| 13 | `lemma` | [IsSetAlgebra.generateSetAlgebra_subset](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/issetalgebra-generatesetalgebra-subset--37a2b811f0991b5ffe69f673.md) | 148 | `result-track:37a2b811f0991b5ffe69f6733349fc622ad43e65947a7d7efa4a3aea9a1e74b4` |
| 14 | `theorem` | [generateFrom_generateSetAlgebra_eq](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/generatefrom-generatesetalgebra-eq--b28e9290c45ff02bebd5a0be.md) | 160 | `result-track:b28e9290c45ff02bebd5a0beb2f7f799bd43345e2747660b0b1352b1d795867b` |
| 15 | `theorem` | [generateSetAlgebra_mono](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/generatesetalgebra-mono--9b9c3654ade8af562c383261.md) | 177 | `result-track:9b9c3654ade8af562c3832613379c5f4ff08d8276993887c2aeed192165df09a` |
| 16 | `theorem` | [generateSetAlgebra_subset_self](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/generatesetalgebra-subset-self--87d03c8d9bd37833a8cad5f1.md) | 184 | `result-track:87d03c8d9bd37833a8cad5f1c482b3397185ccc2f75aaec104c137f06f122f41` |
| 17 | `theorem` | [generateSetAlgebra_eq](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/generatesetalgebra-eq--1fb79fe0b8b06242b18fe17d.md) | 188 | `result-track:1fb79fe0b8b06242b18fe17d5aca89d3358d917744f462ea8989bd7a8f2d0486` |
| 18 | `theorem` | [mem_generateSetAlgebra_elim](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/mem-generatesetalgebra-elim--f500e01cb38309cdb8cd5f60.md) | 195 | `result-track:f500e01cb38309cdb8cd5f6085da9d3b789ee9acb5867d8342967ef9efb11b59` |
| 19 | `theorem` | [countable_generateSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantb2456a54c165e6e8e568e3b2be50c4f9525e4bb7fa73c1252f3d68339d145665.lean/declarations/countable-generatesetalgebra--84d8797718052fa19825d5c4.md) | 238 | `result-track:84d8797718052fa19825d5c4ad4c16d8df8f36324d68590ac60daf253cf1d857` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
