# Verification target: GRWTSK.Algebra.SelmerGroup.Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf6c150afd495c55d6f9c9811db93270a2d07dda",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/index.md) · [Full source](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf6c150afd495c55d6f9c9811db93270a2d07dda`.

Source path: `GRWTSK/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.TypeTags` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [valuationOfNeZeroToFun](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/valuationofnezerotofun--7e73afb3e772c75688a0476b.md) | 94 | `declaration-track:7e73afb3e772c75688a0476b8a8e0ed16dce829d08762e04490e966cc310bd33` |
| 2 | `theorem` | [valuationOfNeZeroToFun_eq](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/valuationofnezerotofun-eq--3813dcfa3d59c21372f56f35.md) | 102 | `result-track:3813dcfa3d59c21372f56f35b82e9ad1528f8903f4ddf23175c5424831c4d45b` |
| 3 | `def` | [valuationOfNeZero](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/valuationofnezero--3731e4f751e92839c1c3b6f9.md) | 114 | `declaration-track:3731e4f751e92839c1c3b6f9d0c7ae73daa30090e2be5c374df776a5b32f7da2` |
| 4 | `theorem` | [valuationOfNeZero_eq](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/valuationofnezero-eq--04eccc2eb662571b0b964db2.md) | 123 | `result-track:04eccc2eb662571b0b964db29c055a5349b29642ac045287fe91bc42f7ad3cab` |
| 5 | `theorem` | [valuation_of_unit_eq](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/valuation-of-unit-eq--dc9f613ca55479ca0fcb50fb.md) | 128 | `result-track:dc9f613ca55479ca0fcb50fb287a635b5abec1ccdaef6d30bfddb2ed954a46f7` |
| 6 | `def` | [valuationOfNeZeroMod](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/valuationofnezeromod--7ebf4a08d10c4b64d62f588e.md) | 146 | `declaration-track:7ebf4a08d10c4b64d62f588e94b3e27bf05108a6123220085d87f54cf7485008` |
| 7 | `theorem` | [valuation_of_unit_mod_eq](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/valuation-of-unit-mod-eq--b9080c7807f827bb9a351734.md) | 158 | `result-track:b9080c7807f827bb9a3517341d2867745feb003d707ca2dd665104b8577c4fbd` |
| 8 | `def` | [selmerGroup](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/selmergroup--9149a7b26d9b142713f7f9b8.md) | 173 | `declaration-track:9149a7b26d9b142713f7f9b8c248e263f1965335e2949b83a3479fc67b1aa554` |
| 9 | `theorem` | [monotone](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/monotone--030ec2ff2cdcd4236ace4e09.md) | 185 | `result-track:030ec2ff2cdcd4236ace4e09f9e4f835e4b43ef73fcd72a966c2d00358d1a676` |
| 10 | `def` | [valuation](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/valuation--b6f2872579e962dc240f33bd.md) | 189 | `declaration-track:b6f2872579e962dc240f33bde062858473754bf57ac4b8adf8ce6ecbd1bf9d0a` |
| 11 | `theorem` | [valuation_ker_eq](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/valuation-ker-eq--df603548a06095b1e056c332.md) | 195 | `result-track:df603548a06095b1e056c3324a6de40e10ca18226306bbe092e20a889073688c` |
| 12 | `def` | [fromUnit](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/fromunit--0a3d1d3f3aac0dd22e183e10.md) | 207 | `declaration-track:0a3d1d3f3aac0dd22e183e107c6af0c58b602fb72d8105111c34f23b1a33b161` |
| 13 | `theorem` | [fromUnit_ker](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/fromunit-ker--14140d2219c61a2e3497d231.md) | 216 | `result-track:14140d2219c61a2e3497d2311418638a368915cc4e6a74ffd14d8f0063c31410` |
| 14 | `def` | [fromUnitLift](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/fromunitlift--bae0ca928f54299f6dd7090c.md) | 245 | `declaration-track:bae0ca928f54299f6dd7090c16800b4feb44a1588f237f19ea00dbdb22891096` |
| 15 | `theorem` | [fromUnitLift_injective](../../../../mathematics/Algebra/SelmerGroup/Variant44620e661abc01df860632b74d42509779ce9e09d0014a4c7fab27120be37ed9.lean/declarations/fromunitlift-injective--f238741ed93d37b20a7e588c.md) | 250 | `result-track:f238741ed93d37b20a7e588ca5eee154d7d63ec6f5f1ed508a92099df261c0f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
