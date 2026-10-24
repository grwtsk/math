# Verification target: GRWTSK.Analysis.DualNumber.Variant9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de4a83e7a7b2473513ece3872cf00817ba94ae43",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/DualNumber/Variant9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/DualNumber/Variant9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092.lean/index.md) · [Full source](../../../../mathematics/Analysis/DualNumber/Variant9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de4a83e7a7b2473513ece3872cf00817ba94ae43`.

Source path: `GRWTSK/Analysis/DualNumber/Variant9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/DualNumber/Variant9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DualNumber` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.TrivSqZeroExt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_eps](../../../../mathematics/Analysis/DualNumber/Variant9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092.lean/declarations/exp-eps--cd033bf2eb83ec7e05ea544e.md) | 31 | `result-track:cd033bf2eb83ec7e05ea544e061515a032493fb5d788e3fe76d06fe62bca7b72` |
| 2 | `theorem` | [exp_smul_eps](../../../../mathematics/Analysis/DualNumber/Variant9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092.lean/declarations/exp-smul-eps--bd7ead290081bff4195d17f1.md) | 35 | `result-track:bd7ead290081bff4195d17f169638ddc738f2ab6e1b1b65d0b3bdccd774713f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
