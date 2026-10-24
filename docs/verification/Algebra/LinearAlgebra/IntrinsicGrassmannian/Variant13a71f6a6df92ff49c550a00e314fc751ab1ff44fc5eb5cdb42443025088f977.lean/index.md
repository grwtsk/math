# Verification target: GRWTSK.Algebra.LinearAlgebra.IntrinsicGrassmannian.Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3c4a2a9fce2a72fe42efc6c742027469dfac33b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3c4a2a9fce2a72fe42efc6c742027469dfac33b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PluckerRecognition` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IntrinsicPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/intrinsicplane--2c705943412ab1b7c847659b.md) | 22 | `declaration-track:2c705943412ab1b7c847659b5aa721c1abf3164fc2978370b8d4e98c20b469b1` |
| 2 | `def` | [FullRankFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/fullrankframe--a3748da94a324e18985d3e80.md) | 26 | `declaration-track:a3748da94a324e18985d3e808d6874bdc646cad9f92a71d0b44581005a8b9c49` |
| 3 | `def` | [representedPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/representedplane--863510d6dbc4dbd1b1c0c549.md) | 30 | `declaration-track:863510d6dbc4dbd1b1c0c5493b189ae9a3849929476e31268cea1956121645a9` |
| 4 | `theorem` | [representedPlane_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/representedplane-eq-iff--a3fd8960887179875e542d94.md) | 34 | `result-track:a3fd8960887179875e542d9453352d3ffe6f2ba3d2298670d8ce189caa430a9e` |
| 5 | `theorem` | [exists_frame_of_intrinsicPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/exists-frame-of-intrinsicplane--49d8e31b8833e0e201f1b8f9.md) | 44 | `result-track:49d8e31b8833e0e201f1b8f92d2223f9665017c2e441fb8ee375e587a1ce5454` |
| 6 | `theorem` | [representedPlane_surjective](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/representedplane-surjective--79da548ba00ec054b12bcd31.md) | 67 | `result-track:79da548ba00ec054b12bcd31a920b2330dd85ac758fa270ee5460ac1dd6b93c5` |
| 7 | `theorem` | [intrinsicPlane_dimension_le](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/intrinsicplane-dimension-le--641a58960e8347da666c5fea.md) | 74 | `result-track:641a58960e8347da666c5fea5eb8169bfa3da5b4cc84bb950f9c6f6567f9d2c3` |
| 8 | `theorem` | [no_intrinsicPlane_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/no-intrinsicplane-of-lt--fb705a01df9ff7860ad89c23.md) | 81 | `result-track:fb705a01df9ff7860ad89c2310c6eabcd06676c4d57e17642c336192eabc6d37` |
| 9 | `def` | [planeFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/planeframe--9bc2dd8eb98a7e118ff8589a.md) | 86 | `declaration-track:9bc2dd8eb98a7e118ff8589a184784d247bbcfc92c86737a3aeb73aced34fe3f` |
| 10 | `theorem` | [representedPlane_planeFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/representedplane-planeframe--71d312179220caa43726bae1.md) | 90 | `result-track:71d312179220caa43726bae162449ea7cea82f7b0bc901153be5bb43935baa3e` |
| 11 | `def` | [framePresentationSetoid](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/framepresentationsetoid--adeb7575b4baaee92e2f3c52.md) | 95 | `declaration-track:adeb7575b4baaee92e2f3c525e196792cab337b98e89d4b2bcbb35517c6ca9b9` |
| 12 | `abbrev` | [FramePresentationQuotient](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/framepresentationquotient--5462554857ca889a0b572a3b.md) | 100 | `declaration-track:5462554857ca889a0b572a3b6c652ca7bdae92254383c9c49bc7d69e62428e46` |
| 13 | `def` | [quotientToPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/quotienttoplane--2c9034399f658c775ef56c42.md) | 103 | `declaration-track:2c9034399f658c775ef56c42dc43b7f3467a161afb30a7849b2e95a2e4e1d3f2` |
| 14 | `def` | [planeToQuotient](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/planetoquotient--fa218e09276d42d06f824b68.md) | 107 | `declaration-track:fa218e09276d42d06f824b683bd10314e90c5628ff78ee31d7a5affde5e3408f` |
| 15 | `theorem` | [quotientToPlane_mk](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/quotienttoplane-mk--ba8881e86209792120e0bca4.md) | 111 | `result-track:ba8881e86209792120e0bca43acc361a0988f1290d0af8db81bd241d66a70ca1` |
| 16 | `theorem` | [planeToQuotient_representedPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/planetoquotient-representedplane--dff9d7232f27b8f2967691cd.md) | 116 | `result-track:dff9d7232f27b8f2967691cdd4959039dc887e864a105505d19d4f90d939b0bd` |
| 17 | `def` | [frameQuotientEquivPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/framequotientequivplane--b56587b74a9373b537f2cd8e.md) | 123 | `declaration-track:b56587b74a9373b537f2cd8eb0bbcede5682ca314fc4df8e4c99020daeef642f` |
| 18 | `theorem` | [frameClass_eq_iff_rowSpace](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/frameclass-eq-iff-rowspace--f70f8e3d8e10f53100721a10.md) | 135 | `result-track:f70f8e3d8e10f53100721a103fd4e5066e02ab17f3e076a68307e441e8f245e1` |
| 19 | `theorem` | [frameClass_eq_iff_orderedMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/frameclass-eq-iff-orderedminor-proportional--b7d6c4d6aef6adcedf9684d6.md) | 145 | `result-track:b7d6c4d6aef6adcedf9684d68dafcdca570e01ed00e4260f34d78d6748e3d78e` |
| 20 | `theorem` | [intrinsicPlane_has_ordered_chart](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/intrinsicplane-has-ordered-chart--79b081b4f46f582652ac428b.md) | 154 | `result-track:79b081b4f46f582652ac428ba0e9cfa24fb3da3203e6a9a219e2a5329bc08270` |
| 21 | `def` | [IntrinsicNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/intrinsicnonnegative--9a6ef6cfc0db98893e7dc8d6.md) | 165 | `declaration-track:9a6ef6cfc0db98893e7dc8d6d793b09aa39a384b7d9a75263ae5dcd60159ca41` |
| 22 | `def` | [IntrinsicPositive](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/intrinsicpositive--5c121a98937866f62900763f.md) | 169 | `declaration-track:5c121a98937866f62900763f7c01884e787b0d2817662fd9991c990e2dc60b0a` |
| 23 | `theorem` | [intrinsicNonnegative_of_positive](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/intrinsicnonnegative-of-positive--38977f0f27a703d2445f0c91.md) | 173 | `result-track:38977f0f27a703d2445f0c91760e9599a23f7e0174a7b0a0deafde4fa0542d02` |
| 24 | `def` | [NonnegativeFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/nonnegativeframe--69c940212a5358eaae1b7c2c.md) | 179 | `declaration-track:69c940212a5358eaae1b7c2c5fa607b015cccb15fa224e4d8309160e89ee14a3` |
| 25 | `def` | [PositiveFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/positiveframe--f21bb130d885769891116825.md) | 183 | `declaration-track:f21bb130d885769891116825ed905a2ecc2dd583e0232b9a7fd27c9b709904b9` |
| 26 | `def` | [nonnegativeFrameToPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/nonnegativeframetoplane--7b0da181dc16209413605d9f.md) | 187 | `declaration-track:7b0da181dc16209413605d9f86c0813591d41de7783b4577de3bb4c4c6b4ca9f` |
| 27 | `theorem` | [nonnegativeFrameToPlane_surjective](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/nonnegativeframetoplane-surjective--7e7092549f930512eb7a2aba.md) | 192 | `result-track:7e7092549f930512eb7a2aba69108797b3f93ed19532322a13ffa925c736494f` |
| 28 | `def` | [positiveFrameToPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/positiveframetoplane--030b1d33ea4d40a21cf9a83a.md) | 200 | `declaration-track:030b1d33ea4d40a21cf9a83acbd5488174a91b6e182cf8b236c3752685177217` |
| 29 | `theorem` | [positiveFrameToPlane_surjective](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/positiveframetoplane-surjective--dd0782b554164f8b1612a5ea.md) | 205 | `result-track:dd0782b554164f8b1612a5eabb8a913dec279a6d3a09c8646f155bfe638617b1` |
| 30 | `theorem` | [nonnegativeFrames_positiveGauge](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant13a71f6a6df92ff49c550a00e314fc751ab1ff44fc5eb5cdb42443025088f977.lean/declarations/nonnegativeframes-positivegauge--fc2f120b1139d5c5dc8ca75f.md) | 213 | `result-track:fc2f120b1139d5c5dc8ca75fa494f2a4a51e2e908467e4deffc2197a898af7cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
