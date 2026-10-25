# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Synonym.Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc41306fa8eef5d35fdc3962b44e43a7d954a635",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc41306fa8eef5d35fdc3962b44e43a7d954a635`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/instance--db42ad7fa54a3c7968e4fc0c.md) | 54 | `declaration-track:db42ad7fa54a3c7968e4fc0cd02faf25ebdb31249353702a1f5f3cb687fbbe2e` |
| 2 | `def` | [toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/todual--9b86751399d0c4a70e6518e7.md) | 58 | `declaration-track:9b86751399d0c4a70e6518e73f64abe337900aa9125fd44489426842ba27b803` |
| 3 | `def` | [ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/ofdual--671d73bfa6aa63a2db7bab50.md) | 63 | `declaration-track:671d73bfa6aa63a2db7bab509f06b180ef69e418ccc7ab829b8aad87a05ffee9` |
| 4 | `theorem` | [toDual_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/todual-symm-eq--efc0404352ee6e2de20f5eea.md) | 68 | `result-track:efc0404352ee6e2de20f5eeaf0e2b9d6f3f8b8b476245cb16508e161694804fa` |
| 5 | `theorem` | [ofDual_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/ofdual-symm-eq--87567bf382644be21809dc82.md) | 72 | `result-track:87567bf382644be21809dc8217c91f17e4e7fdf97590665e7c8e27c104b30852` |
| 6 | `theorem` | [toDual_ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/todual-ofdual--3c9f4aa8d077cd3278c7acb8.md) | 76 | `result-track:3c9f4aa8d077cd3278c7acb83ba35231046d12178f109eea1d585fa9ed9b41d0` |
| 7 | `theorem` | [ofDual_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/ofdual-todual--3ea4c32d4ba42b93d241a732.md) | 81 | `result-track:3ea4c32d4ba42b93d241a732ec0c4bd1503f8f4607c68b41908d69d374fda079` |
| 8 | `theorem` | [toDual_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/todual-inj--04ea1dc4c385f8493ea1bd75.md) | 87 | `result-track:04ea1dc4c385f8493ea1bd759c7be14ac906a1fc9bc0c808869f96d0e36eb8a7` |
| 9 | `theorem` | [ofDual_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/ofdual-inj--5ed8bcc2f597ee527c9f497b.md) | 93 | `result-track:5ed8bcc2f597ee527c9f497b7f9fffd649a256634bcf803f53fd237a8320b78d` |
| 10 | `theorem` | [toDual_le_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/todual-le-todual--37154636d9a8c614f0e88433.md) | 98 | `result-track:37154636d9a8c614f0e88433d273664812e960e2704ca10d96a5accc12716f25` |
| 11 | `theorem` | [toDual_lt_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/todual-lt-todual--eb676c51089f0bb8bb9757ae.md) | 103 | `result-track:eb676c51089f0bb8bb9757ae28de5261c61a710427bd9e68f0f79a3cb5b3f665` |
| 12 | `theorem` | [ofDual_le_ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/ofdual-le-ofdual--4bbbcc84c0abdb5d6cdf5e55.md) | 108 | `result-track:4bbbcc84c0abdb5d6cdf5e556d1c99e31b9e441082ae3438debf561ac0cec8fd` |
| 13 | `theorem` | [ofDual_lt_ofDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/ofdual-lt-ofdual--fbab4eb17e71f1f47e44f02e.md) | 113 | `result-track:fbab4eb17e71f1f47e44f02e1a6a0462ff660d0ecf60d9eb79ad91b978520a14` |
| 14 | `theorem` | [le_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/le-todual--d1843b8cd3e67573c8f91b7e.md) | 117 | `result-track:d1843b8cd3e67573c8f91b7e5e5caa67da40eef06deebbb5268eada578b15ff2` |
| 15 | `theorem` | [lt_toDual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/lt-todual--5d81addd4f48e81847a5b14e.md) | 121 | `result-track:5d81addd4f48e81847a5b14e2699c5eaa66f4b62b62a05aff98bf0a867b92290` |
| 16 | `theorem` | [toDual_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/todual-le--bef70055c2dc47743d84e735.md) | 125 | `result-track:bef70055c2dc47743d84e735a884b7f6cebfa9f145ca24b08b89ea044a2808a0` |
| 17 | `theorem` | [toDual_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/todual-lt--4d87413540c3e0640341e158.md) | 129 | `result-track:4d87413540c3e0640341e15852d3ac893c06c943bfc2e589817156ec95dc7398` |
| 18 | `def` | [rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/rec--44b64b8d4861c08e0c6b1a68.md) | 135 | `declaration-track:44b64b8d4861c08e0c6b1a68fae8a05b56dfb5eaa64a31e898e54a6f459db1dc` |
| 19 | `theorem` | [«forall»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/forall--13246228608aa9de31ae2d0d.md) | 140 | `result-track:13246228608aa9de31ae2d0d71625b418bf10783d8b87c1d7ff8afd27c584cf7` |
| 20 | `theorem` | [«exists»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/exists--ff9751e0a2dafd4886cad4a9.md) | 145 | `result-track:ff9751e0a2dafd4886cad4a9994efec78076a055075cc696dae88ea8d988e20d` |
| 21 | `def` | [Lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/lex--8df0b18677f6c9ad97b4b677.md) | 165 | `declaration-track:8df0b18677f6c9ad97b4b677b461771b9d3456a94081745caf294e05ebb4e8c7` |
| 22 | `def` | [toLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/tolex--546b7fae239732bd06ec32f0.md) | 171 | `declaration-track:546b7fae239732bd06ec32f093dc7bd494ed7ac835499c1945b8bf01643b1698` |
| 23 | `def` | [ofLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/oflex--1f70b9af78475ebc840e94b8.md) | 177 | `declaration-track:1f70b9af78475ebc840e94b8fa28130a411f33b539f996f1740ace0ea7aabb97` |
| 24 | `theorem` | [toLex_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/tolex-symm-eq--9cbea2f60b41eef989b34add.md) | 182 | `result-track:9cbea2f60b41eef989b34add0052a156e2f5a44c231586cadda99d1334d6e33e` |
| 25 | `theorem` | [ofLex_symm_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/oflex-symm-eq--c5653c6601c2fdac92c4854a.md) | 187 | `result-track:c5653c6601c2fdac92c4854a8fc88c4584803a41c178be3ee2659dc8518c2a0f` |
| 26 | `theorem` | [toLex_ofLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/tolex-oflex--c9124d96b5ecddd3d2001c49.md) | 192 | `result-track:c9124d96b5ecddd3d2001c49e85bf740081b59d318efe27b460bbd554a7f89dc` |
| 27 | `theorem` | [ofLex_toLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/oflex-tolex--2dd8fb34b1fc5814ff5a3f54.md) | 197 | `result-track:2dd8fb34b1fc5814ff5a3f54846275193bfacfef823297619e3c5c2aab95aeca` |
| 28 | `theorem` | [toLex_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/tolex-inj--44e0ba290c37901be6205c03.md) | 203 | `result-track:44e0ba290c37901be6205c03fd7ab16b28d4a641489fd1bf208340fd46a5efb5` |
| 29 | `theorem` | [ofLex_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/oflex-inj--aabf883a46e4fa37eaad33e8.md) | 209 | `result-track:aabf883a46e4fa37eaad33e8719a7f129c4fed88e0c7b594e273a1f0db1f2280` |
| 30 | `def` | [Lex.rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variantc3a3f2e7192cc70194a3d5501a444dfd2b5d73c715abcf65276cd70aa2dbd19e.lean/declarations/lex-rec--62c267ff0fe776478bf2ffeb.md) | 214 | `declaration-track:62c267ff0fe776478bf2ffeb532bf5d50ec393195c499e0a2b9eba7e18c4ef6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
