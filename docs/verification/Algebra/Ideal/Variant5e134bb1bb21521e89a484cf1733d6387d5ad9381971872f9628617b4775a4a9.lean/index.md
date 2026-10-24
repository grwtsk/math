# Verification target: GRWTSK.Algebra.Ideal.Variant5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76a9fb5c099410e97347b1b9993d3b2655270ebf",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76a9fb5c099410e97347b1b9993d3b2655270ebf`.

Source path: `GRWTSK/Algebra/Ideal/Variant5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ideal.IsPrime.exists_mem_prime_of_ne_bot](../../../../mathematics/Algebra/Ideal/Variant5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9.lean/declarations/ideal-isprime-exists-mem-prime-of-ne-bot--b83c14bab4da437cd7e149b1.md) | 22 | `result-track:b83c14bab4da437cd7e149b1b37608ce6164d1623e85362387106f2def965238` |
| 2 | `lemma` | [Ideal.setOf_isPrincipal_wellFoundedOn_gt](../../../../mathematics/Algebra/Ideal/Variant5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9.lean/declarations/ideal-setof-isprincipal-wellfoundedon-gt--1ae13d31a06c6e2c06e84891.md) | 37 | `result-track:1ae13d31a06c6e2c06e84891a78f9abec15057933958ff07b820a13151f08e7d` |
| 3 | `lemma` | [WfDvdMonoid.of_setOf_isPrincipal_wellFoundedOn_gt](../../../../mathematics/Algebra/Ideal/Variant5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9.lean/declarations/wfdvdmonoid-of-setof-isprincipal-wellfoundedon-gt--187b599ddf8412a8645d2384.md) | 49 | `result-track:187b599ddf8412a8645d2384c88ce97ffddcf9563c30c99f26adf5ddfb469265` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
