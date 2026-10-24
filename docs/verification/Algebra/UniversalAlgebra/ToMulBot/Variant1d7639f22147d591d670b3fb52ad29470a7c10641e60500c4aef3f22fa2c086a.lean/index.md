# Verification target: GRWTSK.Algebra.UniversalAlgebra.ToMulBot.Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93958eb969df31a08848584600bf6085bc1df029",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93958eb969df31a08848584600bf6085bc1df029`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.WithZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.TypeTags` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMulBot](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean/declarations/tomulbot--9ba181d287d27ba04b853f35.md) | 28 | `declaration-track:9ba181d287d27ba04b853f35a92525fe6aafa7761f20a7ef601676b93098352c` |
| 2 | `theorem` | [toMulBot_zero](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean/declarations/tomulbot-zero--afa3246db88056fd54d2b8b7.md) | 33 | `result-track:afa3246db88056fd54d2b8b79b7609e6ffcf3a6192412e3bb6da6f85acff5bb3` |
| 3 | `theorem` | [toMulBot_coe](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean/declarations/tomulbot-coe--1f6e374b8d3f37d443543f68.md) | 38 | `result-track:1f6e374b8d3f37d443543f6862f0d8f01746f41a572b72fe3f8c4fd45fc2a76a` |
| 4 | `theorem` | [toMulBot_symm_bot](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean/declarations/tomulbot-symm-bot--5c866cb2b41ef50628f43021.md) | 44 | `result-track:5c866cb2b41ef50628f4302158a3ada2c520d4b1a5ea58eee1487b6cd0138cd0` |
| 5 | `theorem` | [toMulBot_coe_ofAdd](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean/declarations/tomulbot-coe-ofadd--c2c858e2bc3931950aaa6256.md) | 49 | `result-track:c2c858e2bc3931950aaa6256c5a8854339f92556337e4c0c63c459f3d04156bb` |
| 6 | `theorem` | [toMulBot_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean/declarations/tomulbot-strictmono--49a54a165b76dec4ccacdcb3.md) | 56 | `result-track:49a54a165b76dec4ccacdcb38a6bac2eb62351ca92f379d1d1e0ac51c8993be0` |
| 7 | `theorem` | [toMulBot_le](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean/declarations/tomulbot-le--c48d65d74d3bf6ea984a7421.md) | 60 | `result-track:c48d65d74d3bf6ea984a7421c74225c6b0cc6f28e82db6f4d8f6b0d2f6fc5728` |
| 8 | `theorem` | [toMulBot_lt](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean/declarations/tomulbot-lt--fcff2ff00979df69013587db.md) | 65 | `result-track:fcff2ff00979df69013587db4216bcd01355a2064b11a3f8821f4f3dbf44cd5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
