# Verification target: GRWTSK.Algebra.ULift.Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f1690f41e8e0b7d634c3fb52b0b6aaedbd529c5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/index.md) · [Full source](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f1690f41e8e0b7d634c3fb52b0b6aaedbd529c5`.

Source path: `GRWTSK/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ULift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [mulZeroClass](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/mulzeroclass--fdd6b6ca9371e40737ffab0e.md) | 29 | `declaration-track:fdd6b6ca9371e40737ffab0eb9a76a7c9957aeea724d33d810a8d3cb334034a5` |
| 2 | `instance` | [distrib](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/distrib--9f5a937a572502860134a2aa.md) | 34 | `declaration-track:9f5a937a572502860134a2aa48dfb304f0835c0f28ad9c7bcc103e580c3dfb36` |
| 3 | `instance` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/nonunitalnonassocsemiring--124d6f8cc2afc86d0315d5db.md) | 40 | `declaration-track:124d6f8cc2afc86d0315d5db6a39e936560780bc50e417d4361744d8368b9c88` |
| 4 | `instance` | [nonAssocSemiring](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/nonassocsemiring--ad0cca0b7dab69b2f2fc041a.md) | 49 | `declaration-track:ad0cca0b7dab69b2f2fc041aca4d2909de1be4329cd1a71bbc445fb2b1197463` |
| 5 | `instance` | [nonUnitalSemiring](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/nonunitalsemiring--5ccb653825e7e9b9d0b43108.md) | 56 | `declaration-track:5ccb653825e7e9b9d0b431087262e4b31616b99ef76c8b8df6b9eb57c539a579` |
| 6 | `instance` | [semiring](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/semiring--4aeb81a92fe9af79ff981e58.md) | 63 | `declaration-track:4aeb81a92fe9af79ff981e58ebec898717e1f92234d6585e6a2d51ec47b28514` |
| 7 | `def` | [ringEquiv](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/ringequiv--0636097db6c38fcc0b710c1f.md) | 72 | `declaration-track:0636097db6c38fcc0b710c1f67ee52e2261007cc367d066fa4b46b931a750170` |
| 8 | `instance` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/nonunitalcommsemiring--ed3e7c4fce3df725e2eb3f77.md) | 81 | `declaration-track:ed3e7c4fce3df725e2eb3f77ea04e2ec21b4f0c88849395c51f72e584ba63109` |
| 9 | `instance` | [commSemiring](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/commsemiring--e420c6e809ac329dfc5e948b.md) | 88 | `declaration-track:e420c6e809ac329dfc5e948b582b167536f08a288c584e81725638f08cf7883b` |
| 10 | `instance` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/nonunitalnonassocring--c15cabe5b3dd4b9c299b7e0c.md) | 94 | `declaration-track:c15cabe5b3dd4b9c299b7e0c553d8b8da0ff2f2fc704b9fc59f809ca7965cc11` |
| 11 | `instance` | [nonUnitalRing](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/nonunitalring--4f7dad4449e0c6a6808f2f4f.md) | 104 | `declaration-track:4f7dad4449e0c6a6808f2f4f4525965e43f678bc0e25c8cd696d159d2babb465` |
| 12 | `instance` | [nonAssocRing](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/nonassocring--ab0f105d8180ec2a5579a568.md) | 114 | `declaration-track:ab0f105d8180ec2a5579a568d303a792f7a5076196c088b65d6430703f49a4b5` |
| 13 | `instance` | [ring](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/ring--ae95b8d5efb6d5fd3e4c5461.md) | 128 | `declaration-track:ae95b8d5efb6d5fd3e4c5461f4df30811a8dc79bb8f162a34518774c20028124` |
| 14 | `instance` | [nonUnitalCommRing](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/nonunitalcommring--6e1162084e1df32a7a4b2a63.md) | 141 | `declaration-track:6e1162084e1df32a7a4b2a63c26205edd089d75133589435ea9f68c5583b5295` |
| 15 | `instance` | [commRing](../../../../mathematics/Algebra/ULift/Variante7a5e21e694e2ccccaa4be2e528e26719aeb90ee359a61226beb751803d1a906.lean/declarations/commring--b065e92017de4423b8c3d6a5.md) | 152 | `declaration-track:b065e92017de4423b8c3d6a5e4046b1be3f30f696c48f91747f94a151c5fc7d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
