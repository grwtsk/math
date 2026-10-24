# Verification target: GRWTSK.Algebra.Flat.Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "210e13e1274c6124a5ad33cf196feb4b7b83f6be",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/index.md) · [Full source](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `210e13e1274c6124a5ad33cf196feb4b7b83f6be`.

Source path: `GRWTSK/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Localization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.GoingDown` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RingHom.Flat](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/ringhom-flat--dee4fc70c41996c719290ed5.md) | 23 | `declaration-track:dee4fc70c41996c719290ed51b9c4387a317f1d4cfec9b89789623b7fa7c80d5` |
| 2 | `lemma` | [flat_algebraMap_iff](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/flat-algebramap-iff--f4683ecc3fbc38a4b8fad2a1.md) | 27 | `result-track:f4683ecc3fbc38a4b8fad2a19ea1b00450d1d4c19ce2dca0b87ab34e80da1785` |
| 3 | `lemma` | [id](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/id--c8da2e9dac4e27166b2aa06b.md) | 39 | `result-track:c8da2e9dac4e27166b2aa06bebb36f6936a024f68a1cf732956d4fd08e262063` |
| 4 | `lemma` | [comp](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/comp--e983ad5cac6de8e23774900c.md) | 43 | `result-track:e983ad5cac6de8e23774900c3c8f116d55ba33f772199db0d5470d65f1270b68` |
| 5 | `lemma` | [of_bijective](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/of-bijective--0f4a2551919d1c20a8ac3a7c.md) | 48 | `result-track:0f4a2551919d1c20a8ac3a7c4180af5c9ff71c3ad763325221c33ef832c8394a` |
| 6 | `lemma` | [containsIdentities](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/containsidentities--52795e1387f982851c9d1848.md) | 52 | `result-track:52795e1387f982851c9d1848a0ccfd4f61563da74d0c5e136fb7e028cdbe8a4e` |
| 7 | `lemma` | [stableUnderComposition](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/stableundercomposition--1f7cfc88fb0c1b5dfd8b6154.md) | 54 | `result-track:1f7cfc88fb0c1b5dfd8b6154904fee433bf993e896385424f79f8c81f20b2c3a` |
| 8 | `lemma` | [respectsIso](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/respectsiso--b3418be0efabac01cb67bf09.md) | 58 | `result-track:b3418be0efabac01cb67bf091f66b94c605867dff36e53fd39b2f4083b4566f0` |
| 9 | `lemma` | [isStableUnderBaseChange](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/isstableunderbasechange--100dc3567c0fcab8ba95f6d0.md) | 63 | `result-track:100dc3567c0fcab8ba95f6d0fc3586cbbc6c49375afeaea883575576efd8644b` |
| 10 | `lemma` | [holdsForLocalizationAway](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/holdsforlocalizationaway--3970dfd23320108c623508e7.md) | 72 | `result-track:3970dfd23320108c623508e758c29581a63ff35bd09bdcd5dea640b100b719f6` |
| 11 | `lemma` | [ofLocalizationSpanTarget](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/oflocalizationspantarget--68be4d4d6d291c60345a5b5f.md) | 78 | `result-track:68be4d4d6d291c60345a5b5fd1c0b9e4496ea003978cd52363572c0c6291c332` |
| 12 | `lemma` | [propertyIsLocal](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/propertyislocal--2b350bca87a8bdd0fd9ed600.md) | 88 | `result-track:2b350bca87a8bdd0fd9ed600e5751405be500037373667115664a978d211ff54` |
| 13 | `lemma` | [ofLocalizationPrime](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/oflocalizationprime--b1052237843455b1ab9a9afa.md) | 98 | `result-track:b1052237843455b1ab9a9afa7b8a778852bb035cbc945d6688a69ec64ad98d15` |
| 14 | `lemma` | [localRingHom](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/localringhom--edb424a7bcad028c873c3923.md) | 111 | `result-track:edb424a7bcad028c873c3923de64359d8c5ef13a8821563c0a82a2c6304b4f9d` |
| 15 | `lemma` | [generalizingMap_comap](../../../../mathematics/Algebra/Flat/Variant034c5dd75bcfe29ae6c6fc7f6878150d877b3e4a5612dac03f57d99a9fcd0c60.lean/declarations/generalizingmap-comap--548a0702eb0824cdb36666a5.md) | 125 | `result-track:548a0702eb0824cdb36666a5b6c8da2c6a0bf59d3df0ba5d7b18859dc0cb1a51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
