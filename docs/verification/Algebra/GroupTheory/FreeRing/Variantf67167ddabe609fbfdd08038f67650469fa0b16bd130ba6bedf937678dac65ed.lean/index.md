# Verification target: GRWTSK.Algebra.GroupTheory.FreeRing.Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ca9b40367444b5e093ff881cbd36b721508dbf6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ca9b40367444b5e093ff881cbd36b721508dbf6`.

Source path: `GRWTSK/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.FreeAbelianGroup` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeRing](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/freering--a3467fa43d989be1de8bda86.md) | 49 | `declaration-track:a3467fa43d989be1de8bda86bec6753b3b0e0488717bfade021d5915456f5c9d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/instance--ca48dadd056e1bdc52ffb425.md) | 52 | `declaration-track:ca48dadd056e1bdc52ffb42501ded4c734d53964fa9af87cff06fc0a57ea5442` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/instance--9cf52a1d4b633331f53c82d0.md) | 55 | `declaration-track:9cf52a1d4b633331f53c82d0e783dfc98c153920f62871f44d0805c3a6bc56f0` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/instance--718061896c675b1b8039c83b.md) | 59 | `declaration-track:718061896c675b1b8039c83b44548dec0f24030b75b80b8c7f9d008c58759081` |
| 5 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/of--7d14cca5ae35dc1d307cecbd.md) | 67 | `declaration-track:7d14cca5ae35dc1d307cecbd5b70687871d5f89f76ea91fc548db629dc3bf83d` |
| 6 | `theorem` | [of_injective](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/of-injective--d76ea96f9f7e2f54b1b64cfd.md) | 70 | `result-track:d76ea96f9f7e2f54b1b64cfd6150d1f5ab82819ebd66d0be58b7160c393e2115` |
| 7 | `theorem` | [of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/of-ne-zero--9e33803e5a99a7f71fa8de6d.md) | 74 | `result-track:9e33803e5a99a7f71fa8de6d6cf1fd709e5e15ce4ce28ff0095664c2c39e4ae8` |
| 8 | `theorem` | [zero_ne_of](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/zero-ne-of--94d9bdc25f529af29593c81c.md) | 77 | `result-track:94d9bdc25f529af29593c81c5d8c4f0a0a4ee079eb0b07d18973d7238cfb41f7` |
| 9 | `theorem` | [of_ne_one](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/of-ne-one--3b396454ef7b8ceca716caff.md) | 80 | `result-track:3b396454ef7b8ceca716caff4c4c53aef313fc77bc8b9190727b5fa9893b96e5` |
| 10 | `theorem` | [one_ne_of](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/one-ne-of--5e98af404f778a576be909f2.md) | 83 | `result-track:5e98af404f778a576be909f213f0495d3d042d33aafb4a85af829cb382378d50` |
| 11 | `theorem` | [induction_on](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/induction-on--5937b973644f6b4811dff26f.md) | 86 | `result-track:5937b973644f6b4811dff26fa85d1abccf4909a7ad0974c946b42eed59da6ef3` |
| 12 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/lift--5f4fdd25d6dd9f43e4a25aa4.md) | 104 | `declaration-track:5f4fdd25d6dd9f43e4a25aa46015aedd929c35d47126186def6ea13eebc0b14f` |
| 13 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/lift-of--6b6e4ab1465bcdcfabd84338.md) | 108 | `result-track:6b6e4ab1465bcdcfabd84338965f79c45c39b58519f02988f747f4747cd325e0` |
| 14 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/lift-comp-of--c96ab80edb158b48498a04c1.md) | 112 | `result-track:c96ab80edb158b48498a04c15fc9fef356d313d8a9045e51bff56df3c10c815f` |
| 15 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/hom-ext--bde4c31151c71e64f104eabe.md) | 116 | `result-track:bde4c31151c71e64f104eabeadc20c3afb83d08e1ce698967065a9e8cb454dc4` |
| 16 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/map--121a2ea2514c6885205be45c.md) | 124 | `declaration-track:121a2ea2514c6885205be45cea779ba915ddec17e852b861aa2d78baa1123df8` |
| 17 | `theorem` | [map_of](../../../../../mathematics/Algebra/GroupTheory/FreeRing/Variantf67167ddabe609fbfdd08038f67650469fa0b16bd130ba6bedf937678dac65ed.lean/declarations/map-of--9d726e9059576733cc8edba8.md) | 128 | `result-track:9d726e9059576733cc8edba844559cce252d704f6f3bde0595de8738621406a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
