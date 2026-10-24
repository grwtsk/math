# Verification target: GRWTSK.Algebra.Radical.Variantd5403a1a925db3b2bcaabd935e55259a0d8517e36bce755a4586b175110781b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05d1e8336393b2abc6f17b4c22d269a2dc146d79",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Radical/Variantd5403a1a925db3b2bcaabd935e55259a0d8517e36bce755a4586b175110781b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Radical/Variantd5403a1a925db3b2bcaabd935e55259a0d8517e36bce755a4586b175110781b7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Radical/Variantd5403a1a925db3b2bcaabd935e55259a0d8517e36bce755a4586b175110781b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05d1e8336393b2abc6f17b4c22d269a2dc146d79`.

Source path: `GRWTSK/Algebra/Radical/Variantd5403a1a925db3b2bcaabd935e55259a0d8517e36bce755a4586b175110781b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Radical/Variantd5403a1a925db3b2bcaabd935e55259a0d8517e36bce755a4586b175110781b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.GradedAlgebra.Homogeneous.Ideal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ideal.IsHomogeneous.isPrime_of_homogeneous_mem_or_mem](../../../../mathematics/Algebra/Radical/Variantd5403a1a925db3b2bcaabd935e55259a0d8517e36bce755a4586b175110781b7.lean/declarations/ideal-ishomogeneous-isprime-of-homogeneous-mem-or-mem--6eeb81bd95245fb6a898327e.md) | 45 | `result-track:6eeb81bd95245fb6a898327e7b95065445c6d947dd56a8256cf14c9726506279` |
| 2 | `theorem` | [Ideal.IsHomogeneous.isPrime_iff](../../../../mathematics/Algebra/Radical/Variantd5403a1a925db3b2bcaabd935e55259a0d8517e36bce755a4586b175110781b7.lean/declarations/ideal-ishomogeneous-isprime-iff--fcffcee1ed951c8ae413ce5c.md) | 136 | `result-track:fcffcee1ed951c8ae413ce5c590c10361712da371e1646ff87a5a4e7ee1aa380` |
| 3 | `theorem` | [Ideal.IsPrime.homogeneousCore](../../../../mathematics/Algebra/Radical/Variantd5403a1a925db3b2bcaabd935e55259a0d8517e36bce755a4586b175110781b7.lean/declarations/ideal-isprime-homogeneouscore--01376a028467cca9f2e289b7.md) | 145 | `result-track:01376a028467cca9f2e289b7ef9a53c331cc26385fbadd328dc27310c1d8054b` |
| 4 | `theorem` | [Ideal.IsHomogeneous.radical_eq](../../../../mathematics/Algebra/Radical/Variantd5403a1a925db3b2bcaabd935e55259a0d8517e36bce755a4586b175110781b7.lean/declarations/ideal-ishomogeneous-radical-eq--0d1cd5e0b3e19740856493f7.md) | 155 | `result-track:0d1cd5e0b3e19740856493f77d315594618f06be1ff853dd643f9967f93c0dd3` |
| 5 | `theorem` | [Ideal.IsHomogeneous.radical](../../../../mathematics/Algebra/Radical/Variantd5403a1a925db3b2bcaabd935e55259a0d8517e36bce755a4586b175110781b7.lean/declarations/ideal-ishomogeneous-radical--c4cf1ba4747013025023d703.md) | 166 | `result-track:c4cf1ba4747013025023d703a99e6719fd2a01ab84231007c1e2d7072451f7c2` |
| 6 | `def` | [HomogeneousIdeal.radical](../../../../mathematics/Algebra/Radical/Variantd5403a1a925db3b2bcaabd935e55259a0d8517e36bce755a4586b175110781b7.lean/declarations/homogeneousideal-radical--2a43136624ce318dfaaa8218.md) | 172 | `declaration-track:2a43136624ce318dfaaa82180c7293722a123f6907e39dfb5c913347a23a42ad` |
| 7 | `theorem` | [HomogeneousIdeal.coe_radical](../../../../mathematics/Algebra/Radical/Variantd5403a1a925db3b2bcaabd935e55259a0d8517e36bce755a4586b175110781b7.lean/declarations/homogeneousideal-coe-radical--183cbc92799b6475211d8651.md) | 176 | `result-track:183cbc92799b6475211d8651f02c6a28773e608d118dcefaa9447fe0a86fa6df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
