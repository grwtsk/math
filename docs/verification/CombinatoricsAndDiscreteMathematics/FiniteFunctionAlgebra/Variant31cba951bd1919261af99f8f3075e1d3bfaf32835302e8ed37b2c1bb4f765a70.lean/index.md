# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFunctionAlgebra.Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72755102c4e199d9358434e72efe00aa48266273",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72755102c4e199d9358434e72efe00aa48266273`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.OperationalTopology` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FunctionIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/functionideal--5969da35606f5b679d8a8ab6.md) | 28 | `declaration-track:5969da35606f5b679d8a8ab6d2afdca415554cdcdb386504e4a6fe7d81560a19` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/instance--1b5fab279e1914d37e18f5a9.md) | 35 | `declaration-track:1b5fab279e1914d37e18f5a9967e53591784905e25b5d07c5b4983be55b8c251` |
| 3 | `theorem` | [mem_carrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/mem-carrier--a97d7d7a9a25596f47cb5604.md) | 49 | `result-track:a97d7d7a9a25596f47cb5604649e9fe215b97b3fd95945ad3d0e32774f2af45a` |
| 4 | `theorem` | [sum_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/sum-mem--0d5db9f59f5f9499cc185d94.md) | 54 | `result-track:0d5db9f59f5f9499cc185d94057e77c3d45aa7e7dad245e561949a8184d5af95` |
| 5 | `theorem` | [sum_univ_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/sum-univ-mem--e4c91f2bd9c2cd73c6b3a207.md) | 68 | `result-track:e4c91f2bd9c2cd73c6b3a207d4157ee375f79eeb719f3b1420c3f48f1ac9bb67` |
| 6 | `def` | [pointMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/pointmass--337c3e54c98c82abb9350e6f.md) | 75 | `declaration-track:337c3e54c98c82abb9350e6fb76a18053173a6806312212244cead4e25549815` |
| 7 | `theorem` | [pointMass_apply_same](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/pointmass-apply-same--3261abb8b3e14f96c497144c.md) | 79 | `result-track:3261abb8b3e14f96c497144caff112245c19449d9b0687b44af8f3f210b0c128` |
| 8 | `theorem` | [pointMass_apply_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/pointmass-apply-ne--44e6dea5adbfb35a54b58504.md) | 84 | `result-track:44e6dea5adbfb35a54b58504bd4605f16c2c27f8e84dca706d0cc17a72aae094` |
| 9 | `theorem` | [sum_pointMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/sum-pointmass--087535deade49b871540213f.md) | 89 | `result-track:087535deade49b871540213ff943497727a874733d2076721b8a50b9bdb0e991` |
| 10 | `def` | [zeroLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/zerolocus--7eb66dde1e49392e23d4e1fa.md) | 96 | `declaration-track:7eb66dde1e49392e23d4e1fa0d708e3b4b5eacbc27d0c0b8eef597bb16a1cd5e` |
| 11 | `def` | [vanishingIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/vanishingideal--6f3fa0f7613bd313b00445cd.md) | 100 | `declaration-track:6f3fa0f7613bd313b00445cd1e3d29ff06d70a5b45c67d8134efd69bee1898b1` |
| 12 | `theorem` | [mem_vanishingIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/mem-vanishingideal--26e1f1612baab2c8cb6543c3.md) | 114 | `result-track:26e1f1612baab2c8cb6543c3dce28b069ad2c3e1bbc038a43daccb326961d856` |
| 13 | `theorem` | [le_vanishing_zeroLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/le-vanishing-zerolocus--5f712d2f524486456693581b.md) | 119 | `result-track:5f712d2f524486456693581b4242ea97fa842f28fbfb00c6aa861c79df0f47fd` |
| 14 | `theorem` | [pointMass_mem_of_witness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/pointmass-mem-of-witness--07779b48bbd886d7153a497c.md) | 126 | `result-track:07779b48bbd886d7153a497cca45b3140d49d50ee7ae833670e50727d7fd03c9` |
| 15 | `theorem` | [finite_nullstellensatz](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/finite-nullstellensatz--fd275ac417007387c690498a.md) | 143 | `result-track:fd275ac417007387c690498af667ea27a3acc5300698333bee60bab320e8f4a0` |
| 16 | `def` | [IsTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/istop--73e12f6b4c4abc63dcaa5c71.md) | 175 | `declaration-track:73e12f6b4c4abc63dcaa5c715be36ddb2ebd2b84279dd80a71e6c72596fea0b1` |
| 17 | `theorem` | [zeroLocus_empty_iff_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/zerolocus-empty-iff-top--91d97a0ddf5f567754b20978.md) | 178 | `result-track:91d97a0ddf5f567754b20978afa0a72dee66841af076b910f7b5c30ec617df7f` |
| 18 | `theorem` | [satisfiable_iff_not_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/satisfiable-iff-not-top--f00c0e5e3258c24b533ba4d4.md) | 197 | `result-track:f00c0e5e3258c24b533ba4d4558e52be8f63b254dc54dd51bfe78245ed7ca0d2` |
| 19 | `theorem` | [represented_consequence_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/represented-consequence-iff--b906f203bda0b937a5915347.md) | 210 | `result-track:b906f203bda0b937a5915347ff946931c46c61e9c98e8239837c12433b9a36de` |
| 20 | `def` | [RadicalMember](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/radicalmember--4894b244b4596c18a8f193dd.md) | 217 | `declaration-track:4894b244b4596c18a8f193dd582282b4c18132e4a9038542b69421410199be45` |
| 21 | `theorem` | [radicalMember_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/radicalmember-iff--91fe128ccb2f71b412eaadaf.md) | 221 | `result-track:91fe128ccb2f71b412eaadafbadff0f4a41a744a214484148abf4d641e5b8478` |
| 22 | `abbrev` | [FiniteCoordinateAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/finitecoordinatealgebra--6198e2587e31cd0b8dfdb9ac.md) | 239 | `declaration-track:6198e2587e31cd0b8dfdb9ac01d2fb121c8217dc580693ce012718e39e4e8479` |
| 23 | `structure` | [AlgebraicConstraintRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/algebraicconstraintrecord--cc8de687b596dda1a024e5d4.md) | 242 | `declaration-track:cc8de687b596dda1a024e5d4a3748da8877066fa07cf4f0b32e8b388c3cb5c60` |
| 24 | `inductive` | [ConsistencyKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/consistencykind--9887c3740d1a2e37f5021117.md) | 250 | `declaration-track:9887c3740d1a2e37f502111730bfe06db14ce2091b725614db947bcdda6d911c` |
| 25 | `structure` | [ConsistencyAssessment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/consistencyassessment--8a8a731798d4805f8737087b.md) | 259 | `declaration-track:8a8a731798d4805f8737087b889d708635c6c95224657a8190644e829567ef94` |
| 26 | `structure` | [OntologyConstraintIdealRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/ontologyconstraintidealrecord--fdb990585aa88c2ebacde799.md) | 271 | `declaration-track:fdb990585aa88c2ebacde799702a330da31583880e591dfc102fec5201789b93` |
| 27 | `structure` | [OntologyModelLocusRecord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/declarations/ontologymodellocusrecord--5f14922376ef247c5ce87897.md) | 280 | `declaration-track:5f14922376ef247c5ce878970e62a0a80ffa7b9c40be10693cdbd8b4564af675` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
