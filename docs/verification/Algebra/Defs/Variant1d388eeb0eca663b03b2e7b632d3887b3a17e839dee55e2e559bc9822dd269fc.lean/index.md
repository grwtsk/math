# Verification target: GRWTSK.Algebra.Defs.Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5c66c7d6c099f599155f094732a2bfb83d9e3c5",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5c66c7d6c099f599155f094732a2bfb83d9e3c5`.

Source path: `GRWTSK/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Hom.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingCon](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/ringcon--f8061865cd53c440f82c1084.md) | 42 | `declaration-track:f8061865cd53c440f82c1084ca235563dc092d3df9bdba2447baf0d43c7813a2` |
| 2 | `inductive` | [RingConGen.Rel](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/ringcongen-rel--26a51a4d59cf35cba51b8943.md) | 54 | `declaration-track:26a51a4d59cf35cba51b894341b85900d90c0619609657eb9febdb13636c3b88` |
| 3 | `def` | [ringConGen](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/ringcongen--35e5306a85854cd4a9e0a541.md) | 66 | `declaration-track:35e5306a85854cd4a9e0a54145a9e37e5b89979060bd0c8dc6955e869595dca2` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--23caee44e6b41e45a473e210.md) | 79 | `declaration-track:23caee44e6b41e45a473e210b89988688646bad6ba819f0e32b75bac0aa0cd5e` |
| 5 | `theorem` | [coe_mk](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/coe-mk--b1da5c3912a9f19275930601.md) | 89 | `result-track:b1da5c3912a9f19275930601e8ad309e75756e0c313b31897090c44d90c44eca` |
| 6 | `theorem` | [rel_eq_coe](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/rel-eq-coe--5dc89bf0281b04be59b8ca48.md) | 91 | `result-track:5dc89bf0281b04be59b8ca486a63680eb357cb0a022367a34524b6fbff024fed` |
| 7 | `theorem` | [toCon_coe_eq_coe](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/tocon-coe-eq-coe--3eeaeaa9ad63ab0ab6a4612c.md) | 95 | `result-track:3eeaeaa9ad63ab0ab6a4612cf0e22e7cc222dade2134e134e94b055eff13178c` |
| 8 | `theorem` | [refl](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/refl--447c05e87783484289fef576.md) | 98 | `result-track:447c05e87783484289fef57638863866c1e24c406d34f0b16cc0ce5df6f0fa8e` |
| 9 | `theorem` | [symm](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/symm--c81c6da33829a0f69e76dd56.md) | 101 | `result-track:c81c6da33829a0f69e76dd56088fe4138835a964c0fac6a885b28a53ee27822b` |
| 10 | `theorem` | [trans](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/trans--b40d5c5cac2a4503c2143bd6.md) | 104 | `result-track:b40d5c5cac2a4503c2143bd619373447b5c650ceef9513c0a44a91d124e2f49a` |
| 11 | `theorem` | [add](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/add--0ba614ce4a11f52d75b8ed7c.md) | 107 | `result-track:0ba614ce4a11f52d75b8ed7cb46af2f0fa16cf7575a9b3d9e6cb238569f036f7` |
| 12 | `theorem` | [mul](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/mul--fee730fe5f10bc2d77d75b22.md) | 110 | `result-track:fee730fe5f10bc2d77d75b2262f219c6da8722575c5e17f8af8f11251fd5bf7c` |
| 13 | `theorem` | [sub](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/sub--8930048a5efa6bbae1897615.md) | 113 | `result-track:8930048a5efa6bbae1897615f1b7ad2770dae8fe9bf076aa14eb9905c089bc91` |
| 14 | `theorem` | [neg](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/neg--4923e0573e4aa1daa5e275a2.md) | 116 | `result-track:4923e0573e4aa1daa5e275a28ec9f95c953b6cf8e903f6804d6bed696b178112` |
| 15 | `theorem` | [nsmul](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/nsmul--bdb1ca8919e29a3104c86163.md) | 119 | `result-track:bdb1ca8919e29a3104c86163be6be8f5b6745bcce7253f8bf3ea84f6cf03e086` |
| 16 | `theorem` | [zsmul](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/zsmul--d7b319d938c09b1ddc948218.md) | 122 | `result-track:d7b319d938c09b1ddc9482186da0618bdaee58a09bcd9fca4fa0b108fe63664b` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--3646ba992c9b057d4afadce1.md) | 125 | `declaration-track:3646ba992c9b057d4afadce14eb0fe7add03af577757af1117466e67169cbee9` |
| 18 | `theorem` | [rel_mk](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/rel-mk--2bc1100c6a7d93992654c46e.md) | 129 | `result-track:2bc1100c6a7d93992654c46e9ee93bfd4c9339c1bc4de8d2c13386857ee60fb1` |
| 19 | `theorem` | [ext'](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/ext--2e009c1560f85b4d2b3a861e.md) | 133 | `result-track:2e009c1560f85b4d2b3a861e0c81db0d7d59379860d8f769b79e740b5b852910` |
| 20 | `theorem` | [ext](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/ext--a7f063f02cd2b8ef103e0c5d.md) | 137 | `result-track:a7f063f02cd2b8ef103e0c5d5118c934755be2c1fc7f05d0773351f9dc5ddd63` |
| 21 | `def` | [comap](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/comap--7d2da1772d22bee9f8fb0328.md) | 143 | `declaration-track:7d2da1772d22bee9f8fb0328b36dda9bafbdcd53f599e21b6ffdb6dd372f331e` |
| 22 | `def` | [Quotient](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/quotient--ed6a1cad2c167af1b0bc841d.md) | 159 | `declaration-track:ed6a1cad2c167af1b0bc841da7b008e6b1d459ffd61c63ac1a76618a3a3a0113` |
| 23 | `def` | [toQuotient](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/toquotient--0ce57803f765b7e09eb90189.md) | 165 | `declaration-track:0ce57803f765b7e09eb90189c089da61e4d6c9b6ef15cf2600999e7815947f33` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--fdc7291c057f56c0a74579e1.md) | 173 | `declaration-track:fdc7291c057f56c0a74579e1fb3a80ac21913c9d19ffe2d85d43dcf628a04504` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--cbc6ed697c6857924362e59e.md) | 178 | `declaration-track:cbc6ed697c6857924362e59e6ca2c5748cb5c0d74b7c2bd37c5910b0dc21cd2b` |
| 26 | `theorem` | [quot_mk_eq_coe](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/quot-mk-eq-coe--897d4b37073a8735a8a0f378.md) | 182 | `result-track:897d4b37073a8735a8a0f378378811812908cef8f34216f8e5330f2d42663b3b` |
| 27 | `theorem` | [eq](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/eq--fa754cbe297b36b9c095e6bd.md) | 188 | `result-track:fa754cbe297b36b9c095e6bd7f0d88424b1af25522756b76f4b3303a60ae2f4b` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--a4150f10a39fec7947e2703f.md) | 205 | `declaration-track:a4150f10a39fec7947e2703f4ed2bca64a429c7782dca1c7373fa91f4b599d9e` |
| 29 | `theorem` | [coe_add](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/coe-add--0f7c12e87f5ae1234b3e8c8b.md) | 208 | `result-track:0f7c12e87f5ae1234b3e8c8b93befe220f4c0f86632b48fa733580dc5e4dbe64` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--8ef889710bd24f3795f61625.md) | 211 | `declaration-track:8ef889710bd24f3795f616251597438caafb84e3a1cf4fa8559aeffd8846d730` |
| 31 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/coe-mul--7f29c326d822f770a57d9a0f.md) | 214 | `result-track:7f29c326d822f770a57d9a0f6f6eb82ef4395198565da17ed835deb733ab717b` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--186d9ddabbcad2ecc23fc197.md) | 223 | `declaration-track:186d9ddabbcad2ecc23fc19752822817897b1e49716fc14f8344d9ca809f183d` |
| 33 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/coe-zero--c4461330b0a42de7e17f7a82.md) | 226 | `result-track:c4461330b0a42de7e17f7a8263613519b023db5c55fc38be9a32d7582d3dbe16` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--b7ea606ec1875a1630452654.md) | 235 | `declaration-track:b7ea606ec1875a1630452654ecb6374c48e7ab1ecec6a82eda49eaecd8799391` |
| 35 | `theorem` | [coe_one](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/coe-one--9bcf618fb29cfaa3cbf3f3e3.md) | 238 | `result-track:9bcf618fb29cfaa3cbf3f3e3e7176bbc6071cf4e44fabd8298104e05929e81dc` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--580df82a7a0cc2c4fd03349f.md) | 247 | `declaration-track:580df82a7a0cc2c4fd03349fb8858806c646b6e8001a1219b750c33969d83c85` |
| 37 | `theorem` | [coe_neg](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/coe-neg--b0472c9496fc6ce89e736e6c.md) | 250 | `result-track:b0472c9496fc6ce89e736e6c2d6687208c3355501aa103b31a152e4f8c930da6` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--9efc3d9e627baab4ab3904c2.md) | 253 | `declaration-track:9efc3d9e627baab4ab3904c2d3137558812a75c4a2d83bf5f46d612af4209cb1` |
| 39 | `theorem` | [coe_sub](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/coe-sub--863ddb5e791d8fd093542a4d.md) | 256 | `result-track:863ddb5e791d8fd093542a4d4a1215051e3ae7aa859a9a55aaa130f1fbcab81d` |
| 40 | `instance` | [hasZSMul](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/haszsmul--3ee8f07e6618afa2292eb820.md) | 259 | `declaration-track:3ee8f07e6618afa2292eb820d07465038671f3e2806d717a103c3c8ce4d68f69` |
| 41 | `theorem` | [coe_zsmul](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/coe-zsmul--3e7f7b65ba65c2566cd620c1.md) | 262 | `result-track:3e7f7b65ba65c2566cd620c1d5d7bf56965cde46835107af993e2dcd708d1744` |
| 42 | `instance` | [hasNSMul](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/hasnsmul--34803de92750521d316afa0a.md) | 271 | `declaration-track:34803de92750521d316afa0aa5c2d16aae12e4f39988efb09880a75a13f8e082` |
| 43 | `theorem` | [coe_nsmul](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/coe-nsmul--f9fddfe1b59c0b2910251e53.md) | 274 | `result-track:f9fddfe1b59c0b2910251e53765109a676bc186d4c4e914179a875a8bd16798b` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--8e972916445fb0cb91b4601f.md) | 283 | `declaration-track:8e972916445fb0cb91b4601f7ca7cafaee2d8331e44f2782ddf21b68b8bd7965` |
| 45 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/coe-pow--d44e68c480c38e91c6926598.md) | 286 | `result-track:d44e68c480c38e91c69265982992b87ae10581b267867d4ae6194e0a88ec197f` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--617be4a5e14807b57da8113d.md) | 295 | `declaration-track:617be4a5e14807b57da8113d7acc7c0dcb613daf1fa9ae46e2bce4d35cec9550` |
| 47 | `theorem` | [coe_natCast](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/coe-natcast--97ed20379997da18980f5809.md) | 299 | `result-track:97ed20379997da18980f580905e2e4d8c8fed237af9da9475109626b12590c30` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--af10e31856d60a04fd763197.md) | 308 | `declaration-track:af10e31856d60a04fd7631975919cd384bf58204ae30dca702c85c40b271e049` |
| 49 | `theorem` | [coe_intCast](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/coe-intcast--82eab4ea62b84459a33c0939.md) | 312 | `result-track:82eab4ea62b84459a33c093953d24872e90460912df46af4297fb492a98b2b37` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--77915f4a7ec542d8273754a9.md) | 317 | `declaration-track:77915f4a7ec542d8273754a9308d539631060befc3fd51fc1c4c5496eb86e731` |
| 51 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--fe22818f8f84e97dc25f7713.md) | 330 | `declaration-track:fe22818f8f84e97dc25f77136b7956bc9fdc201776382ce844704d7fdca61ed1` |
| 52 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--de342b67eec89ff4f8c071ad.md) | 335 | `declaration-track:de342b67eec89ff4f8c071adb7f6fec87ef217ff9089bec0336d4ad82583389b` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--d7cd1a77a6fea58ba861be6e.md) | 339 | `declaration-track:d7cd1a77a6fea58ba861be6ec559ff4f704e256933d129eb9d7f42d152da068b` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--d1329f6d0013b0fd53c4b4c4.md) | 343 | `declaration-track:d1329f6d0013b0fd53c4b4c49be4b5d9fc4e112379f46ada04e079cb926c8c8e` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--6ac7a881f22566111d305ae7.md) | 347 | `declaration-track:6ac7a881f22566111d305ae7232e7ed522917ce43dfe1fcf7fb28a0f0b6466a9` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--bdec07b82729b137c728ca46.md) | 351 | `declaration-track:bdec07b82729b137c728ca46522eb3202024495c8fa6be3420f588a4e6fe3008` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--9e25bb82bc3a21af8a04bc1c.md) | 356 | `declaration-track:9e25bb82bc3a21af8a04bc1c8b02ce8e8a65b6c1e7b1fc5ebcbea8f97be8dfe7` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--c4e08c56baa9395c94a8f928.md) | 361 | `declaration-track:c4e08c56baa9395c94a8f928cad905d612a22309266b1109d3a75c84b59439bb` |
| 59 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--15719144637b8656417d2dcf.md) | 365 | `declaration-track:15719144637b8656417d2dcfbd85fe3619c251d15f5ce28fc96cddd218a99630` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/instance--cfaa101d8b471d0479ad509e.md) | 370 | `declaration-track:cfaa101d8b471d0479ad509eb68de21dddc94a2b06ac5dce34d38fff97c457b7` |
| 61 | `def` | [mk'](../../../../mathematics/Algebra/Defs/Variant1d388eeb0eca663b03b2e7b632d3887b3a17e839dee55e2e559bc9822dd269fc.lean/declarations/mk--defa1e83ad0b91462b52d4e9.md) | 378 | `declaration-track:defa1e83ad0b91462b52d4e9b90f3a85e509ead6954d5d7dd33583b17f46c7a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
