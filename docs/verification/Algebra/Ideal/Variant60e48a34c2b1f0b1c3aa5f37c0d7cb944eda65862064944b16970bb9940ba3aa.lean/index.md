# Verification target: GRWTSK.Algebra.Ideal.Variant60e48a34c2b1f0b1c3aa5f37c0d7cb944eda65862064944b16970bb9940ba3aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7aea42f80c4113fbbac0d226c3a5e98fce88514a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant60e48a34c2b1f0b1c3aa5f37c0d7cb944eda65862064944b16970bb9940ba3aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant60e48a34c2b1f0b1c3aa5f37c0d7cb944eda65862064944b16970bb9940ba3aa.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant60e48a34c2b1f0b1c3aa5f37c0d7cb944eda65862064944b16970bb9940ba3aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7aea42f80c4113fbbac0d226c3a5e98fce88514a`.

Source path: `GRWTSK/Algebra/Ideal/Variant60e48a34c2b1f0b1c3aa5f37c0d7cb944eda65862064944b16970bb9940ba3aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant60e48a34c2b1f0b1c3aa5f37c0d7cb944eda65862064944b16970bb9940ba3aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ideal.IsPrime.exists_mem_prime_of_ne_bot](../../../../mathematics/Algebra/Ideal/Variant60e48a34c2b1f0b1c3aa5f37c0d7cb944eda65862064944b16970bb9940ba3aa.lean/declarations/ideal-isprime-exists-mem-prime-of-ne-bot--76d291279a8e83a2f56f86f6.md) | 30 | `result-track:76d291279a8e83a2f56f86f6bbd603e5c8e0a983a0c76b82f67c64021e2260c1` |
| 2 | `lemma` | [Ideal.setOf_isPrincipal_wellFoundedOn_gt](../../../../mathematics/Algebra/Ideal/Variant60e48a34c2b1f0b1c3aa5f37c0d7cb944eda65862064944b16970bb9940ba3aa.lean/declarations/ideal-setof-isprincipal-wellfoundedon-gt--2571244a62037fbfb880ff03.md) | 45 | `result-track:2571244a62037fbfb880ff03154ce74bbe342995b6e98f3eeb574f101a0f3885` |
| 3 | `lemma` | [WfDvdMonoid.of_setOf_isPrincipal_wellFoundedOn_gt](../../../../mathematics/Algebra/Ideal/Variant60e48a34c2b1f0b1c3aa5f37c0d7cb944eda65862064944b16970bb9940ba3aa.lean/declarations/wfdvdmonoid-of-setof-isprincipal-wellfoundedon-gt--36d087b45ec49eeafbe48a48.md) | 57 | `result-track:36d087b45ec49eeafbe48a482378909382f9993f66a83d8b5fc13cfc5918956b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
