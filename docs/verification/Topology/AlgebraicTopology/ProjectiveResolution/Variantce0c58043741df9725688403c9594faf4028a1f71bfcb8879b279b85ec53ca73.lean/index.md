# Verification target: GRWTSK.Topology.AlgebraicTopology.ProjectiveResolution.Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae16bb73f658f03d728903fd47fccf2649c84e6d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae16bb73f658f03d728903fd47fccf2649c84e6d`.

Source path: `GRWTSK/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Projective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Single` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectiveResolution](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/projectiveresolution--93345be150db77ede915ed94.md) | 84 | `declaration-track:93345be150db77ede915ed94cd63a50b4382a5f63e5a81f5dfb43abde107ce49` |
| 2 | `class` | [HasProjectiveResolution](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/hasprojectiveresolution--e87eb2988e004bd5a650b89b.md) | 98 | `declaration-track:e87eb2988e004bd5a650b89bff93a6bd9d77b559160eea630115e0c0e0187e10` |
| 3 | `class` | [HasProjectiveResolutions](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/hasprojectiveresolutions--f47f911dcbc577106cde174c.md) | 110 | `declaration-track:f47f911dcbc577106cde174cdb09ff9ef840ccbae9c0d9befff80b36330f10d0` |
| 4 | `theorem` | [π_f_succ](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/f-succ--75d329b787f3f36b94eefe10.md) | 121 | `result-track:75d329b787f3f36b94eefe10d33ffc3449f9430965c70dc63e599ce1ed053087` |
| 5 | `theorem` | [complex_d_comp_π_f_zero](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/complex-d-comp-f-zero--00c4e5abdc7c89b9717643c3.md) | 128 | `result-track:00c4e5abdc7c89b9717643c3f1f552514a285c2ededac99ad6ad6253fa33b181` |
| 6 | `theorem` | [complex_d_succ_comp](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/complex-d-succ-comp--fda650ce93106a7241b1727a.md) | 135 | `result-track:fda650ce93106a7241b1727ac4b200ca6368d8e2709a376e0308eca7392e3063` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/instance--1ca0e80267fb902d57761279.md) | 141 | `declaration-track:1ca0e80267fb902d577612792e3f2947ac817747a03b190c708603bb8fc09410` |
| 8 | `def` | [self](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/self--4f630b34d16f312a7be1ff91.md) | 145 | `declaration-track:4f630b34d16f312a7be1ff912f7a1dfb0f790f2caef719f4545f9c9817d5d5b5` |
| 9 | `def` | [liftZero](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/liftzero--7476b86a6b36bf7213874fd7.md) | 167 | `declaration-track:7476b86a6b36bf7213874fd79789388ab5d1d21b4ec90845b2cc2201fd7417db` |
| 10 | `def` | [liftOne](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/liftone--10c190d1f56ce6c956ce06d8.md) | 174 | `declaration-track:10c190d1f56ce6c956ce06d83f48588bed2a0333350bbb71cff6c39cbd09d03e` |
| 11 | `theorem` | [liftOne_zero_comm](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/liftone-zero-comm--1907b01c25034124fd9acbac.md) | 183 | `result-track:1907b01c25034124fd9acbac97fc64f75aa29b2cb6dbdb6bf30a46b9e8187246` |
| 12 | `def` | [liftSucc](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/liftsucc--959ff489c86a1e8b07262655.md) | 192 | `declaration-track:959ff489c86a1e8b072626559e803cf2557c15b9e546b9533b2174f2f025e149` |
| 13 | `def` | [lift](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/lift--cd54d18cae38ab9b2ea61d5b.md) | 203 | `declaration-track:cd54d18cae38ab9b2ea61d5ba62cda27c380e0bb42022d15c129a6a68e96aafa` |
| 14 | `theorem` | [lift_commutes](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/lift-commutes--c03722b80657f9fb7902d5ac.md) | 212 | `result-track:c03722b80657f9fb7902d5ac3121242fc3380e1cdba4516ddced7ad18af4abf6` |
| 15 | `def` | [liftHomotopyZeroZero](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/lifthomotopyzerozero--b53624cff6fbff9e2e7c9698.md) | 229 | `declaration-track:b53624cff6fbff9e2e7c9698dd52fa135d45550fcc317bce6bb0ba63be1e39ba` |
| 16 | `def` | [liftHomotopyZeroOne](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/lifthomotopyzeroone--428dc783773aa2cbc1cfad7a.md) | 237 | `declaration-track:428dc783773aa2cbc1cfad7a5b8d40f2daa9f99545a4f57a9683f93edca70248` |
| 17 | `def` | [liftHomotopyZeroSucc](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/lifthomotopyzerosucc--cb6aa57ad6697c83e3fd73b5.md) | 245 | `declaration-track:cb6aa57ad6697c83e3fd73b54723042ccb1cc9ec7068377bb3dad7c372c578a9` |
| 18 | `def` | [liftHomotopyZero](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/lifthomotopyzero--60d7b864d789884942a6d0b8.md) | 256 | `declaration-track:60d7b864d789884942a6d0b837058eb35647a7665e1f92376ddbfb2cf47741f3` |
| 19 | `def` | [liftHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/lifthomotopy--f569c11b4346a918b1056749.md) | 265 | `declaration-track:f569c11b4346a918b10567493bf83526249d8bf3d9adacfcf8cbc0af7e0a017a` |
| 20 | `def` | [liftIdHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/liftidhomotopy--b0cceb19cbf57337b21bbb91.md) | 273 | `declaration-track:b0cceb19cbf57337b21bbb91eff13394c89cc9cbbb3dea8da15b7ef1950bf95c` |
| 21 | `def` | [liftCompHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/liftcomphomotopy--490b52549902fd9ce202cccb.md) | 279 | `declaration-track:490b52549902fd9ce202cccb4b3fe14183194e0187f76a6eefd2f80d85cd3352` |
| 22 | `def` | [homotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/homotopyequiv--f27784e4952870f145a8655c.md) | 288 | `declaration-track:f27784e4952870f145a8655c67e2cd0af3d1b94ac0fd152909fc2c1fdc71053e` |
| 23 | `theorem` | [homotopyEquiv_hom_π](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/homotopyequiv-hom--a6a78365c4f30235117e535b.md) | 303 | `result-track:a6a78365c4f30235117e535b0d226cfc2a5297775d44e0fac66a7f9e4c606147` |
| 24 | `theorem` | [homotopyEquiv_inv_π](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/homotopyequiv-inv--8e484dac33bb23fd4dd1bd7f.md) | 309 | `result-track:8e484dac33bb23fd4dd1bd7f91f2788dd6dce97cb7e536828e1dfd0cb931a9dc` |
| 25 | `def` | [projectiveResolution](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/projectiveresolution--e7de5cd352fbb39f1d92f4cd.md) | 320 | `declaration-track:e7de5cd352fbb39f1d92f4cd580c4a974d5b72add1aece2ccc07e81cd62f54ba` |
| 26 | `abbrev` | [projectiveResolution.complex](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/projectiveresolution-complex--43ac75b263b4d024491ef856.md) | 328 | `declaration-track:43ac75b263b4d024491ef85602199e45154a488e4175a57e82522ff3fd4b8519` |
| 27 | `abbrev` | [projectiveResolution.π](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/projectiveresolution--1498f7381398052f797eda07.md) | 335 | `declaration-track:1498f7381398052f797eda0729e76a371a6a23abc750c7aba541e03c926012da` |
| 28 | `abbrev` | [projectiveResolution.lift](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/projectiveresolution-lift--97cc381febec994af12e3efd.md) | 341 | `declaration-track:97cc381febec994af12e3efdaf23cdcb76e34c4daf1431bdd5d19e1c03e86eab` |
| 29 | `def` | [projectiveResolutions](../../../../../mathematics/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/declarations/projectiveresolutions--cb9eaf73be8d6399f26dfe81.md) | 357 | `declaration-track:cb9eaf73be8d6399f26dfe81b886c6e0fc92b34dc8fa35fed8e17d5d3904a9c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
