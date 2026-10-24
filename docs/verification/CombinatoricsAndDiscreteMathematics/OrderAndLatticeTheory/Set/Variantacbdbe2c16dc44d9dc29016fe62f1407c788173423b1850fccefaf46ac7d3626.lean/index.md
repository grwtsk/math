# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Set.Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "569dbbfdaec3806e522bc0201961eac03fd68fb3",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `569dbbfdaec3806e522bc0201961eac03fd68fb3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MinImports` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/sumequiv--f1626d30154d8fafa8d8d4c3.md) | 24 | `declaration-track:f1626d30154d8fafa8d8d4c36614df3d8d21d04d98605e476ab3421fa0dcb8ea` |
| 2 | `theorem` | [range_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/range-eq--0d1844e0417986bc887a0142.md) | 40 | `result-track:0d1844e0417986bc887a01426e6ad4a768e7b0d95b9c6eba638d9fcaa74a0fb7` |
| 3 | `theorem` | [symm_image_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/symm-image-image--2245ed4b6a900232ad9aa749.md) | 44 | `result-track:2245ed4b6a900232ad9aa7491a78183224c9602ebefb12e67657e8a9ed947067` |
| 4 | `theorem` | [image_symm_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/image-symm-image--06495dad60f4dc66973c6bad.md) | 48 | `result-track:06495dad60f4dc66973c6bad74ead9153d167ea4c0103eb45d179364ea169a14` |
| 5 | `theorem` | [image_eq_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/image-eq-preimage--ec6cab521d81e83fca2bc1c3.md) | 51 | `result-track:ec6cab521d81e83fca2bc1c33b3f46a0815443d0b075900a70a87df0fa7300a5` |
| 6 | `theorem` | [preimage_symm_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/preimage-symm-preimage--1cd01fc1da3294f4b149ccbc.md) | 55 | `result-track:1cd01fc1da3294f4b149ccbcca9bfbec93e52f7b57798f4fc145d7f26439d77c` |
| 7 | `theorem` | [symm_preimage_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/symm-preimage-preimage--ab66406b3f526890a9db8c2a.md) | 59 | `result-track:ab66406b3f526890a9db8c2a1d3b1680cbddfd1d80ff643915929a4221fcbb70` |
| 8 | `theorem` | [image_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/image-preimage--c79f27db8472f3ff3a418bfc.md) | 63 | `result-track:c79f27db8472f3ff3a418bfcd413a9a2b08ec665715fcb43a337bc69466f3d48` |
| 9 | `theorem` | [preimage_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/preimage-image--3fecff37d8be11d192e95bf1.md) | 67 | `result-track:3fecff37d8be11d192e95bf1df2011566c07233a2802a10b52dd01b78a3c7d38` |
| 10 | `def` | [setCongr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/setcongr--0099a3a7eba11c6257329f70.md) | 77 | `declaration-track:0099a3a7eba11c6257329f70539e04cb41449caeeac700fe4754f1ff06b3935d` |
| 11 | `def` | [Set.univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/set-univ--838a1c759566ee6d6c9c1586.md) | 83 | `declaration-track:838a1c759566ee6d6c9c1586ebadad7209ce75b0811cd46b09ce9a49b84d4e73` |
| 12 | `def` | [OrderEmbedding.orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/orderembedding-orderiso--89f3033210b54f1d575aa27a.md) | 91 | `declaration-track:89f3033210b54f1d575aa27a1bb4eb30385f5cf7188a21b2b694b953a61465b7` |
| 13 | `def` | [StrictMonoOn.orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/strictmonoon-orderiso--879397e6e0215d2529e96264.md) | 98 | `declaration-track:879397e6e0215d2529e96264e7c3a354e625fe63c01efdbff3a5e29391f890ed` |
| 14 | `def` | [orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/orderiso--6f16cde4dee80514efdddb0a.md) | 112 | `declaration-track:6f16cde4dee80514efdddb0a9d11206e908aa7813597f6aaab6729301e688ab6` |
| 15 | `def` | [orderIsoOfSurjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/orderisoofsurjective--9b870708fd8bd1d3739a16d1.md) | 118 | `declaration-track:9b870708fd8bd1d3739a16d165c52edfa72e92a307ec815d9d765e8ec669bd89` |
| 16 | `theorem` | [coe_orderIsoOfSurjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/coe-orderisoofsurjective--60c25215bb3b7d380881bdff.md) | 123 | `result-track:60c25215bb3b7d380881bdffd8356853611c87d6d7a905f46d8d4f3c0b913262` |
| 17 | `theorem` | [orderIsoOfSurjective_symm_apply_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/orderisoofsurjective-symm-apply-self--4d5fdf04e5d6bec8e485349e.md) | 127 | `result-track:4d5fdf04e5d6bec8e485349e2fafa767c9aa1356478d8894bafea0c0d7ea1423` |
| 18 | `theorem` | [orderIsoOfSurjective_self_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/orderisoofsurjective-self-symm-apply--c5f27135fc957f0bce7371bc.md) | 131 | `result-track:c5f27135fc957f0bce7371bc9d26dc209b2b9f360d95eaa5ca4b4fc24738586e` |
| 19 | `lemma` | [OrderEmbedding.range_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/orderembedding-range-inj--fe9520fc20af34936840fa85.md) | 138 | `result-track:fe9520fc20af34936840fa850ee4a3b8005f9ef8acb1a788e12fae09afef351c` |
| 20 | `instance` | [subsingleton_of_wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/subsingleton-of-wellfoundedlt--8e04898db461918e6c0793ba.md) | 147 | `declaration-track:8e04898db461918e6c0793ba87a98c6f810738fd75f42c49b86b5e09b5463f51` |
| 21 | `instance` | [subsingleton_of_wellFoundedLT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/subsingleton-of-wellfoundedlt--a319e724da8b6e19c6136e11.md) | 153 | `declaration-track:a319e724da8b6e19c6136e119f6151e0288c71fd6b7b291e27751b749f58e35c` |
| 22 | `instance` | [unique_of_wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/unique-of-wellfoundedlt--ba62cc849015d22d7dd3c3e0.md) | 159 | `declaration-track:ba62cc849015d22d7dd3c3e046646588de28e2e6788c2ae6e600660909cbd652` |
| 23 | `instance` | [subsingleton_of_wellFoundedGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/subsingleton-of-wellfoundedgt--1cea83d9a513ec3079ffe1dc.md) | 161 | `declaration-track:1cea83d9a513ec3079ffe1dcf4147f821e10a8490b9d2f12511454865f47d2cf` |
| 24 | `instance` | [subsingleton_of_wellFoundedGT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/subsingleton-of-wellfoundedgt--862700cc0c7edda041dac823.md) | 167 | `declaration-track:862700cc0c7edda041dac8239eec0a5a4975b4d7b54286c2f38812324a4341f1` |
| 25 | `instance` | [unique_of_wellFoundedGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/unique-of-wellfoundedgt--42dcd77c7b325aa4fd65eac2.md) | 173 | `declaration-track:42dcd77c7b325aa4fd65eac26bfc4b78052f6d6e27e14dd67b2d346d337eb21c` |
| 26 | `def` | [Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/iic--027a9efc1b2841afdec2da27.md) | 177 | `declaration-track:027a9efc1b2841afdec2da274771fd861cbe9c3418eba0d126c069e2fe2fca1e` |
| 27 | `def` | [Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/ici--6ad3c0c3f898622e7dfdee95.md) | 187 | `declaration-track:6ad3c0c3f898622e7dfdee95e19f0e9ca76f686f20842c7eeee03501c7fec65c` |
| 28 | `def` | [Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/icc--b6ac9041e5cd852b0daa1a84.md) | 197 | `declaration-track:b6ac9041e5cd852b0daa1a844826b4145f637cd3d3d7de03dff2784ea2c31640` |
| 29 | `def` | [OrderIso.compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/orderiso-compl--3d16410359aa09a01939b6fa.md) | 213 | `declaration-track:3d16410359aa09a01939b6faa98d74838261fef169a19d5f0db91476bc887d99` |
| 30 | `theorem` | [compl_strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/compl-strictanti--6c1c2bbdd4905758fff7c3c2.md) | 220 | `result-track:6c1c2bbdd4905758fff7c3c24598bab5c65491abbb9b6e7da65d51fd07d05678` |
| 31 | `theorem` | [compl_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/declarations/compl-antitone--5b17184b0d002c8a21bca350.md) | 223 | `result-track:5b17184b0d002c8a21bca350e29108c79435966e9c166d74e87ab4b8d8e852b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
