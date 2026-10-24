# Verification target: GRWTSK.Analysis.FunctionalAnalysis.OfNorm.Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0737427d2d7033129860dc943054961181a4c05",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0737427d2d7033129860dc943054961181a4c05`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [InnerProductSpaceable](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/innerproductspaceable--90626ac50d264d2a5c1b79fd.md) | 74 | `declaration-track:90626ac50d264d2a5c1b79fd9eb9897b1f223b317457ef419e9e4df349ff52e8` |
| 2 | `theorem` | [InnerProductSpace.toInnerProductSpaceable](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/innerproductspace-toinnerproductspaceable--fd30216b30c5686b861ed0df.md) | 81 | `result-track:fd30216b30c5686b861ed0df87f7d291b679ff5ed2414cce120b137108ed5a5d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/instance--15b9772463c1bb382d515f94.md) | 87 | `declaration-track:15b9772463c1bb382d515f94530e7d9df4126809083d0640a056804891f93419` |
| 4 | `def` | [inner_](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/inner--01bec3ce3d1b187f3bf62003.md) | 97 | `declaration-track:01bec3ce3d1b187f3bf620035acc1ca31534de2c9a9f9b0ba25fb1e008328f3d` |
| 5 | `def` | [innerProp'](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/innerprop--4db6592fe70f0e798f4c4be8.md) | 108 | `declaration-track:4db6592fe70f0e798f4c4be8c2d96cab70ca19f1a1d6aa0f6c566227520d4ca3` |
| 6 | `theorem` | [innerProp_neg_one](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/innerprop-neg-one--cab6cd7f4bba3b150eca3ed7.md) | 113 | `result-track:cab6cd7f4bba3b150eca3ed76ae38e9efac9d4194dae27271522b3feb57fa583` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.InnerProductSpaceable.Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.Continuous.inner_](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/root-grwtsk-analysis-functionalanalysis-innerproductspaceable-variant02f--47bd923c87c5e6d4b1ecbbc1.md) | 128 | `result-track:47bd923c87c5e6d4b1ecbbc11c5d2c4aa3d2331d0e8d617847915e292c1e8d33` |
| 8 | `theorem` | [inner_.norm_sq](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/inner-norm-sq--9a61d3aeedd2b0794a04cdb1.md) | 135 | `result-track:9a61d3aeedd2b0794a04cdb13c2b542d4713cf93ec91fe82d8fed89a94f09a38` |
| 9 | `theorem` | [inner_.conj_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/inner-conj-symm--5617f44a48d1ab5110d38f4b.md) | 147 | `result-track:5617f44a48d1ab5110d38f4b9e31bcf86f1ba77ac0d7f2b03b80d00b1fc3602b` |
| 10 | `theorem` | [add_left_aux1](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/add-left-aux1--447faed209fa912c52ca030d.md) | 174 | `result-track:447faed209fa912c52ca030d3c468157997c8bd098c4a2a2e5d144611499b1e0` |
| 11 | `theorem` | [add_left_aux2](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/add-left-aux2--0ff45ca3d2c37d4685153fae.md) | 179 | `result-track:0ff45ca3d2c37d4685153faeb53d09c2266489aa96e5ef27da67745756c0299b` |
| 12 | `theorem` | [add_left_aux2'](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/add-left-aux2--17f689720ba70d818b1724b3.md) | 185 | `result-track:17f689720ba70d818b1724b32a9725efe23e24df5990eebbed9084f028387f82` |
| 13 | `theorem` | [add_left_aux3](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/add-left-aux3--a7c1c4fbe0536a093f8ddcd9.md) | 191 | `result-track:a7c1c4fbe0536a093f8ddcd90761184834e32f502cd779c8f82feaf67e34a62f` |
| 14 | `theorem` | [add_left_aux4](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/add-left-aux4--c1a712c42ffc03464399dfbd.md) | 196 | `result-track:c1a712c42ffc03464399dfbd634e6feeaa180bb2618b74971eafa097be9809d9` |
| 15 | `theorem` | [add_left_aux4'](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/add-left-aux4--fd4082de6affd1d12322edf9.md) | 202 | `result-track:fd4082de6affd1d12322edf98e52645998745986eef95e068815a3b9556df633` |
| 16 | `theorem` | [add_left_aux5](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/add-left-aux5--6e5d76a2fbcb95bb3d1b92d6.md) | 207 | `result-track:6e5d76a2fbcb95bb3d1b92d62acc0f149fa4422a1da036b37bc81cf30a506086` |
| 17 | `theorem` | [add_left_aux6](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/add-left-aux6--91843f1866344f8334792cdb.md) | 216 | `result-track:91843f1866344f8334792cdb689519b56ee9ed3d4da5b340c204615796c00d65` |
| 18 | `theorem` | [add_left_aux7](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/add-left-aux7--e965c736dbd581016b893638.md) | 225 | `result-track:e965c736dbd581016b893638fdbcde4d8f3cced7429e933bcb36b1396f559192` |
| 19 | `theorem` | [add_left_aux8](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/add-left-aux8--8189621ae54e8cfb62ebfe14.md) | 232 | `result-track:8189621ae54e8cfb62ebfe14b7ee9da7e566d4665d107418d327cfa488cd1f92` |
| 20 | `theorem` | [add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/add-left--8db8ca93cd9aac29590e2d07.md) | 239 | `result-track:8db8ca93cd9aac29590e2d0775b557f8733b86fceeb0846518cc80f4e0412076` |
| 21 | `theorem` | [nat](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/nat--8ad89bb1124e1b142d711b2d.md) | 252 | `result-track:8ad89bb1124e1b142d711b2d4b13d4e62c4e2917b3bc35a686b1fafede87c9a4` |
| 22 | `theorem` | [nat_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/nat-prop--70da3fd56ad4ce77a5e2bdff.md) | 260 | `result-track:70da3fd56ad4ce77a5e2bdff1256eb031bf14c5820579b3a8bcb20aa768bdaf6` |
| 23 | `theorem` | [int_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/int-prop--cdcb00f8d96ec89342f9fcff.md) | 263 | `result-track:cdcb00f8d96ec89342f9fcff428c67e4d326bac4ef9052cd7819084ef9c77ecf` |
| 24 | `theorem` | [rat_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/rat-prop--9497673bc16fd1d9ee4b585a.md) | 278 | `result-track:9497673bc16fd1d9ee4b585a1e1f31015a67dd7020d3b3f117e136709e88e629` |
| 25 | `theorem` | [real_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/real-prop--a6d8595720b2064bfd85310c.md) | 287 | `result-track:a6d8595720b2064bfd85310c73dfece03db895e6a7a0f94428861e35fba8391c` |
| 26 | `theorem` | [I_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/i-prop--97810945d30abdf5a6b1def2.md) | 296 | `result-track:97810945d30abdf5a6b1def2a89f08bc20469f0f0f47597738083667c18ecc4a` |
| 27 | `theorem` | [innerProp](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/innerprop--8ef5544d4e10918aea30b088.md) | 313 | `result-track:8ef5544d4e10918aea30b08806b5146d172d21949cd5081b01b5c5f6e86e656e` |
| 28 | `def` | [InnerProductSpace.ofNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/innerproductspace-ofnorm--58aa70ff952d260a9b8e3558.md) | 326 | `declaration-track:58aa70ff952d260a9b8e35588fd47f42b539a8793890e356e31655b096f51a2f` |
| 29 | `theorem` | [nonempty_innerProductSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/nonempty-innerproductspace--dea546f671743c7fc074d002.md) | 345 | `result-track:dea546f671743c7fc074d002c3a7623bf07db4a650bd3bb26698f0d1c2e40044` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/declarations/instance--7935b32c1781feee98c1ab70.md) | 359 | `declaration-track:7935b32c1781feee98c1ab7063cdd8a667bdb49a3fb9084b80e5c1b859351e38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
