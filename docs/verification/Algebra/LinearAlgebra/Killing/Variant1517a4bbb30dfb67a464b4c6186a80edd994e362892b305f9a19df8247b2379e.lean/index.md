# Verification target: GRWTSK.Algebra.LinearAlgebra.Killing.Variant1517a4bbb30dfb67a464b4c6186a80edd994e362892b305f9a19df8247b2379e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50916b6ee8fd4ca208543bdd2144b36e547d1169",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variant1517a4bbb30dfb67a464b4c6186a80edd994e362892b305f9a19df8247b2379e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant1517a4bbb30dfb67a464b4c6186a80edd994e362892b305f9a19df8247b2379e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant1517a4bbb30dfb67a464b4c6186a80edd994e362892b305f9a19df8247b2379e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50916b6ee8fd4ca208543bdd2144b36e547d1169`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Killing/Variant1517a4bbb30dfb67a464b4c6186a80edd994e362892b305f9a19df8247b2379e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Killing/Variant1517a4bbb30dfb67a464b4c6186a80edd994e362892b305f9a19df8247b2379e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Nilpotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceForm](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant1517a4bbb30dfb67a464b4c6186a80edd994e362892b305f9a19df8247b2379e.lean/declarations/traceform--a6cceba20951d19cc71cbde2.md) | 54 | `declaration-track:a6cceba20951d19cc71cbde223ce9a626d2e6fdc6b8ca4cd780ddb0eb9817ada` |
| 2 | `lemma` | [traceForm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant1517a4bbb30dfb67a464b4c6186a80edd994e362892b305f9a19df8247b2379e.lean/declarations/traceform-apply-apply--20b93fb1ff10fae1e65471ff.md) | 57 | `result-track:20b93fb1ff10fae1e65471ff1c1b97bfe165fdacbac828479a623673db8fb301` |
| 3 | `lemma` | [traceForm_comm](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant1517a4bbb30dfb67a464b4c6186a80edd994e362892b305f9a19df8247b2379e.lean/declarations/traceform-comm--50e4de32c2faed866bed7156.md) | 61 | `result-track:50e4de32c2faed866bed7156ef3285f4eaf71388a326b76d7681fa2b40102251` |
| 4 | `lemma` | [traceForm_flip](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant1517a4bbb30dfb67a464b4c6186a80edd994e362892b305f9a19df8247b2379e.lean/declarations/traceform-flip--204e14c846fc3ef5dc13f8b7.md) | 64 | `result-track:204e14c846fc3ef5dc13f8b710c711a872c6837d3aa536d9da0661e1f2ef6a05` |
| 5 | `lemma` | [traceForm_apply_lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant1517a4bbb30dfb67a464b4c6186a80edd994e362892b305f9a19df8247b2379e.lean/declarations/traceform-apply-lie-apply--ed03be3b298a615ae4332e83.md) | 67 | `result-track:ed03be3b298a615ae4332e8377d4880739010188cee2eeff7e565e6ea3619d30` |
| 6 | `abbrev` | [killingForm](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant1517a4bbb30dfb67a464b4c6186a80edd994e362892b305f9a19df8247b2379e.lean/declarations/killingform--f3def7296898ce49405023cb.md) | 90 | `declaration-track:f3def7296898ce49405023cba351a2a17042541e9d7f642969b80e01745628fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
