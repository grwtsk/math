# Verification target: GRWTSK.Algebra.AlgebraicClosure.Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d837f136c007b2ef9824adf04814fc056e174aac",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/index.md) · [Full source](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d837f136c007b2ef9824adf04814fc056e174aac`.

Source path: `GRWTSK/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.Construction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonicIrreducible](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/monicirreducible--cc22ea7df7c2cab756259d0a.md) | 48 | `declaration-track:cc22ea7df7c2cab756259d0ac93fdef2feeb940a37602e85534c3a61c7371144` |
| 2 | `def` | [evalXSelf](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/evalxself--28b8c3bf3df4904b28443baa.md) | 53 | `declaration-track:28b8c3bf3df4904b28443baa12cc2af60f79f32ac68ee1ce2a5b05bbd21f4e02` |
| 3 | `def` | [spanEval](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/spaneval--4024d7592ec12dadcd602375.md) | 60 | `declaration-track:4024d7592ec12dadcd602375cb77b61d8c39a5b0483dd6fbd2ef2da66039f509` |
| 4 | `def` | [toSplittingField](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/tosplittingfield--e82a75421c42562d3b9796c2.md) | 67 | `declaration-track:e82a75421c42562d3b9796c281c175bbd68e0dc54d38c581e45da99574143561` |
| 5 | `theorem` | [toSplittingField_evalXSelf](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/tosplittingfield-evalxself--84363b121c334da9caad7fd0.md) | 78 | `result-track:84363b121c334da9caad7fd05100c666928cdb6b555bfb47d9dba55fc38091f9` |
| 6 | `theorem` | [spanEval_ne_top](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/spaneval-ne-top--e7564077b3d5c3d59ed13827.md) | 86 | `result-track:e7564077b3d5c3d59ed1382739e2283abb2023fa0e7b6c9a415fd4ab17bcd168` |
| 7 | `def` | [maxIdeal](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/maxideal--2f8897c5d8f7ecc10e3cb27d.md) | 99 | `declaration-track:2f8897c5d8f7ecc10e3cb27d314d644bb8540b5f04732bcab9dfc861ac8b876b` |
| 8 | `instance` | [maxIdeal.isMaximal](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/maxideal-ismaximal--8c5488f15d068326442a8c8c.md) | 103 | `declaration-track:8c5488f15d068326442a8c8cbd91adf8bb668f64135e46d1227244a008c6b8dd` |
| 9 | `theorem` | [le_maxIdeal](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/le-maxideal--fb884b98a350fd0fd8c32660.md) | 107 | `result-track:fb884b98a350fd0fd8c3266011dbe3cd60995da2b8ba01f2e69f663de487b5f4` |
| 10 | `def` | [AdjoinMonic](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/adjoinmonic--83b5d1c273efb9a87bee8d93.md) | 112 | `declaration-track:83b5d1c273efb9a87bee8d93bfd285a039788138ed27c680882ece46a3448c68` |
| 11 | `instance` | [AdjoinMonic.field](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/adjoinmonic-field--df81e9c0eba6529f16985e09.md) | 116 | `declaration-track:df81e9c0eba6529f16985e09d1af1703a09f0a803affa697576d61d546c22510` |
| 12 | `instance` | [AdjoinMonic.inhabited](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/adjoinmonic-inhabited--b7a8050e36d44556943e6e16.md) | 120 | `declaration-track:b7a8050e36d44556943e6e16954ee28025ba2e646712e3ec004631a1daf86d6d` |
| 13 | `def` | [toAdjoinMonic](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/toadjoinmonic--df8450565d40fc98d51557ca.md) | 125 | `declaration-track:df8450565d40fc98d51557ca48030ebdb50ccc037d1c152f1afee8ed8b72c009` |
| 14 | `instance` | [AdjoinMonic.algebra](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/adjoinmonic-algebra--ecebe5476a4f068c76b06bff.md) | 129 | `declaration-track:ecebe5476a4f068c76b06bff8983a2ab254bb3f0aec7c42ed0836c037282557d` |
| 15 | `theorem` | [AdjoinMonic.algebraMap](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/adjoinmonic-algebramap--d8b30d91607db2f29268b983.md) | 134 | `result-track:d8b30d91607db2f29268b983128993abb528bf416bfa51624bfb902e66ce38fa` |
| 16 | `theorem` | [AdjoinMonic.isIntegral](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/adjoinmonic-isintegral--e698993eab88543303023e3c.md) | 138 | `result-track:e698993eab88543303023e3ce82f3ddbf7f7baf797821f963715c0951b558c58` |
| 17 | `theorem` | [AdjoinMonic.exists_root](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/adjoinmonic-exists-root--f2c4129c4329a5d66eee1269.md) | 151 | `result-track:f2c4129c4329a5d66eee12694195f19253bd4045e197e4abd5d2b0e9a217eda7` |
| 18 | `def` | [stepAux](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/stepaux--dffbdcde016b72fa348f8839.md) | 159 | `declaration-track:dffbdcde016b72fa348f88394716546f43384ab9d8d9e2c4e872e65a07653ba4` |
| 19 | `def` | [Step](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/step--a9c8e167dc6041169f6def71.md) | 164 | `declaration-track:a9c8e167dc6041169f6def71693b49fd09741277dac74474c1d2c5409a1374e9` |
| 20 | `theorem` | [Step.zero](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/step-zero--39f43dafbf8b796e3f353f33.md) | 169 | `result-track:39f43dafbf8b796e3f353f33ebc83c454424c36030e8d27537f36efcc21dda34` |
| 21 | `instance` | [Step.field](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/step-field--a8aab7a529c7491b21289d1b.md) | 171 | `declaration-track:a8aab7a529c7491b21289d1bc19f34dd37a66a5cf6b24ec4deb2abadf36f4883` |
| 22 | `theorem` | [Step.succ](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/step-succ--7114bdd44d4250372c00e455.md) | 176 | `result-track:7114bdd44d4250372c00e455c8ad2ceba106a259f0fb54d598df218008dd4a9e` |
| 23 | `instance` | [Step.inhabited](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/step-inhabited--3681069f25915f7ace387075.md) | 178 | `declaration-track:3681069f25915f7ace387075ac56fa657fd6fa1e9fea6877d3c731da55e4f1d1` |
| 24 | `def` | [toStepZero](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/tostepzero--b9f26cfeb55c87acb682844c.md) | 183 | `declaration-track:b9f26cfeb55c87acb682844cca67ffa37b4cbefa1515b55af482cee9a7c7f54f` |
| 25 | `def` | [toStepSucc](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/tostepsucc--940e0772329a37a187891bf1.md) | 188 | `declaration-track:940e0772329a37a187891bf1c354704de38b63e3ca7c835e2b0e027dee353371` |
| 26 | `instance` | [Step.algebraSucc](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/step-algebrasucc--907c30f21088582ea7853285.md) | 192 | `declaration-track:907c30f21088582ea7853285cafbcaaf72643e6cc8ee05cfa3e7568724351460` |
| 27 | `theorem` | [toStepSucc.exists_root](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/tostepsucc-exists-root--220b352c05dbf29e6879cb56.md) | 196 | `result-track:220b352c05dbf29e6879cb56483dbf1c1fde7c76f8f9cf4814f0a632ccd4d94e` |
| 28 | `def` | [toStepOfLE'](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/tostepofle--37ac8bb2e2d5f75a1e14fe9a.md) | 207 | `declaration-track:37ac8bb2e2d5f75a1e14fe9a065c9b11672fb6bad721f20658cfd3b62270725f` |
| 29 | `theorem` | [toStepOfLE'.succ](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/tostepofle-succ--e01b76bee270f8c3bdedfc4c.md) | 210 | `result-track:e01b76bee270f8c3bdedfc4c8866adcb9e958657148ae7e7e5fa56db90978b34` |
| 30 | `def` | [toStepOfLE](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/tostepofle--fda0842b4d9d66ca9a083765.md) | 218 | `declaration-track:fda0842b4d9d66ca9a0837652aa11aac45bb10257e5fb02a8a17b5cc8ba35477` |
| 31 | `theorem` | [coe_toStepOfLE](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/coe-tostepofle--08ff9c77338bcea2bfcc9bf2.md) | 247 | `result-track:08ff9c77338bcea2bfcc9bf2e089fd70d1ed0a1a088db431e0c5371d8af73ef3` |
| 32 | `instance` | [Step.algebra](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/step-algebra--6afeb19e8e2bbdf0ff39d221.md) | 252 | `declaration-track:6afeb19e8e2bbdf0ff39d221bcb0a5e8b913b4844366af77fc013072b8a6f360` |
| 33 | `instance` | [Step.scalar_tower](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/step-scalar-tower--09508e337165b1281e414e48.md) | 256 | `declaration-track:09508e337165b1281e414e48ed134bf55cce90d8c03490eb6f87354a341bef39` |
| 34 | `theorem` | [toStepOfLE.succ](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/tostepofle-succ--7cf6e9c7a9689a8c146e5f75.md) | 262 | `result-track:7cf6e9c7a9689a8c146e5f753973d19e4c20e54a7d9821d685cad6f4b6a88d58` |
| 35 | `theorem` | [Step.isIntegral](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/step-isintegral--d8615c0376aa76d7851c0bda.md) | 271 | `result-track:d8615c0376aa76d7851c0bdac5d955cbb67a37d0f74f12f414c5064393a1d241` |
| 36 | `instance` | [toStepOfLE.directedSystem](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/tostepofle-directedsystem--e014b4cd6a506a64e63bdde5.md) | 294 | `declaration-track:e014b4cd6a506a64e63bdde5e8f6b4591abb4ccdd3581e24c1e33e2f6f64ec79` |
| 37 | `def` | [AlgebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/algebraicclosure--f098da41fceb234db09fc075.md) | 302 | `declaration-track:f098da41fceb234db09fc075a23edc7ddfde855637d04eea2aeb3664b499b5fc` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/instance--9391f49102f9ba977eb0db54.md) | 308 | `declaration-track:9391f49102f9ba977eb0db545daa957a0d48e9d966287d6ca6c46edbb7a545c0` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/instance--bc8a0be7b4df24bb8609ffc1.md) | 311 | `declaration-track:bc8a0be7b4df24bb8609ffc1f4d6d4b29a9397ef9e41405c6c563384644e54c1` |
| 40 | `def` | [ofStep](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/ofstep--3313153481ba0e683cb7afdc.md) | 315 | `declaration-track:3313153481ba0e683cb7afdc2eccdd51e2ebfa90953b60376b252d6fe1c4b936` |
| 41 | `instance` | [algebraOfStep](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/algebraofstep--3af31084d16c7e02dce9d29f.md) | 319 | `declaration-track:3af31084d16c7e02dce9d29f1df135ddb780254812f3fee45f19e0739af408f8` |
| 42 | `theorem` | [ofStep_succ](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/ofstep-succ--07b72bcb0037364e09a19004.md) | 323 | `result-track:07b72bcb0037364e09a19004f3bb62881fd58481611c9b4d4db2a4d0e42f97d5` |
| 43 | `theorem` | [exists_ofStep](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/exists-ofstep--cba2cb9d6f999daf50327bd0.md) | 341 | `result-track:cba2cb9d6f999daf50327bd09d3c561567b7db43a192cf310638e4c03b5fcd3c` |
| 44 | `theorem` | [exists_root](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/exists-root--d10c9e4b5fa03ea1759ad7d3.md) | 345 | `result-track:d10c9e4b5fa03ea1759ad7d307cbf03b48be3e65e4c192af0c3a9786c58bedc8` |
| 45 | `instance` | [instIsAlgClosed](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/instisalgclosed--cc50b25989960c8d512ba539.md) | 357 | `declaration-track:cc50b25989960c8d512ba539681d2c34a9ec6ef62f1a8931fdb32456b342f3d3` |
| 46 | `instance` | [instAlgebra](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/instalgebra--884dd70e00f128b23dd43076.md) | 361 | `declaration-track:884dd70e00f128b23dd430768eb6712d3e0f009db76402d8627fd6b32c54e792` |
| 47 | `theorem` | [algebraMap_def](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/algebramap-def--58cd3ebbbd37678bc9dc15ee.md) | 365 | `result-track:58cd3ebbbd37678bc9dc15ee9a925d99bad711aa8d58b62052123258f637065d` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/instance--d5b787e41204b3ce0e319892.md) | 371 | `declaration-track:d5b787e41204b3ce0e3198926a7425f64dbb1dc2a07b475e640b72f89d8cd2cf` |
| 49 | `def` | [ofStepHom](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/ofstephom--40cb403a0ed4ea9f6364d70b.md) | 384 | `declaration-track:40cb403a0ed4ea9f6364d70bf375b4dc05d48087f5848d1d3d11814acb03b1b3` |
| 50 | `theorem` | [isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/isalgebraic--3a55d95d3e4805a963582100.md) | 396 | `result-track:3a55d95d3e4805a96358210027b2c5f0ab5e97792af218e93e12fee72a13a057` |
| 51 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/declarations/instance--9ab77d202113c19480e26839.md) | 402 | `declaration-track:9ab77d202113c19480e26839d56e6e8497adc979dc3ce2dbee8079a3c01b5c57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
