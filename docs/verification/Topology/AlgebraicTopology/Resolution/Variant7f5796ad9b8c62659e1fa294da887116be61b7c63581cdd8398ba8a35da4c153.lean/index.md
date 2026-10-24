# Verification target: GRWTSK.Topology.AlgebraicTopology.Resolution.Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9701eb8ff5f044393296844860bc916020457c6",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9701eb8ff5f044393296844860bc916020457c6`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean.json)

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
| 1 | `def` | [liftFZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/liftfzero--21323c033d762ff20479f1be.md) | 63 | `declaration-track:21323c033d762ff20479f1be97dbfa57be443aa5c115b999732f0ab80b1cc445` |
| 2 | `lemma` | [exact₀](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/exact--af7a0e95883e145b48d45948.md) | 73 | `result-track:af7a0e95883e145b48d45948f403e6bdb1441efe8449bb63e7617b5ae0fa3699` |
| 3 | `def` | [liftFOne](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/liftfone--f93146a59960a4ca22b41e28.md) | 79 | `declaration-track:f93146a59960a4ca22b41e28db3437095f6b8b4b1296eb1dcf75006c254fefc1` |
| 4 | `theorem` | [liftFOne_zero_comm](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/liftfone-zero-comm--8dd3de7c3a87985008817ef0.md) | 84 | `result-track:8dd3de7c3a87985008817ef0e75a67d1c8b21f75bccca687108645bc6a31308f` |
| 5 | `def` | [liftFSucc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/liftfsucc--ca3d9d95582a26e42fcc2d2d.md) | 90 | `declaration-track:ca3d9d95582a26e42fcc2d2d3f93e00289ebac428d2f4b52172eb321f560338f` |
| 6 | `def` | [lift](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/lift--78cd841d6ae35832e550da6b.md) | 100 | `declaration-track:78cd841d6ae35832e550da6b6e8c0737c3162364752e8f06b11c64de487b7157` |
| 7 | `theorem` | [lift_commutes](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/lift-commutes--232e2008f4bcaf21a24793be.md) | 108 | `result-track:232e2008f4bcaf21a24793be94d37222c9df685394e763d03f6109276a5d8685` |
| 8 | `lemma` | [lift_commutes_zero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/lift-commutes-zero--32f0975af0ca54ed86b2cf93.md) | 114 | `result-track:32f0975af0ca54ed86b2cf932afdd4227defbf9426ba1dd1cd3fb4b7c3fc269b` |
| 9 | `def` | [liftHomotopyZeroZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/lifthomotopyzerozero--0801f1d2cd66f6f6b3acf25a.md) | 120 | `declaration-track:0801f1d2cd66f6f6b3acf25a5f1259fd94ae2ed3e347bd1a6875b29c35c910f2` |
| 10 | `lemma` | [liftHomotopyZeroZero_comp](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/lifthomotopyzerozero-comp--a5bc6222a0671e8271eee71c.md) | 125 | `result-track:a5bc6222a0671e8271eee71ca979e0503ba9f8856253956696481f190b46ebf9` |
| 11 | `def` | [liftHomotopyZeroOne](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/lifthomotopyzeroone--73a515eaeff461c77b24e7ae.md) | 131 | `declaration-track:73a515eaeff461c77b24e7ae8b183727da40ea8a2e3d9908164e68f6c30e412b` |
| 12 | `lemma` | [liftHomotopyZeroOne_comp](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/lifthomotopyzeroone-comp--c491fd9d7f3f417d0808da49.md) | 139 | `result-track:c491fd9d7f3f417d0808da499648c327edc7ec26b7e29bb58eb41a174a3172a9` |
| 13 | `def` | [liftHomotopyZeroSucc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/lifthomotopyzerosucc--fb2595eb8d065f1f1acd042b.md) | 146 | `declaration-track:fb2595eb8d065f1f1acd042b164c63bfe3a7310c974762c6b2a09d02ee667d3e` |
| 14 | `lemma` | [liftHomotopyZeroSucc_comp](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/lifthomotopyzerosucc-comp--832174bf1872702418f0542e.md) | 154 | `result-track:832174bf1872702418f0542e98427ea320cafa69ba8588df9e699909f061d4eb` |
| 15 | `def` | [liftHomotopyZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/lifthomotopyzero--4d75e388a1643909e143a0fd.md) | 163 | `declaration-track:4d75e388a1643909e143a0fd7a831eb5f03a67320caa65d8e1254fcb20845d5a` |
| 16 | `def` | [liftHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/lifthomotopy--02b35b1e310cf424d19fc5ca.md) | 170 | `declaration-track:02b35b1e310cf424d19fc5cad1de09a7ed27e1389ddd0c4b177bb84a1d930e20` |
| 17 | `def` | [liftIdHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/liftidhomotopy--b6c897264af043024dadadba.md) | 176 | `declaration-track:b6c897264af043024dadadbac2f44743477307989446548beb4f1372dab92856` |
| 18 | `def` | [liftCompHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/liftcomphomotopy--7cd2ed0052c39b5ec91d4fc5.md) | 181 | `declaration-track:7cd2ed0052c39b5ec91d4fc573b31a1f5deb952e10137a37a12072b94f285bf0` |
| 19 | `def` | [homotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/homotopyequiv--6bbe62a87371a519777fbca3.md) | 188 | `declaration-track:6bbe62a87371a519777fbca3362e781e100f7a42635f0f300901441ef2f03655` |
| 20 | `theorem` | [homotopyEquiv_hom_π](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/homotopyequiv-hom--943f7b2a8b72e45c0e930871.md) | 198 | `result-track:943f7b2a8b72e45c0e930871ca067e4c50eb20fa36d9a86e1042a61d28625a15` |
| 21 | `theorem` | [homotopyEquiv_inv_π](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/homotopyequiv-inv--1aebda9b11a6b372f12e4a13.md) | 202 | `result-track:1aebda9b11a6b372f12e4a13a2a7f8965098cd5b35ab69e1a4f3cd80a3b234a4` |
| 22 | `abbrev` | [projectiveResolution](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/projectiveresolution--1fafb96b66a315533a2956e9.md) | 210 | `declaration-track:1fafb96b66a315533a2956e934c7f916ecbd866ad6a0ae8392aedc3eb44ff983` |
| 23 | `def` | [projectiveResolutions](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/projectiveresolutions--5faf45c96128c88253505785.md) | 225 | `declaration-track:5faf45c96128c882535057854d642135698152979ed5ca652b5bd0fbc12ceee9` |
| 24 | `def` | [ProjectiveResolution.iso](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/projectiveresolution-iso--e73f688afa09c55491e551a4.md) | 241 | `declaration-track:e73f688afa09c55491e551a4b2c1214dbe2a7fa16fc164d6360f553f29ce878a` |
| 25 | `lemma` | [ProjectiveResolution.iso_inv_naturality](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/projectiveresolution-iso-inv-naturality--a16d379136533ece0ab4f85e.md) | 248 | `result-track:a16d379136533ece0ab4f85e9eae2c81f557d2faf1c996fdbefa910bd3d4a406` |
| 26 | `lemma` | [ProjectiveResolution.iso_hom_naturality](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/projectiveresolution-iso-hom-naturality--503d1c42b2c2bf84aeabb9ed.md) | 259 | `result-track:503d1c42b2c2bf84aeabb9ed3a7285f256a0fae4341b76268bbbfcd4ee51ee87` |
| 27 | `theorem` | [exact_d_f](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/exact-d-f--8c5901e371f82443a0b6ee1e.md) | 273 | `result-track:8c5901e371f82443a0b6ee1e19ba36e93446c6fa72f334a0f58cc8908544907e` |
| 28 | `def` | [ofComplex](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/ofcomplex--a0418d2bbd02700ba72eb060.md) | 302 | `declaration-track:a0418d2bbd02700ba72eb06054b016ab4c7abeb65f706befc410d81ae61b2bf1` |
| 29 | `lemma` | [ofComplex_d_1_0](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/ofcomplex-d-1-0--c42f819041824120b01a0e05.md) | 306 | `result-track:c42f819041824120b01a0e05efd0ba858ac531f08673c2f73f56d1b2b140ef46` |
| 30 | `lemma` | [ofComplex_exactAt_succ](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/ofcomplex-exactat-succ--e0d9d2104536faf29d80bcef.md) | 311 | `result-track:e0d9d2104536faf29d80bcefaf9c1dab8bba0a4ce48743930ab5799f3d4573eb` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/instance--9b90decad3913930cba9a69c.md) | 321 | `declaration-track:9b90decad3913930cba9a69c39e88a50309f087ff179656950196558e23eb86b` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/instance--7900bbc65db9ad3263674f85.md) | 346 | `declaration-track:7900bbc65db9ad3263674f8567ebb385475d19f36de38574bcc695c1d72198d1` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/declarations/instance--75af11866fd87e184513ef7c.md) | 348 | `declaration-track:75af11866fd87e184513ef7cc34d738aae3f6af60ad9d0b56f11b764430fbfc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
