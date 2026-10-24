# Verification target: GRWTSK.Topology.GeneralTopology.Content.Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d541fbc6900566162eae4801fceb6aea2c874a8c",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d541fbc6900566162eae4801fceb6aea2c874a8c`.

Source path: `GRWTSK/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Content](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/content--ab9fde8fdd09f8763bccdc95.md) | 67 | `declaration-track:ab9fde8fdd09f8763bccdc9549b27f7e415d843d8f554c3cfae88c87255b5ded` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/instance--9e6f1d7316281f9e3eb36bb4.md) | 75 | `declaration-track:9e6f1d7316281f9e3eb36bb413034bbde38253aad1c84160ed9889e51b94a01f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/instance--124d8063909568bc1c2dfae2.md) | 84 | `declaration-track:124d8063909568bc1c2dfae291b715cae883e08ebd3df58ba6cc61743c819dc3` |
| 4 | `theorem` | [apply_eq_coe_toFun](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/apply-eq-coe-tofun--634faa691036133cace225c7.md) | 91 | `result-track:634faa691036133cace225c7329742a4ae783205cfd54344bf90038109c851ad` |
| 5 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/mono--6b42b20aede0fd49241e486b.md) | 95 | `result-track:6b42b20aede0fd49241e486b01a108c00e5138ffac86cb8045780ce058435f99` |
| 6 | `theorem` | [sup_disjoint](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/sup-disjoint--8bd121d5f58ca2ae255ce521.md) | 99 | `result-track:8bd121d5f58ca2ae255ce5219d1cc4fdb228498e54fb3eda0df10edfe99788a3` |
| 7 | `theorem` | [sup_le](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/sup-le--5ff527852d469da0bae148ba.md) | 104 | `result-track:5ff527852d469da0bae148ba6719a7a66d99a60cbf0333c0536e11c895ebe3eb` |
| 8 | `theorem` | [lt_top](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/lt-top--1b506e6a9003350c4333c909.md) | 110 | `result-track:1b506e6a9003350c4333c909889430977fcf8868b3305a76af0c59d7b5ae6492` |
| 9 | `theorem` | [empty](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/empty--763cdbe036808c8a76142478.md) | 114 | `result-track:763cdbe036808c8a761424784998aef3d10a321f79162bdefabeaa26943337e7` |
| 10 | `def` | [innerContent](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/innercontent--52eabb9151d632a355fb54d5.md) | 122 | `declaration-track:52eabb9151d632a355fb54d5230c029c85f7bb5890d4819cbe28531fbb4ecfed` |
| 11 | `theorem` | [le_innerContent](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/le-innercontent--1dcacf3b71d54eff1233c1eb.md) | 126 | `result-track:1dcacf3b71d54eff1233c1eb1373f7189caa38e11306894a273d642b0ef99560` |
| 12 | `theorem` | [innerContent_le](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/innercontent-le--c7748f1dfbcc6c884c9a8216.md) | 131 | `result-track:c7748f1dfbcc6c884c9a8216cf0ec0116fd15bdd13d8be98c7715287a3f55358` |
| 13 | `theorem` | [innerContent_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/innercontent-of-iscompact--4acc3ae2fc238111e3e9d340.md) | 136 | `result-track:4acc3ae2fc238111e3e9d340f781d8f148c7663e03f32cdc2efbeb94ea09a182` |
| 14 | `theorem` | [innerContent_bot](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/innercontent-bot--1034597a92716aac471bb0f2.md) | 141 | `result-track:1034597a92716aac471bb0f2ea07d9426162c1f85d93f45899bc2a5c4c0b1a41` |
| 15 | `theorem` | [innerContent_mono](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/innercontent-mono--a9f3e5ecd01b5fc8577ef178.md) | 152 | `result-track:a9f3e5ecd01b5fc8577ef178f6d61e2dc1b09c9816239b7591b308edda4973a3` |
| 16 | `theorem` | [innerContent_exists_compact](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/innercontent-exists-compact--9a50ee8c20c9918ad7b729bb.md) | 157 | `result-track:9a50ee8c20c9918ad7b729bbd15a6333542ba708ebf3dc4e8ec7393069043cc9` |
| 17 | `theorem` | [innerContent_iSup_nat](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/innercontent-isup-nat--dc8ff69bec8c491de7b0567b.md) | 170 | `result-track:dc8ff69bec8c491de7b0567b0be8f1b0b1893113b1d93d6cd0ba5c4d0923fc88` |
| 18 | `theorem` | [innerContent_iUnion_nat](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/innercontent-iunion-nat--2dbb3281c218a4c27a27e7f1.md) | 199 | `result-track:2dbb3281c218a4c27a27e7f1eea8e36cb1ac9786bdac67ffcb3c7820bd675416` |
| 19 | `theorem` | [innerContent_comap](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/innercontent-comap--cafc1fa2b83b914cbea4c892.md) | 205 | `result-track:cafc1fa2b83b914cbea4c892ad6280ab0f34dbcf3b6e80ac648dacf2655525b5` |
| 20 | `theorem` | [is_mul_left_invariant_innerContent](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/is-mul-left-invariant-innercontent--4adde1a97579bb8b46d7587d.md) | 214 | `result-track:4adde1a97579bb8b46d7587d030a11dc92687828dc359bcd2333e446d4f18320` |
| 21 | `theorem` | [innerContent_pos_of_is_mul_left_invariant](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/innercontent-pos-of-is-mul-left-invariant--4274156347ff5316db6742e0.md) | 223 | `result-track:4274156347ff5316db6742e0b507485cefce82fbfd92f4aed2ea5d3a5629171d` |
| 22 | `theorem` | [innerContent_mono'](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/innercontent-mono--65205a1727ce14e7a55e2265.md) | 240 | `result-track:65205a1727ce14e7a55e2265324b03f99b82097b0268d5f4eb0ca649899cb1fd` |
| 23 | `def` | [outerMeasure](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/outermeasure--63c498b066b1284dcf4d6217.md) | 248 | `declaration-track:63c498b066b1284dcf4d6217d1873600b205d90f23633c30d8c028e5c4c1710a` |
| 24 | `theorem` | [outerMeasure_opens](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/outermeasure-opens--d131a251c809915749899981.md) | 254 | `result-track:d131a251c8099157498999817f1d7079d3dec63717063ffe3fa7125951c0ba34` |
| 25 | `theorem` | [outerMeasure_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/outermeasure-of-isopen--65f7a5310753c971b9735d6f.md) | 258 | `result-track:65f7a5310753c971b9735d6f0c8aa407f2aff11886fff551ebe1f9951a3d93c6` |
| 26 | `theorem` | [outerMeasure_le](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/outermeasure-le--c456cad13bc8a091b995813f.md) | 263 | `result-track:c456cad13bc8a091b995813f11bf74477f09329e4d09d24aa9f83a7f82fb51b3` |
| 27 | `theorem` | [le_outerMeasure_compacts](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/le-outermeasure-compacts--1875eb77e3bc96fb8c0b5de2.md) | 268 | `result-track:1875eb77e3bc96fb8c0b5de2de3262584cbc99b3997fe1ff91be92c3ed9cadb9` |
| 28 | `theorem` | [outerMeasure_eq_iInf](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/outermeasure-eq-iinf--ac49f9320ff1e1a74f9f47b2.md) | 276 | `result-track:ac49f9320ff1e1a74f9f47b2395ac5941df7d251703a4705d213d2c50bfafc00` |
| 29 | `theorem` | [outerMeasure_interior_compacts](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/outermeasure-interior-compacts--0a44e68d8c0796e76baf51bb.md) | 281 | `result-track:0a44e68d8c0796e76baf51bb2f85a1f6f5e653ba876dfdf3530f8b27fb3e52b2` |
| 30 | `theorem` | [outerMeasure_exists_compact](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/outermeasure-exists-compact--ebfa0970eebdbb8d2081d13e.md) | 285 | `result-track:ebfa0970eebdbb8d2081d13e617e62edf46c24059945a663451c4f4ea067334e` |
| 31 | `theorem` | [outerMeasure_exists_open](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/outermeasure-exists-open--45f8c11ba42dd05d95973092.md) | 292 | `result-track:45f8c11ba42dd05d9597309210a1d5722e46b79da333108f0d96b4780ffc36f0` |
| 32 | `theorem` | [outerMeasure_preimage](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/outermeasure-preimage--9eac243fc58153afab041bd0.md) | 300 | `result-track:9eac243fc58153afab041bd041732e7567a1da71d64cc760390959217715cae9` |
| 33 | `theorem` | [outerMeasure_lt_top_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/outermeasure-lt-top-of-iscompact--e1cbe29c322a32a24f8f106e.md) | 308 | `result-track:e1cbe29c322a32a24f8f106e6bf7615c5318c5c928327941166d180978b089da` |
| 34 | `theorem` | [is_mul_left_invariant_outerMeasure](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/is-mul-left-invariant-outermeasure--ab4f910ea3b6ef83035c885f.md) | 319 | `result-track:ab4f910ea3b6ef83035c885ff23d2270b6ccd741ed11cb0ead423759ab901eeb` |
| 35 | `theorem` | [outerMeasure_caratheodory](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/outermeasure-caratheodory--acc03b9bcbcaeea0bddf428a.md) | 326 | `result-track:acc03b9bcbcaeea0bddf428af76e33e44cb926bc31115887d30ccfb05c5dc78e` |
| 36 | `theorem` | [outerMeasure_pos_of_is_mul_left_invariant](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/outermeasure-pos-of-is-mul-left-invariant--77b3bcfc61cb3e692bfd9e24.md) | 336 | `result-track:77b3bcfc61cb3e692bfd9e240edf3f441dd0abdae6534df6fa6de70812acbaa7` |
| 37 | `theorem` | [borel_le_caratheodory](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/borel-le-caratheodory--0bee20768c215765ffc8940d.md) | 347 | `result-track:0bee20768c215765ffc8940daf8ecb7d17c5ccf313e774b1c65e84dd70a768fc` |
| 38 | `def` | [measure](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/measure--087ad5493f57eccab782fd9b.md) | 379 | `declaration-track:087ad5493f57eccab782fd9be66c5d2b6715dbbdb1f3bf44a9bb6c08fc5bf5cd` |
| 39 | `theorem` | [measure_apply](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/measure-apply--c37524b2c1bd9a1825a5b817.md) | 383 | `result-track:c37524b2c1bd9a1825a5b81757113a030faaeb86d009dc2dba06fc5247342a9b` |
| 40 | `instance` | [regular](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/regular--d7bf5c7ec73646ebab54641d.md) | 388 | `declaration-track:d7bf5c7ec73646ebab54641d5485fb7095978e0344f52f0b383b9c7b2017c6ac` |
| 41 | `def` | [ContentRegular](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/contentregular--8ba8c89a996274971df5e66e.md) | 414 | `declaration-track:8ba8c89a996274971df5e66e4027fe4b31b3a47761913ec2db7e8007e97d9fe2` |
| 42 | `theorem` | [contentRegular_exists_compact](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/contentregular-exists-compact--6006c2b5e2fd7a9d75793020.md) | 419 | `result-track:6006c2b5e2fd7a9d75793020035f511d0d36c2beb6047459331414db2247ef68` |
| 43 | `theorem` | [measure_eq_content_of_regular](../../../../../mathematics/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/declarations/measure-eq-content-of-regular--d35d3d5b0842ffa9f99bc5a6.md) | 436 | `result-track:d35d3d5b0842ffa9f99bc5a6ef50adfbd83eb7c0f8367ba907604c7f33525c0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
