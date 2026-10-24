# Verification target: GRWTSK.Topology.GeneralTopology.Lattice.Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f68967562ff6b746454de696ade62572b8d8f78",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f68967562ff6b746454de696ade62572b8d8f78`.

Source path: `GRWTSK/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Rat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Lattice` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasSolidNorm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/hassolidnorm--01818061ef31ee81182411f0.md) | 43 | `declaration-track:01818061ef31ee81182411f038dd96ac2869ffb81e2e282557b92a175b7e510d` |
| 2 | `theorem` | [norm_le_norm_of_abs_le_abs](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/norm-le-norm-of-abs-le-abs--2c56a0fa7cc5ebaff3e090ed.md) | 48 | `result-track:2c56a0fa7cc5ebaff3e090ed680610fab197eba5bd298244951a9bc3f9892016` |
| 3 | `theorem` | [LatticeOrderedAddCommGroup.isSolid_ball](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/latticeorderedaddcommgroup-issolid-ball--4905884ba592cf66a6284828.md) | 52 | `result-track:4905884ba592cf66a6284828e02e3cf22b7f0361e12bd6dc4fb29d48a167a9b1` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/instance--813ee6021306361f5bdc3be2.md) | 56 | `declaration-track:813ee6021306361f5bdc3be2b6a59d628d290f88ea33f2934deab922a2e22a9d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/instance--6a39b2248e2defb83d271130.md) | 58 | `declaration-track:6a39b2248e2defb83d27113039f79bb1743ea8f078847038086124461b36bad8` |
| 6 | `structure` | [NormedLatticeAddCommGroup](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/normedlatticeaddcommgroup--108ff04c2fb2abe118f7aac8.md) | 71 | `declaration-track:108ff04c2fb2abe118f7aac8f03567179faae137f04578591d12b9f710d73fd3` |
| 7 | `instance` | [Int.hasSolidNorm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/int-hassolidnorm--84df6cb87d9a5093dd9bc22b.md) | 75 | `declaration-track:84df6cb87d9a5093dd9bc22bd14c07eecbbdb778a82aeb017f75cdd3f3d4b825` |
| 8 | `instance` | [Rat.hasSolidNorm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/rat-hassolidnorm--12585d2ba41c8d51605a39c2.md) | 78 | `declaration-track:12585d2ba41c8d51605a39c2cd4f760f50dd31080bdfe728defb701a6c85c4e3` |
| 9 | `theorem` | [dual_solid](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/dual-solid--4e848de01f2a15c299837d8b.md) | 85 | `result-track:4e848de01f2a15c299837d8bcbd44c6a82332b77be1d35f58f2e48adc176bca4` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/instance--dba4eb808034d59a105d0cfa.md) | 98 | `declaration-track:dba4eb808034d59a105d0cfa54780fb22b7305eebe53f79213f62399b0f299c8` |
| 11 | `theorem` | [norm_abs_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/norm-abs-eq-norm--c9077aa9ded0ffd278a100c6.md) | 102 | `result-track:c9077aa9ded0ffd278a100c6c8d870c8993eb5942e88cc99b1107045943283e4` |
| 12 | `theorem` | [norm_inf_sub_inf_le_add_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/norm-inf-sub-inf-le-add-norm--0ebb3e7efe81657793aaf2e6.md) | 105 | `result-track:0ebb3e7efe81657793aaf2e61e4b08be9333d6af40cb1c9efc2cfb42fa9cfaca` |
| 13 | `theorem` | [norm_sup_sub_sup_le_add_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/norm-sup-sub-sup-le-add-norm--a57826d415360cce94440136.md) | 118 | `result-track:a57826d415360cce94440136372127b086504f1b4b276387b800b66275419c1b` |
| 14 | `theorem` | [norm_inf_le_add](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/norm-inf-le-add--2b5fde1acaaaabbbb9318619.md) | 131 | `result-track:2b5fde1acaaaabbbb9318619ef3b341a269fcced1e2b4a19c3890dc799f7c786` |
| 15 | `theorem` | [norm_sup_le_add](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/norm-sup-le-add--33c2aa0b76c1f765780e066e.md) | 135 | `result-track:33c2aa0b76c1f765780e066e58a75d611bfdc1448b1cca9d9fa005f436f31d4a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/instance--abaf5fe36a1bf991b56aaf59.md) | 142 | `declaration-track:abaf5fe36a1bf991b56aaf598e4f22c0c79d0c2e5dde8bcec10c46b15025e1fd` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/instance--a2bc8781281028f3bf972b6b.md) | 152 | `declaration-track:a2bc8781281028f3bf972b6b50ebb4c93f491e44f06c9d11dd92278ec9657bb0` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/instance--955a93ad01ea149162ecfec6.md) | 160 | `declaration-track:955a93ad01ea149162ecfec6648b68be0fa681a6047b940d100a51f2a854789c` |
| 19 | `theorem` | [norm_abs_sub_abs](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/norm-abs-sub-abs--d27e0632f1d67711b8bb7a7c.md) | 163 | `result-track:d27e0632f1d67711b8bb7a7c7b8145650aac918fb101a1bef0c5b6fd495429c2` |
| 20 | `theorem` | [norm_sup_sub_sup_le_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/norm-sup-sub-sup-le-norm--fd6e7802717cd15b494ac81f.md) | 165 | `result-track:fd6e7802717cd15b494ac81f329de93cb0e2b564da8e21757b0e86c8b91d7b97` |
| 21 | `theorem` | [norm_inf_sub_inf_le_norm](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/norm-inf-sub-inf-le-norm--438edadf2dab06cc1cdb912f.md) | 168 | `result-track:438edadf2dab06cc1cdb912f55f76fedb900ce640bf2f44f03ae18540042a7ce` |
| 22 | `theorem` | [lipschitzWith_sup_right](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/lipschitzwith-sup-right--ce0d8cab7b9a9717659b019f.md) | 171 | `result-track:ce0d8cab7b9a9717659b019f19bec6fc708af47f3db0ff28877c3e2606ab5e92` |
| 23 | `lemma` | [lipschitzWith_posPart](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/lipschitzwith-pospart--6c07d2dd620efe1a93fd4a5b.md) | 176 | `result-track:6c07d2dd620efe1a93fd4a5b3defb326a7f92d5ebf57ecd7ef6cec4ccc67e66b` |
| 24 | `lemma` | [lipschitzWith_negPart](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/lipschitzwith-negpart--700fe70096d1813425bd3d84.md) | 179 | `result-track:700fe70096d1813425bd3d841c524be7a341108060d60686d3a40925b02d6ef8` |
| 25 | `lemma` | [continuous_posPart](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/continuous-pospart--fa563afb529b761185898dd2.md) | 183 | `result-track:fa563afb529b761185898dd23ef487bb6d2730fda767b54a7c59810eeac73e11` |
| 26 | `lemma` | [continuous_negPart](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/continuous-negpart--ea719448af81276835f03400.md) | 186 | `result-track:ea719448af81276835f0340058404ffe9caa04fd1b7b44b3a900dfda0472d802` |
| 27 | `lemma` | [isClosed_nonneg](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/isclosed-nonneg--e77bef988a2ff75930b9e04a.md) | 188 | `result-track:e77bef988a2ff75930b9e04a2938eaaf4310d88480699be73fb63015abf6a125` |
| 28 | `theorem` | [isClosed_le_of_isClosed_nonneg](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/isclosed-le-of-isclosed-nonneg--853df29b04e157431cc842d0.md) | 193 | `result-track:853df29b04e157431cc842d0d691be82bb096ba203e6987f27ec1c504eb26cff` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variantc22c5dfd45c1e505dfbb6a473bd9a9d50ecedba75bdfc0faa2778add4894527c.lean/declarations/instance--a4b8ff1e44ad67c9da6fef07.md) | 203 | `declaration-track:a4b8ff1e44ad67c9da6fef070759ea93d5d0c29ef5e461ebf724955412281870` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
