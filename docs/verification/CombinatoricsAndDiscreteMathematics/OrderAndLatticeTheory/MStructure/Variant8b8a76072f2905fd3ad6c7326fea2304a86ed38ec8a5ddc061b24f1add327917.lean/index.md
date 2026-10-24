# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MStructure.Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04757611a8c9b49f0a16dcf00f59c2572cf9fff2",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04757611a8c9b49f0a16dcf00f59c2572cf9fff2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Idempotents` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsLprojection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/islprojection--6ce40fef3915aa265ff0865b.md) | 75 | `declaration-track:6ce40fef3915aa265ff0865baedf054c3402f9a558bc7512280794d55bf1ea59` |
| 2 | `structure` | [IsMprojection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/ismprojection--2789ec9a996af8833223b806.md) | 85 | `declaration-track:2789ec9a996af8833223b806a68843e75c2b2b22546c600f8a38df9d2d889a1b` |
| 3 | `theorem` | [Lcomplement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/lcomplement--7b8f141079a3a5ed38207ede.md) | 95 | `result-track:7b8f141079a3a5ed38207ede8f317df331a8d6f0ad9d51c458deb0c61075a0e5` |
| 4 | `theorem` | [Lcomplement_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/lcomplement-iff--203b3825b73e145bd3b299f4.md) | 101 | `result-track:203b3825b73e145bd3b299f436f33640b14a6863923e0ad1982f66207bcb8d34` |
| 5 | `theorem` | [commute](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/commute--4fc605bc60ade639fb3ec183.md) | 105 | `result-track:4fc605bc60ade639fb3ec183a96a936065445956f6c54e4ad31a7277b7231254` |
| 6 | `theorem` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/mul--a10b289ac1db956c09390f1e.md) | 147 | `result-track:a10b289ac1db956c09390f1e93186e433d32692628451bc746e92c21db646bfd` |
| 7 | `theorem` | [join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/join--ba123fec633332221d68ccbd.md) | 165 | `result-track:ba123fec633332221d68ccbd662bf140250a30ef0ea8e63afd325ddb1ed51918` |
| 8 | `instance` | [Subtype.hasCompl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/subtype-hascompl--736f14f7a664f60c0b7b542a.md) | 173 | `declaration-track:736f14f7a664f60c0b7b542a127a05870d50a838422627e6e2958e764aba6ef4` |
| 9 | `theorem` | [coe_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/coe-compl--1e6f93c03ef8303d84a6586c.md) | 177 | `result-track:1e6f93c03ef8303d84a6586c2e108194f087896eaa3876ad31c5897e6b95e88e` |
| 10 | `instance` | [Subtype.inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/subtype-inf--c9b2df7ee384e9ba7185a9db.md) | 181 | `declaration-track:c9b2df7ee384e9ba7185a9dbe9de504ad182634135f869471968632346affafd` |
| 11 | `theorem` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/coe-inf--f4c85cffbffa47c8aa15c0fd.md) | 185 | `result-track:f4c85cffbffa47c8aa15c0fd745ae9cd4331709a0603fe52877cc60f66a4f1d1` |
| 12 | `instance` | [Subtype.sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/subtype-sup--956d1288d060e0d144a7a3a3.md) | 190 | `declaration-track:956d1288d060e0d144a7a3a374e27b9c730c995ee5aedca95cd3a56cc64eac6e` |
| 13 | `theorem` | [coe_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/coe-sup--f47ef2c095f07b40f82d2a4b.md) | 194 | `result-track:f47ef2c095f07b40f82d2a4be55cb2b2fbe1648f27a71444a239f3bc1aff6a28` |
| 14 | `instance` | [Subtype.sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/subtype-sdiff--957322c88187d6482496c0b9.md) | 199 | `declaration-track:957322c88187d6482496c0b9153ce05f8f5e117ee4dadcf4f95d045b9f5d1e60` |
| 15 | `theorem` | [coe_sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/coe-sdiff--4d0a6d80d6e1935ef4da12eb.md) | 203 | `result-track:4d0a6d80d6e1935ef4da12ebbb6e8be82c14f3a7eab1b9eae21b80c0fdec5b09` |
| 16 | `instance` | [Subtype.partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/subtype-partialorder--f20e118b96d147662fa45cc7.md) | 208 | `declaration-track:f20e118b96d147662fa45cc7ac757d9bfe67fd81d3f38ba6e77d26a79d204b9a` |
| 17 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/le-def--717d0eaecdf2f9ed411574bb.md) | 217 | `result-track:717d0eaecdf2f9ed411574bb6009eb77ccee6c5784c56ce78a33fb00f11b3bc7` |
| 18 | `instance` | [Subtype.zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/subtype-zero--9e89953007a6734824eaa0c4.md) | 222 | `declaration-track:9e89953007a6734824eaa0c472f74b10a0be826ce8f6214b41da0a1d280b0521` |
| 19 | `theorem` | [coe_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/coe-zero--5eb8e12d9da86d316f4b11eb.md) | 227 | `result-track:5eb8e12d9da86d316f4b11ebc0e5f040ca4a9abd158e925acce23fb4768b7970` |
| 20 | `instance` | [Subtype.one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/subtype-one--54bbc25e2e45d81d352bf986.md) | 231 | `declaration-track:54bbc25e2e45d81d352bf986a3c67fad108c2f2d8060fd8874f7bd4ec7a800ed` |
| 21 | `theorem` | [coe_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/coe-one--cc3c86403a46aeebf5af57b7.md) | 235 | `result-track:cc3c86403a46aeebf5af57b79518a3334d47675ce62444b30a800e837ca4d4ab` |
| 22 | `instance` | [Subtype.boundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/subtype-boundedorder--ced73f63edb277bd5ff6601b.md) | 239 | `declaration-track:ced73f63edb277bd5ff6601b4dc2bb37001ceb13fd4557415fa5a564453d7144` |
| 23 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/coe-bot--a403b30e990fd55402ba95b0.md) | 247 | `result-track:a403b30e990fd55402ba95b0cff30f7016195e9ca660be755759c57cc8f61f06` |
| 24 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/coe-top--a5ab706a471f6ab26412bfb3.md) | 254 | `result-track:a5ab706a471f6ab26412bfb3d8e570a0486b1da3767313cead64d57ee7e70239` |
| 25 | `theorem` | [compl_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/compl-mul--aadc0c75cab818d926c1059d.md) | 260 | `result-track:aadc0c75cab818d926c1059da7677cfc0c1571b5a4f5b6d7c9cedf17bcb8dae6` |
| 26 | `theorem` | [mul_compl_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/mul-compl-self--33ff1ac4c9259a326efdcdfc.md) | 264 | `result-track:33ff1ac4c9259a326efdcdfc6e9a3b073a784a537bea5986b1e77fd1b7ac0af3` |
| 27 | `theorem` | [distrib_lattice_lemma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/distrib-lattice-lemma--9913ab82adbe48be28bacc30.md) | 268 | `result-track:9913ab82adbe48be28bacc30a3b18d56fc1b9b40b6ed30bcce9679c5baee28bd` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/instance--608da828d735afee3bf1b341.md) | 283 | `declaration-track:608da828d735afee3bf1b341d7442536bd7a6739de8c8437657f8cc9055a43bf` |
| 29 | `instance` | [Subtype.distribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/subtype-distriblattice--2a6dc2f031d631788464fd23.md) | 304 | `declaration-track:2a6dc2f031d631788464fd23f3a9e567310e78123382ead347c88ef4c3b89b70` |
| 30 | `instance` | [Subtype.BooleanAlgebra](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/declarations/subtype-booleanalgebra--cab4fe3eb8492732ceed9af8.md) | 319 | `declaration-track:cab4fe3eb8492732ceed9af8dd72961899c552d1c5610499cff4734ccb830f07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
