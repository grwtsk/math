# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.NonemptyFinLinOrdCat.Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a381cfc2c84994806a3cc967dad8213cf7f396e",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a381cfc2c84994806a3cc967dad8213cf7f396e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.FinPartOrd` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.LinOrdCat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonemptyFinLinOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/nonemptyfinlinord--706ed384260470d6ec3f84ad.md) | 31 | `declaration-track:706ed384260470d6ec3f84addc7d1d68fc3b9a6bf8279cb89d01408293bf2b28` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/instance--d9c1e96d26918676a41802bb.md) | 37 | `declaration-track:d9c1e96d26918676a41802bb015f749b21e52c6d8c35a495a3eb2ee5c8f71107` |
| 3 | `instance` | [PUnit.nonemptyFinLinOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/punit-nonemptyfinlinord--067cb0b40e4b378152fd62c7.md) | 42 | `declaration-track:067cb0b40e4b378152fd62c77c8bf3c867182b3f693af94868ddf31b1620a541` |
| 4 | `instance` | [Fin.nonemptyFinLinOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/fin-nonemptyfinlinord--d3e7abaf8c57bc72da9a06f7.md) | 45 | `declaration-track:d3e7abaf8c57bc72da9a06f7ea1100997bfadded655ae573f7ab99ca673449f5` |
| 5 | `instance` | [ULift.nonemptyFinLinOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/ulift-nonemptyfinlinord--351f4493e4b5c7cb5a794480.md) | 48 | `declaration-track:351f4493e4b5c7cb5a7944807eeebf32752e7f001dd02bd46fcc33a1ac12d4ae` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/instance--ddc924ea361ae3ac422dfda8.md) | 53 | `declaration-track:ddc924ea361ae3ac422dfda87d1f7ff030addb87694ca44cc8146c1d4dee9ff8` |
| 7 | `def` | [NonemptyFinLinOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/nonemptyfinlinordcat--b7f34c9fd8dd293b9b064cb5.md) | 57 | `declaration-track:b7f34c9fd8dd293b9b064cb5e48a88d3a2b33222a82a5b204ea947df14a8549c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/instance--5ae0ce7eb81971311fe1d69b.md) | 64 | `declaration-track:5ae0ce7eb81971311fe1d69bc463a7ca187c53234ace0934a349e81c13d34970` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/instance--e9ef26e733ec74f2ed3f6ac3.md) | 70 | `declaration-track:e9ef26e733ec74f2ed3f6ac3a08a3921edd7244ad70bec3218c3c106a1572e92` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/instance--126ca1040ad0faec9e127c19.md) | 73 | `declaration-track:126ca1040ad0faec9e127c19110405a63f19d107abb809b52c8de3500d14da79` |
| 11 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/of--28f7069d37fd6af141d459c0.md) | 77 | `declaration-track:28f7069d37fd6af141d459c08e143d6704eccef7f4f7efa79773c92032bfb365` |
| 12 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/coe-of--659ac056cb0f12282fa4f164.md) | 83 | `result-track:659ac056cb0f12282fa4f1644f74f5524525f44ec344c1929455aaa59a4b9db5` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/instance--e780818b8aedf57253d1a563.md) | 88 | `declaration-track:e780818b8aedf57253d1a56353556bdfcf71857d5b62472763cc47abb9e5fdce` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/instance--70a25a633aa79b593a4bce58.md) | 91 | `declaration-track:70a25a633aa79b593a4bce58cf42f72250630ec0fcdade2bee877f1f302cd1c7` |
| 15 | `instance` | [hasForgetToLinOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/hasforgettolinord--bdf281b0ed33a9b18d155617.md) | 94 | `declaration-track:bdf281b0ed33a9b18d15561719528cd8b4ee64a80e6ab4a105ca65288cec8fcd` |
| 16 | `instance` | [hasForgetToFinPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/hasforgettofinpartord--023ee89ca7876e0a5c171e29.md) | 99 | `declaration-track:023ee89ca7876e0a5c171e29478ebf4df985e1714da407965949043c2d582a95` |
| 17 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/iso-mk--046455fce31369d5717d745a.md) | 109 | `declaration-track:046455fce31369d5717d745a7364a407903f52974f96a7f0a98d5e07a9d0467c` |
| 18 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/dual--55283436013382a49e8c09d9.md) | 123 | `declaration-track:55283436013382a49e8c09d934d3d9673537ce3555c4827d05e1f7102f8d748f` |
| 19 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/dualequiv--510e82781ac353a004fb9b06.md) | 131 | `declaration-track:510e82781ac353a004fb9b065b9f0c9e52e1357f9ca47397e388a08800cc5cbc` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/instance--82e0726b79c4581c3aec1689.md) | 140 | `declaration-track:82e0726b79c4581c3aec16892be7f8a3552e5961f1fcc283e7e9b710afcf83e1` |
| 21 | `theorem` | [mono_iff_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/mono-iff-injective--0a94e23282ce044d48d5f6fd.md) | 147 | `result-track:0a94e23282ce044d48d5f6fd0eaf4f46e277fb946d90f83a4024d47c4333ce06` |
| 22 | `lemma` | [forget_map_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/forget-map-apply--1d719b7bc6ff57bdd474e80b.md) | 165 | `result-track:1d719b7bc6ff57bdd474e80b2ebb4237797a46ebd735703cb2233d970471de1c` |
| 23 | `theorem` | [epi_iff_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/epi-iff-surjective--53e33bfefdb8d1af47c24610.md) | 168 | `result-track:53e33bfefdb8d1af47c24610149128ab8343042025bb7889b0312bef4d2a7ca0` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/instance--677f99d00602738243152a87.md) | 210 | `declaration-track:677f99d00602738243152a870c66416e07c5e33c67d01ed92839472cc0038a4f` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/instance--9238fe1c2ad6b85f3b40e875.md) | 234 | `declaration-track:9238fe1c2ad6b85f3b40e875f507d219667c82f0c6093c637379964b7e69bca6` |
| 26 | `theorem` | [nonemptyFinLinOrdCat_dual_comp_forget_to_linOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/nonemptyfinlinordcat-dual-comp-forget-to-linordcat--047dd4daa9b1d33cdc0d8e0c.md) | 250 | `result-track:047dd4daa9b1d33cdc0d8e0c597be4c0a56bc06713627c12b1383ddd6e30ff15` |
| 27 | `def` | [nonemptyFinLinOrdDualCompForgetToFinPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/declarations/nonemptyfinlinorddualcompforgettofinpartord--cde1e8bc306908c1bfd7bb4e.md) | 258 | `declaration-track:cde1e8bc306908c1bfd7bb4e750d271976541fb78b414109dddd9de62ea03b87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
