# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Pi.Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f38e1a973ea1d01b0deb888893e7eaf02852d2d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f38e1a973ea1d01b0deb888893e7eaf02852d2d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Finset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [List.Vector.encodable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a.lean/declarations/list-vector-encodable--9fbddd71ca061f8c721cb1f6.md) | 36 | `declaration-track:9fbddd71ca061f8c721cb1f6110aa9d35f654007e82fe03fed4c1ae11fdfd283` |
| 2 | `instance` | [List.Vector.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a.lean/declarations/list-vector-countable--61ba6315a903c2818f2e6e02.md) | 40 | `declaration-track:61ba6315a903c2818f2e6e02b52817aae103e6165fda7e3254e35dc73efc5a6b` |
| 3 | `instance` | [finArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a.lean/declarations/finarrow--73fbcf194acfce25798145a7.md) | 44 | `declaration-track:73fbcf194acfce25798145a7d194576f715c495f54f21624692777e694c5cd6d` |
| 4 | `instance` | [finPi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a.lean/declarations/finpi--789dcf22de7c3f83199fa859.md) | 47 | `declaration-track:789dcf22de7c3f83199fa85981cc229e952a0b3fdf2cd7cfb1bb7d4d72bd70a4` |
| 5 | `def` | [fintypeArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a.lean/declarations/fintypearrow--11958e6987720e82f915a96b.md) | 53 | `declaration-track:11958e6987720e82f915a96b8611bd0d26592397c7eef809e90a02e1c2708f34` |
| 6 | `def` | [fintypePi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a.lean/declarations/fintypepi--819a92cbb9fa7a0431b5e318.md) | 60 | `declaration-track:819a92cbb9fa7a0431b5e31887928f84602baac7913bdac22bb02e96ef6191a7` |
| 7 | `instance` | [fintypeArrowOfEncodable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pi/Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a.lean/declarations/fintypearrowofencodable--1312993aef9e51391ce7f2e3.md) | 69 | `declaration-track:1312993aef9e51391ce7f2e3d43df9115fdb3901cec1daf3bc96294ce491a26f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
