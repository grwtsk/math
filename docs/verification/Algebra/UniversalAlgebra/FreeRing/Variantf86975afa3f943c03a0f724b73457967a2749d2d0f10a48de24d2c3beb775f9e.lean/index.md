# Verification target: GRWTSK.Algebra.UniversalAlgebra.FreeRing.Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7c3d10a768f04b8137893dc2c1976111367483f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7c3d10a768f04b8137893dc2c1976111367483f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeRing](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/freering--3db4bd99ca3790899053463d.md) | 54 | `declaration-track:3db4bd99ca3790899053463db1a918695aee830364405880b32178cded636791` |
| 2 | `def` | [of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/of--cbd9495a13e0b44103c3b1e2.md) | 63 | `declaration-track:cbd9495a13e0b44103c3b1e27a567f3ddf3aeff2aff23ccba6bf33365cd79776` |
| 3 | `theorem` | [of_injective](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/of-injective--3f7526543237b3f2cd5c2790.md) | 66 | `result-track:3f7526543237b3f2cd5c27905baf1772e40f08010526e5321746f0e81f00aad6` |
| 4 | `theorem` | [of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/of-ne-zero--8c3c5f1b16e26cf4732cb703.md) | 70 | `result-track:8c3c5f1b16e26cf4732cb70343a352eabc6516d20722d60ff5c1d9869c2a7808` |
| 5 | `theorem` | [zero_ne_of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/zero-ne-of--bb29dac3b7c4b60b646e85de.md) | 73 | `result-track:bb29dac3b7c4b60b646e85de2b77b7db260b0fdb6a195a8327201a65fb35c3fe` |
| 6 | `theorem` | [of_ne_one](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/of-ne-one--e901ab1df5f1d56fcad2d6fa.md) | 76 | `result-track:e901ab1df5f1d56fcad2d6fa63ac3604a93770678beefe448c3dc5dcaf5aa132` |
| 7 | `theorem` | [one_ne_of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/one-ne-of--cd35915e3553533ae8455da1.md) | 79 | `result-track:cd35915e3553533ae8455da1c8cc9b4f9292d875c120832ee79437832167399c` |
| 8 | `theorem` | [induction_on](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/induction-on--d33413eb8567a3300f1106c1.md) | 82 | `result-track:d33413eb8567a3300f1106c12960820854cfda073a871fcf52d9c26b4ad7c66f` |
| 9 | `def` | [lift](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/lift--21d6f72b7a11c4d56b20d425.md) | 105 | `declaration-track:21d6f72b7a11c4d56b20d425b3851c2d05d17d04adf73d4c1ddc6a0090b4e735` |
| 10 | `theorem` | [lift_of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/lift-of--ee36b79b8c8d0bba936e901a.md) | 109 | `result-track:ee36b79b8c8d0bba936e901aaeeacbd3c1bc7f0fe66153a0a62d1e435886c186` |
| 11 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/lift-comp-of--976007f75c3408e18da7e68a.md) | 113 | `result-track:976007f75c3408e18da7e68a543ce83510a6627338e0d0c6ebaba77196b9c69e` |
| 12 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/hom-ext--21c04b8522b8a52ee3dea959.md) | 117 | `result-track:21c04b8522b8a52ee3dea959607908adeea66c991d57756f8cf53945f1ecd8c5` |
| 13 | `def` | [map](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/map--af37fb13e10163f4e4ba19a7.md) | 125 | `declaration-track:af37fb13e10163f4e4ba19a73f793f3fb5888ac290515843925a8e9a64dbf238` |
| 14 | `theorem` | [map_of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeRing/Variantf86975afa3f943c03a0f724b73457967a2749d2d0f10a48de24d2c3beb775f9e.lean/declarations/map-of--93eb12a4b355b2af1e35724d.md) | 129 | `result-track:93eb12a4b355b2af1e35724d335e9b45bbfa35e4c55c8fef10ae6c0a4131bd49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
