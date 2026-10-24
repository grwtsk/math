# Verification target: GRWTSK.Algebra.Opposite.Variant8d683b0a03a030c94b12f3f64ceb6e0c996b4b16b4a476abe0564bde99ae43d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbfb94c9c729b4eb238bee79073995aa3b465acd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Opposite/Variant8d683b0a03a030c94b12f3f64ceb6e0c996b4b16b4a476abe0564bde99ae43d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Opposite/Variant8d683b0a03a030c94b12f3f64ceb6e0c996b4b16b4a476abe0564bde99ae43d6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Opposite/Variant8d683b0a03a030c94b12f3f64ceb6e0c996b4b16b4a476abe0564bde99ae43d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbfb94c9c729b4eb238bee79073995aa3b465acd`.

Source path: `GRWTSK/Algebra/Opposite/Variant8d683b0a03a030c94b12f3f64ceb6e0c996b4b16b4a476abe0564bde99ae43d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Opposite/Variant8d683b0a03a030c94b12f3f64ceb6e0c996b4b16b4a476abe0564bde99ae43d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.TensorProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Opposite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opAlgEquiv](../../../../mathematics/Algebra/Opposite/Variant8d683b0a03a030c94b12f3f64ceb6e0c996b4b16b4a476abe0564bde99ae43d6.lean/declarations/opalgequiv--88d88290521a4b2738226ea2.md) | 38 | `declaration-track:88d88290521a4b2738226ea28d7f295e4ecd6e590e3cd2cc9a3bf8285c181fde` |
| 2 | `theorem` | [opAlgEquiv_apply](../../../../mathematics/Algebra/Opposite/Variant8d683b0a03a030c94b12f3f64ceb6e0c996b4b16b4a476abe0564bde99ae43d6.lean/declarations/opalgequiv-apply--04a9a8078b31a5b1a55cf3c4.md) | 51 | `result-track:04a9a8078b31a5b1a55cf3c46a3fae98fd2b651997be11af5ee63e0f7205e679` |
| 3 | `theorem` | [opAlgEquiv_symm_apply](../../../../mathematics/Algebra/Opposite/Variant8d683b0a03a030c94b12f3f64ceb6e0c996b4b16b4a476abe0564bde99ae43d6.lean/declarations/opalgequiv-symm-apply--145dc8c738b8a6875d3a12aa.md) | 57 | `result-track:145dc8c738b8a6875d3a12aaab3a46f6e76021c2ad3b86a55c5a3528a01d7a84` |
| 4 | `theorem` | [opAlgEquiv_tmul](../../../../mathematics/Algebra/Opposite/Variant8d683b0a03a030c94b12f3f64ceb6e0c996b4b16b4a476abe0564bde99ae43d6.lean/declarations/opalgequiv-tmul--1838c572ebe8a95b95b3f838.md) | 63 | `result-track:1838c572ebe8a95b95b3f8388c0fe69b2936c919030e14520118fbfb934bd3e3` |
| 5 | `theorem` | [opAlgEquiv_symm_tmul](../../../../mathematics/Algebra/Opposite/Variant8d683b0a03a030c94b12f3f64ceb6e0c996b4b16b4a476abe0564bde99ae43d6.lean/declarations/opalgequiv-symm-tmul--7999e40adc4b618083482d96.md) | 68 | `result-track:7999e40adc4b618083482d96d97643f17fab48f79ebe6858f74c2d7135e9be21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
