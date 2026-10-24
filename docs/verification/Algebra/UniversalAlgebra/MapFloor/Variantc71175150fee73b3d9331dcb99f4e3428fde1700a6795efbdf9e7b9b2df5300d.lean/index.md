# Verification target: GRWTSK.Algebra.UniversalAlgebra.MapFloor.Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a383db60fc474178f63ee8c81d557ad7ad713f0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a383db60fc474178f63ee8c81d557ad7ad713f0`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Round` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.PiLex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Reverse` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IntWithEpsilon](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/intwithepsilon--c656532c19eefab899843fbd.md) | 56 | `declaration-track:c656532c19eefab899843fbd87bfaff43d8fb9e48326cc833a79afe2e3998389` |
| 2 | `instance` | [nontrivial](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/nontrivial--546da442ad40b1e9a4eacc82.md) | 65 | `declaration-track:546da442ad40b1e9a4eacc8225aac7cb3314401d976a7ded801d8ec2868f5161` |
| 3 | `instance` | [commRing](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/commring--bf828aaa4f0aa077a9979f8b.md) | 69 | `declaration-track:bf828aaa4f0aa077a9979f8b9dd6516bce9ed421f01503321967bd43bef7eca8` |
| 4 | `instance` | [inhabited](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/inhabited--6274afccba6b40781fbdcffa.md) | 71 | `declaration-track:6274afccba6b40781fbdcffa81e1a9591cb0d9a7b41bd174df9dacd2df1a8f4c` |
| 5 | `instance` | [linearOrder](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/linearorder--7e0c9e4fd19306a039eb2e51.md) | 73 | `declaration-track:7e0c9e4fd19306a039eb2e518cdde8cbf2347b174c3361bdcf0110b36b8cd881` |
| 6 | `instance` | [isOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/isorderedaddmonoid--d85a8de9f22e1ceb2df276b3.md) | 76 | `declaration-track:d85a8de9f22e1ceb2df276b3c288adafe3d53cbe6bb9fd36eab55f7e07931fb2` |
| 7 | `theorem` | [pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/pos-iff--94568f2aa42ee0b7fbd051b9.md) | 82 | `result-track:94568f2aa42ee0b7fbd051b982bed9d2e9bb08bf37db371bf7f4246624a95555` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/instance--46079a7c2338f67672d866f5.md) | 92 | `declaration-track:46079a7c2338f67672d866f5583d26aaacee57e218ce83f17041d28cffc5cf5a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/instance--cbab07ba6e04ee4c55cc1c24.md) | 95 | `declaration-track:cbab07ba6e04ee4c55cc1c24ed27e438bdb95c3a191ac8b18b05c7cfb812e961` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/instance--2fedb8b0d5b85b6dc96c56f5.md) | 98 | `declaration-track:2fedb8b0d5b85b6dc96c56f5cff7cbee602c25cc60c61cd26bc77c73ffb7272f` |
| 11 | `def` | [forgetEpsilons](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/forgetepsilons--4b3605ed4d1a75e9aed4f4e9.md) | 117 | `declaration-track:4b3605ed4d1a75e9aed4f4e93ff4a94cf08f7eacbe12b5e87490c4a991e3cece` |
| 12 | `theorem` | [forgetEpsilons_apply](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/forgetepsilons-apply--40af4c296b9fdf681eeccbe0.md) | 130 | `result-track:40af4c296b9fdf681eeccbe03081862fd13bdb29415651ec0229feb38a0d79c8` |
| 13 | `theorem` | [forgetEpsilons_floor_lt](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/forgetepsilons-floor-lt--0b878f5903bfeaacca07cb5b.md) | 135 | `result-track:0b878f5903bfeaacca07cb5b3ea5660089380070534610d73345070da15a3bd7` |
| 14 | `theorem` | [lt_forgetEpsilons_ceil](../../../../../mathematics/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/declarations/lt-forgetepsilons-ceil--1188b7a262c5a058917075bd.md) | 144 | `result-track:1188b7a262c5a058917075bde151cc4bafc58b08149b77ff383d45fb47e8f544` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
