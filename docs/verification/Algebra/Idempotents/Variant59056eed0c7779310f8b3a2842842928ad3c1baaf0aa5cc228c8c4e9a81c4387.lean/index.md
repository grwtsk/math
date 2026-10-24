# Verification target: GRWTSK.Algebra.Idempotents.Variant59056eed0c7779310f8b3a2842842928ad3c1baaf0aa5cc228c8c4e9a81c4387

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "180c686a7a779d91b1c36e7b06e0bcb22d4a73ec",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Idempotents/Variant59056eed0c7779310f8b3a2842842928ad3c1baaf0aa5cc228c8c4e9a81c4387.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Idempotents/Variant59056eed0c7779310f8b3a2842842928ad3c1baaf0aa5cc228c8c4e9a81c4387.lean/index.md) · [Full source](../../../../mathematics/Algebra/Idempotents/Variant59056eed0c7779310f8b3a2842842928ad3c1baaf0aa5cc228c8c4e9a81c4387.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `180c686a7a779d91b1c36e7b06e0bcb22d4a73ec`.

Source path: `GRWTSK/Algebra/Idempotents/Variant59056eed0c7779310f8b3a2842842928ad3c1baaf0aa5cc228c8c4e9a81c4387.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Idempotents/Variant59056eed0c7779310f8b3a2842842928ad3c1baaf0aa5cc228c8c4e9a81c4387.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Idempotents` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [idempotent](../../../../mathematics/Algebra/Idempotents/Variant59056eed0c7779310f8b3a2842842928ad3c1baaf0aa5cc228c8c4e9a81c4387.lean/declarations/idempotent--05ed3930cc3d6f7170003cea.md) | 34 | `declaration-track:05ed3930cc3d6f7170003cea97f1be0225466d59bfce82a0011785ae9fda6613` |
| 2 | `lemma` | [decompose_eq_mul_idempotent](../../../../mathematics/Algebra/Idempotents/Variant59056eed0c7779310f8b3a2842842928ad3c1baaf0aa5cc228c8c4e9a81c4387.lean/declarations/decompose-eq-mul-idempotent--7d6417602ba5546c4a2e2616.md) | 37 | `result-track:7d6417602ba5546c4a2e2616fdcb221b79682f16cab98283dc53e3731b5ba4f0` |
| 3 | `lemma` | [isIdempotentElem_idempotent](../../../../mathematics/Algebra/Idempotents/Variant59056eed0c7779310f8b3a2842842928ad3c1baaf0aa5cc228c8c4e9a81c4387.lean/declarations/isidempotentelem-idempotent--f9c6e5a0938a7314706ddff6.md) | 41 | `result-track:f9c6e5a0938a7314706ddff627af52049016264243660d657a648668aa225ad3` |
| 4 | `theorem` | [completeOrthogonalIdempotents_idempotent](../../../../mathematics/Algebra/Idempotents/Variant59056eed0c7779310f8b3a2842842928ad3c1baaf0aa5cc228c8c4e9a81c4387.lean/declarations/completeorthogonalidempotents-idempotent--d5ace97ce676689bb8c9b9f7.md) | 47 | `result-track:d5ace97ce676689bb8c9b9f7059f5ddb136982a21eb6c1e8fe6981f606a222e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
