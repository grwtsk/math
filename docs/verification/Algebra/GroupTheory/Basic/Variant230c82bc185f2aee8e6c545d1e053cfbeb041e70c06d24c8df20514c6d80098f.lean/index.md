# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18dbabf2c6ecba605276642f02ddde9c2ccffba2",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18dbabf2c6ecba605276642f02ddde9c2ccffba2`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupExtension.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SemidirectProduct` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Group` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientKerRightHomEquivRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/quotientkerrighthomequivright--2c52919ce4770d2c1fb3513f.md) | 36 | `declaration-track:2c52919ce4770d2c1fb3513f81b1908b92ba3864b3a63dc0fcfd10252fa30c67` |
| 2 | `def` | [quotientRangeInlEquivRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/quotientrangeinlequivright--7d93fbbfd31a873d6da9aa7c.md) | 41 | `declaration-track:7d93fbbfd31a873d6da9aa7ce76a0cd9ed28bf27154f6682d53d09425d807e73` |
| 3 | `def` | [surjInvRightHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/surjinvrighthom--3b2ea5f4842bc30b21494d66.md) | 47 | `declaration-track:3b2ea5f4842bc30b21494d669353c27f651cec3f45839a1f85433a0d52ae9dae` |
| 4 | `theorem` | [mul_inv_mem_range_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/mul-inv-mem-range-inl--acb12366c7195afc088e59b2.md) | 58 | `result-track:acb12366c7195afc088e59b2509a586e17c6d955b0b48c6657d04eff285c26db` |
| 5 | `theorem` | [inv_mul_mem_range_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/inv-mul-mem-range-inl--53c673afc02068c4b43dcad7.md) | 63 | `result-track:53c673afc02068c4b43dcad7c15f2ccd11c9c4f80499dc19cff5da2981f6e00a` |
| 6 | `theorem` | [exists_eq_inl_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/exists-eq-inl-mul--cfe09c6c407cb84ea3b49ae0.md) | 68 | `result-track:cfe09c6c407cb84ea3b49ae04fc6e8a61d6e0c2e9339e61b50bd8ce6fb2eaa1c` |
| 7 | `theorem` | [exists_eq_mul_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/exists-eq-mul-inl--76262976886df56f49ea2081.md) | 73 | `result-track:76262976886df56f49ea208199264536eb79a0599e85344d46f0697a49850778` |
| 8 | `theorem` | [mul_mul_mul_inv_mem_range_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/mul-mul-mul-inv-mem-range-inl--fc3f016395ab2e3befc346dd.md) | 78 | `result-track:fc3f016395ab2e3befc346ddae874899ce87ec2c896bb58644ec16a8f16f9b63` |
| 9 | `theorem` | [mul_inv_mul_mul_mem_range_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/mul-inv-mul-mul-mem-range-inl--e17645864ba18096cf7f2407.md) | 83 | `result-track:e17645864ba18096cf7f240772e7e492178bbcbca707b267af5e245614281393` |
| 10 | `theorem` | [exists_mul_eq_inl_mul_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/exists-mul-eq-inl-mul-mul--dd29b64af224323e58d14a5c.md) | 88 | `result-track:dd29b64af224323e58d14a5c64b0fa3c5baa23b1b594890f849122b5ff5ac36e` |
| 11 | `theorem` | [exists_mul_eq_mul_mul_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/exists-mul-eq-mul-mul-inl--5ed16d3ce7d16c6306cc015c.md) | 94 | `result-track:5ed16d3ce7d16c6306cc015c8ebae5de519795159a4a5d14a10cf30b39a1b09b` |
| 12 | `def` | [equivComp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/equivcomp--fa959c207548a3af47bd7277.md) | 106 | `declaration-track:fa959c207548a3af47bd72779cce699b042516e015886cb97b7051b878b2ed94` |
| 13 | `def` | [ofMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/ofmonoidhom--71308a36dd47029f2151ebed.md) | 123 | `declaration-track:71308a36dd47029f2151ebed9a6aaaa3a417f35be7e48bb4091e61bacd179272` |
| 14 | `def` | [conjAct](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/conjact--9e807d86cdca8c10f0614df5.md) | 156 | `declaration-track:9e807d86cdca8c10f0614df54923124ad87b0181dac1777aad64cc8efeb5c0f9` |
| 15 | `def` | [semidirectProductToGroupExtensionEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/semidirectproducttogroupextensionequiv--98f5848990cd252e4581780d.md) | 159 | `declaration-track:98f5848990cd252e4581780d632209d1165fe0397cae9145bfb8acdd75972f4d` |
| 16 | `def` | [semidirectProductMulEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/semidirectproductmulequiv--6ef0495f86d1be372cda2c91.md) | 185 | `declaration-track:6ef0495f86d1be372cda2c91dca519dd0e274964072e19dc0014262de205a64c` |
| 17 | `theorem` | [refl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/refl--2712bcd2f3fb2cfa47fdc5f2.md) | 194 | `result-track:2712bcd2f3fb2cfa47fdc5f2263dbbe824cc14aa43f6c477de164f949ce7fadc` |
| 18 | `theorem` | [symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/symm--d753a15c71d3bd1eebc30894.md) | 199 | `result-track:d753a15c71d3bd1eebc30894933bc9326f0c6f513ec6f3fb29f1200146258451` |
| 19 | `theorem` | [trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/trans--a61319d3274fd09bd9473bf0.md) | 205 | `result-track:a61319d3274fd09bd9473bf0490cde77b632676378d11589d7ef29597a1a750a` |
| 20 | `def` | [setoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/setoid--7328979aed8d76a29e2fa804.md) | 213 | `declaration-track:7328979aed8d76a29e2fa8043d3b10bb1f64bc4fb59c54cc8370fec1032a645d` |
| 21 | `def` | [ConjClasses](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/conjclasses--b12ae62069023fe904a9e0a6.md) | 224 | `declaration-track:b12ae62069023fe904a9e0a6622de007034580a4a77c2d151578786efae76a13` |
| 22 | `theorem` | [right_splitting](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/declarations/right-splitting--879e2112a51e7ff9a4cb3196.md) | 232 | `result-track:879e2112a51e7ff9a4cb3196b4232b8fce1481d2a6ffc670f81a361a93759418` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
