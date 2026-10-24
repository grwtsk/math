# Verification target: GRWTSK.Algebra.Classify.Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e30a49710605b00fc80f2a0821d41abfdcc7aa2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean/index.md) · [Full source](../../../../mathematics/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e30a49710605b00fc80f2a0821d41abfdcc7aa2`.

Source path: `GRWTSK/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.SynthInstance` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Canon` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.DecLevel` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Grind.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getIsCharInst?](../../../../mathematics/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean/declarations/getischarinst--8a0dac46f3598ece0921a65f.md) | 32 | `declaration-track:8a0dac46f3598ece0921a65f01f83233a8b1fd128d1f7b046416b7b08301cdcd` |
| 2 | `def` | [getNoZeroDivInst?](../../../../mathematics/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean/declarations/getnozerodivinst--ac990f19b2a6ebe16917e0dd.md) | 41 | `declaration-track:ac990f19b2a6ebe16917e0dd877322115e6380ca97812e32ff0ffff93c44ec0f` |
| 3 | `def` | [tryCommRing?](../../../../mathematics/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean/declarations/trycommring--0a23cf38de303ed95d0775ed.md) | 48 | `declaration-track:0a23cf38de303ed95d0775ed886d1b819c13ae4cc73bbc979aced9ba4021a434` |
| 4 | `def` | [tryNonCommRing?](../../../../mathematics/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean/declarations/trynoncommring--d5c598de7eb5cbdb1f94cff5.md) | 68 | `declaration-track:d5c598de7eb5cbdb1f94cff58d42fdc1a7024133a2326dc47809609b6296212d` |
| 5 | `def` | [tryCacheAndCommRing?](../../../../mathematics/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean/declarations/trycacheandcommring--925fb09e63432c7c81f2a294.md) | 82 | `declaration-track:925fb09e63432c7c81f2a294d1680025f5be33492b37f1c4e823a4b87f4f1f04` |
| 6 | `def` | [tryCommSemiring?](../../../../mathematics/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean/declarations/trycommsemiring--1876e81f2b7d31421ad57188.md) | 94 | `declaration-track:1876e81f2b7d31421ad571884d6b42c7d6f68438fc044e7345098c2416d8ba7d` |
| 7 | `def` | [tryNonCommSemiring?](../../../../mathematics/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean/declarations/trynoncommsemiring--052775ae9752c2f15a38bcdd.md) | 115 | `declaration-track:052775ae9752c2f15a38bcdd7642415e92b6f35a9d1b14fb17b275b316f14e2f` |
| 8 | `def` | [classify?](../../../../mathematics/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean/declarations/classify--28d5bf6e0b52225aa6dde00d.md) | 129 | `declaration-track:28d5bf6e0b52225aa6dde00d95e7ea9ae5c968c31b89866212f1a5b594003daa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
