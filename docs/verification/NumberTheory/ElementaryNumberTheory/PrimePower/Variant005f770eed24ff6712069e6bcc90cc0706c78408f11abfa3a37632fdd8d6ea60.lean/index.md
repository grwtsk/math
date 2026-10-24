# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimePower.Variant005f770eed24ff6712069e6bcc90cc0706c78408f11abfa3a37632fdd8d6ea60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5120fbbf3850fc55e7bda9b94182923186f13c0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePower/Variant005f770eed24ff6712069e6bcc90cc0706c78408f11abfa3a37632fdd8d6ea60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant005f770eed24ff6712069e6bcc90cc0706c78408f11abfa3a37632fdd8d6ea60.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant005f770eed24ff6712069e6bcc90cc0706c78408f11abfa3a37632fdd8d6ea60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5120fbbf3850fc55e7bda9b94182923186f13c0`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePower/Variant005f770eed24ff6712069e6bcc90cc0706c78408f11abfa3a37632fdd8d6ea60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimePower/Variant005f770eed24ff6712069e6bcc90cc0706c78408f11abfa3a37632fdd8d6ea60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.NumberTheory.PositiveNat` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimePower](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant005f770eed24ff6712069e6bcc90cc0706c78408f11abfa3a37632fdd8d6ea60.lean/declarations/primepower--48fa7c7e38928c3b2e126008.md) | 26 | `declaration-track:48fa7c7e38928c3b2e12600895bf49261dc808a4cbc7675c2a3ad4c6b7ce3974` |
| 2 | `def` | [value](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant005f770eed24ff6712069e6bcc90cc0706c78408f11abfa3a37632fdd8d6ea60.lean/declarations/value--9e29b9bef63b930e0840a499.md) | 34 | `declaration-track:9e29b9bef63b930e0840a49940a32c3b14257e4e85e90c6822550928581fa4f8` |
| 3 | `theorem` | [value_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant005f770eed24ff6712069e6bcc90cc0706c78408f11abfa3a37632fdd8d6ea60.lean/declarations/value-pos--e6f10a2cad964ef7bec1dd5c.md) | 37 | `result-track:e6f10a2cad964ef7bec1dd5ca53f26116abb302e655702802cd235b2c9432fa5` |
| 4 | `theorem` | [value_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant005f770eed24ff6712069e6bcc90cc0706c78408f11abfa3a37632fdd8d6ea60.lean/declarations/value-ne-zero--53d638a5970988c56c7f208d.md) | 40 | `result-track:53d638a5970988c56c7f208d33b2a31c8afbb523d1d63fa01eb8f2bbb9e1a625` |
| 5 | `def` | [asPositiveNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant005f770eed24ff6712069e6bcc90cc0706c78408f11abfa3a37632fdd8d6ea60.lean/declarations/aspositivenat--98441a165d178216c335644c.md) | 43 | `declaration-track:98441a165d178216c335644cbbecb3f16e2a2730a9dc3b304e4476774031d4e0` |
| 6 | `def` | [PrimeLt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant005f770eed24ff6712069e6bcc90cc0706c78408f11abfa3a37632fdd8d6ea60.lean/declarations/primelt--14c03b2461f73c05a25ab17c.md) | 46 | `declaration-track:14c03b2461f73c05a25ab17cf524eb5b3cc9d818deeecaa5babb6d9ac64f7909` |
| 7 | `theorem` | [prime_ne_of_primeLt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePower/Variant005f770eed24ff6712069e6bcc90cc0706c78408f11abfa3a37632fdd8d6ea60.lean/declarations/prime-ne-of-primelt--e556339e342dc25895a06ff0.md) | 49 | `result-track:e556339e342dc25895a06ff0d0439cc3467ef74d984c171e780ada3db664f3a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
