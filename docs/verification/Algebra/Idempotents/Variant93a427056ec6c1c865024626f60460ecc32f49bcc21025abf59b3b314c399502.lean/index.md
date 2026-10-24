# Verification target: GRWTSK.Algebra.Idempotents.Variant93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f6705eead7c810c5a8b37fd913752363a4a9d1c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Idempotents/Variant93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Idempotents/Variant93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502.lean/index.md) · [Full source](../../../../mathematics/Algebra/Idempotents/Variant93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f6705eead7c810c5a8b37fd913752363a4a9d1c`.

Source path: `GRWTSK/Algebra/Idempotents/Variant93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Idempotents/Variant93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Idempotents` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [idempotent](../../../../mathematics/Algebra/Idempotents/Variant93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502.lean/declarations/idempotent--3c0c42f11976d091d08aaf8e.md) | 26 | `declaration-track:3c0c42f11976d091d08aaf8e29c6d9b0aff7a094811b8c4b9d4219616c740aac` |
| 2 | `lemma` | [decompose_eq_mul_idempotent](../../../../mathematics/Algebra/Idempotents/Variant93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502.lean/declarations/decompose-eq-mul-idempotent--c4b6567ecdef461fadba83a3.md) | 29 | `result-track:c4b6567ecdef461fadba83a310eef6e7ec5aef6bb5bfbec0ef3ac147d52d4bf6` |
| 3 | `lemma` | [isIdempotentElem_idempotent](../../../../mathematics/Algebra/Idempotents/Variant93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502.lean/declarations/isidempotentelem-idempotent--d002d779cea5670f1533e63d.md) | 33 | `result-track:d002d779cea5670f1533e63d33bfd76f4b4dbd6c780d80202762010da9d48ddc` |
| 4 | `theorem` | [completeOrthogonalIdempotents_idempotent](../../../../mathematics/Algebra/Idempotents/Variant93a427056ec6c1c865024626f60460ecc32f49bcc21025abf59b3b314c399502.lean/declarations/completeorthogonalidempotents-idempotent--cb7d5db8864d7a17e9ea8a17.md) | 39 | `result-track:cb7d5db8864d7a17e9ea8a178a71ab38a106f37e937ba31d7a9b5cb643adb554` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
