# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Random.Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56a2625779f8eddea78869f2add57ce079f87cd4",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56a2625779f8eddea78869f2add57ce079f87cd4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Algebra.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Int.Order` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Control.ULiftable` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ULift` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RandG](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/randg--d628fac43705498b004e83f6.md) | 49 | `declaration-track:d628fac43705498b004e83f697f16b85a9446eda4d1cb6228ff5275cfa15bab8` |
| 2 | `abbrev` | [Rand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/rand--4cd4e6bb100fad95de68ffe5.md) | 52 | `declaration-track:4cd4e6bb100fad95de68ffe51c219de50e4ea0d8e4d569f2e0f94d67e49846fb` |
| 3 | `class` | [Random](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/random--d08e7b5fc88956f2d6635dfa.md) | 55 | `declaration-track:d08e7b5fc88956f2d6635dfacc56148fb386ccdbe2ed8cf38ac10add488ecee2` |
| 4 | `class` | [BoundedRandom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/boundedrandom--0d233165e745f09887b32608.md) | 59 | `declaration-track:0d233165e745f09887b32608982e58400c47a545b4672d287f00ab84d5ebc5e1` |
| 5 | `def` | [next](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/next--c6b80dfc9ed1e0adf12ea595.md) | 64 | `declaration-track:c6b80dfc9ed1e0adf12ea595f021314637bf4fc597fc4c1560916b61c6994c7c` |
| 6 | `def` | [split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/split--a231c13e05d41c3c04b27bde.md) | 71 | `declaration-track:a231c13e05d41c3c04b27bde5060d2dc9109fc650c38109ddb178dd10be50ca6` |
| 7 | `def` | [range](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/range--2eae0197da9b90eb26ea4cab.md) | 78 | `declaration-track:2eae0197da9b90eb26ea4caba0e907dbeda42c2b49258a83d1acfbafc968b23b` |
| 8 | `def` | [rand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/rand--4e3bd2464ccce07b42900fa8.md) | 88 | `declaration-track:4e3bd2464ccce07b42900fa8afcb5a763b6817d661d0545857083cd468b79e3a` |
| 9 | `def` | [randBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/randbound--fbab01d26b321aeb34ff97e1.md) | 91 | `declaration-track:fbab01d26b321aeb34ff97e1adf41ea26b008f72be033794307e91dac98abc26` |
| 10 | `def` | [randFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/randfin--b50997f919b10b3da06db455.md) | 95 | `declaration-track:b50997f919b10b3da06db455370242b52c1cf4ddd8caf539c5e624c804bd51e3` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/instance--9e63566b6641eaf177000281.md) | 98 | `declaration-track:9e63566b6641eaf1770002817858aec28c4f63b74d9e38f804ecb3056958bf3d` |
| 12 | `def` | [randBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/randbool--1fa70d313ede3ec13f61ed9d.md) | 101 | `declaration-track:1fa70d313ede3ec13f61ed9d17cfd1c49e2fa5f7a2a69b4b41a85239f42306eb` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/instance--15473a831789821489baa06a.md) | 104 | `declaration-track:15473a831789821489baa06a4982679b594884fcea12fff317fe061df42a42af` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/instance--42228990178ce6e930a942cb.md) | 107 | `declaration-track:42228990178ce6e930a942cba11a1eda8ca940c8299bc9eeb45c52f24c219e32` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/instance--092ffbe7f12fe0841b3a283f.md) | 110 | `declaration-track:092ffbe7f12fe0841b3a283f379177aa2a9e547a24cda2fd5469627caabec34a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/instance--be338d0b81e6fcb3294eaab1.md) | 118 | `declaration-track:be338d0b81e6fcb3294eaab16cf4d05a8479cf89a17924daf16ac6daa6c2330f` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/instance--03c3fb153b623a61443dcbed.md) | 128 | `declaration-track:03c3fb153b623a61443dcbede41cf8a2c2f55fc999684a4f822014b59c77d7a2` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/instance--be0e26f1a5907c1b2c3d9612.md) | 133 | `declaration-track:be0e26f1a5907c1b2c3d9612f9afbc561dbe3fae92d939a73546dca2fbd3ae2d` |
| 19 | `def` | [IO.runRand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/io-runrand--80aee9d9ab24a2554b716a65.md) | 148 | `declaration-track:80aee9d9ab24a2554b716a656bec5bdc44ba8461ce87afd14191aa17584251c6` |
| 20 | `def` | [IO.runRandWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Varianta8be4cf5a44e966eb0e63dfd43f969e29b292980b6dc466a33ba1c3dc7858431.lean/declarations/io-runrandwith--e80cedcc8b223c5fe539df28.md) | 155 | `declaration-track:e80cedcc8b223c5fe539df28171cbcc8a73c50c305ff1a4032e179d67c99cd21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
