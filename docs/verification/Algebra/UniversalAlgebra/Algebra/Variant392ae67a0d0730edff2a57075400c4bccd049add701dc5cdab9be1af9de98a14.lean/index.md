# Verification target: GRWTSK.Algebra.UniversalAlgebra.Algebra.Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d710ef84c943311fff74f46b84ba4a01e78969a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d710ef84c943311fff74f46b84ba4a01e78969a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [algebraMap_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/declarations/algebramap-mono--c088ebb2aa7279c6213945e8.md) | 33 | `result-track:c088ebb2aa7279c6213945e8636d93b5e5dea075dafca3c15888e024f95120a2` |
| 2 | `lemma` | [GCongr.algebraMap_le_algebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/declarations/gcongr-algebramap-le-algebramap--3e737753e5d659297895fd30.md) | 39 | `result-track:3e737753e5d659297895fd3006507759e278c67706032d449c9adbcdc6a60961` |
| 3 | `lemma` | [algebraMap_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/declarations/algebramap-nonneg--62eff78334836897ce9f794a.md) | 42 | `result-track:62eff78334836897ce9f794a6dbd156a0c15b91e8fb4af66247dfb2dc25796db` |
| 4 | `lemma` | [algebraMap_le_algebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/declarations/algebramap-le-algebramap--4a3cbc7b6911ce95590fa6e8.md) | 52 | `result-track:4a3cbc7b6911ce95590fa6e8dedfd3022292c9446ca0a5b2626c43b22da69dc4` |
| 5 | `lemma` | [algebraMap_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/declarations/algebramap-strictmono--459e4040da72ed4e6a78d691.md) | 61 | `result-track:459e4040da72ed4e6a78d691ecd17e07c69bfda7550637dbae5f2a43a105a2e9` |
| 6 | `lemma` | [GCongr.algebraMap_lt_algebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/declarations/gcongr-algebramap-lt-algebramap--836b7979bff9c8f273a5a0d0.md) | 67 | `result-track:836b7979bff9c8f273a5a0d0e59a47d0d55d299385318afb91601cb215eac9c1` |
| 7 | `lemma` | [algebraMap_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/declarations/algebramap-pos--167d0e9d47b013f518b8a837.md) | 70 | `result-track:167d0e9d47b013f518b8a8372e448fab01112d5f0fc63c9e31cc905d9a17fca2` |
| 8 | `lemma` | [algebraMap_lt_algebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/declarations/algebramap-lt-algebramap--d3506325cb4a9fa093655d7d.md) | 76 | `result-track:d3506325cb4a9fa093655d7dcb64a4a09b58f9d18f533040ebdff0f03f2e5ef7` |
| 9 | `def` | [evalAlgebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/declarations/evalalgebramap--3abd69b67be0c7be822b11c4.md) | 87 | `declaration-track:3abd69b67be0c7be822b11c49dd3455253e991894214301bacfe34f7e0723fac` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/declarations/example--7e6d32012128c9313df4ebd8.md) | 119 | `declaration-track:7e6d32012128c9313df4ebd86cb2ec7a08e3fb6ab2de2a722f173fae747d671d` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/declarations/example--93c3cf0a9a895898a1c73b9a.md) | 123 | `declaration-track:93c3cf0a9a895898a1c73b9a6ed3cccf1b042e2b2b3cf63b5da30e4ed1a2c288` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/declarations/example--178625cfa42b1128f583615f.md) | 127 | `declaration-track:178625cfa42b1128f583615f8119b6fecdcbc4edba3ba766badb8ec34bd5e330` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
