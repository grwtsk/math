# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.AdeleRing.Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd20fdd9133ca603dea367859bc48444416d464e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd20fdd9133ca603dea367859bc48444416d464e`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean.json)

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
| 1 | `def` | [AdeleRing](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/adelering--db2e64d83910ee57a789cc59.md) | 50 | `declaration-track:db2e64d83910ee57a789cc598aad3d1c92b40748a80bec2bf1bb60f39c4e5c23` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/instance--2287e98224b39b15c707bb30.md) | 60 | `declaration-track:2287e98224b39b15c707bb30ac4185f554aabfda3628331cb69616c8c870d536` |
| 3 | `theorem` | [algebraMap_fst_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/algebramap-fst-apply--e1f261b8037b0f678c369438.md) | 63 | `result-track:e1f261b8037b0f678c36943890e4574b60fddd1a4e4fe0e9e483fb2495f87fba` |
| 4 | `theorem` | [algebraMap_snd_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/algebramap-snd-apply--15f7cbdd1b51a235e5281b5c.md) | 67 | `result-track:15f7cbdd1b51a235e5281b5ceeb3398cb741aa42b99fa0fba8008e97fa3dae97` |
| 5 | `theorem` | [algebraMap_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/algebramap-injective--105dfb30ef566f0afededf0d.md) | 70 | `result-track:105dfb30ef566f0afededf0db1068683723a96ab10ba43043b378d2ece1eff62` |
| 6 | `def` | [ofCompletion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/ofcompletion--7d122bee63969f0075fe8b1c.md) | 75 | `declaration-track:7d122bee63969f0075fe8b1cdacf0f8f0a21456f3202309fcb204ab2d6d90d96` |
| 7 | `def` | [ofAdicCompletion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/ofadiccompletion--f3801d44611b371147757847.md) | 80 | `declaration-track:f3801d44611b371147757847f10430e9be80edd8311fec2d4d6a18253fdf1dcb` |
| 8 | `abbrev` | [principalSubgroup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/principalsubgroup--a878b3e0026fa10dc0d2a328.md) | 84 | `declaration-track:a878b3e0026fa10dc0d2a328a13bb0eb282e4ad0bdb3197381e30e97bd5372b7` |
| 9 | `abbrev` | [IdeleGroup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/idelegroup--2b2a59547dd1d336c3e2217e.md) | 91 | `declaration-track:2b2a59547dd1d336c3e2217ec1b2ec6908cbc9d821fd1c1cde1f082604a4bca5` |
| 10 | `def` | [unitEmbedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/unitembedding--b7adc3c1c079d92bf112750c.md) | 97 | `declaration-track:b7adc3c1c079d92bf112750c91e6cd85a020da558607bcb8299c11746fc6f59e` |
| 11 | `def` | [ofCompletion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/ofcompletion--9d81b4854e91814ce875bd77.md) | 102 | `declaration-track:9d81b4854e91814ce875bd7796373cdf7c9383578533e5146f2140d942323da5` |
| 12 | `def` | [ofAdicCompletion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/ofadiccompletion--6ab189462d9db02fba3223f0.md) | 107 | `declaration-track:6ab189462d9db02fba3223f03275a77a4afb9bb8884059a69b199882b005e469` |
| 13 | `abbrev` | [principalSubgroup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/principalsubgroup--8bc3582165c9ad3a7614e64e.md) | 111 | `declaration-track:8bc3582165c9ad3a7614e64e297d899811355a5c1be2672973ce4dab93532ff0` |
| 14 | `abbrev` | [IdeleClassGroup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/ideleclassgroup--e4d4fedf38407eb04bc6a636.md) | 117 | `declaration-track:e4d4fedf38407eb04bc6a6369aa06e52721151875ed722ae91c9fdc79213f914` |
| 15 | `def` | [ofCompletion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/ofcompletion--1404f44d4ae2e9fa3dbfd2ed.md) | 123 | `declaration-track:1404f44d4ae2e9fa3dbfd2ed4ac3d1d22c426f8683a30d1a3024be3112a6c5ef` |
| 16 | `def` | [ofAdicCompletion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/declarations/ofadiccompletion--514fe0b34cdbc142ccd8c80f.md) | 128 | `declaration-track:514fe0b34cdbc142ccd8c80fc1dcedc766386fa1d7d401d805b9f03b5cbb9645` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
