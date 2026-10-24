# Verification target: GRWTSK.Algebra.LinearAlgebra.Fin.Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b282e6d15a9dd68942bd39d8dea09d8e4cca6230",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Fin/Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b282e6d15a9dd68942bd39d8dea09d8e4cca6230`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Fin/Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Fin/Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkFinCons](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852.lean/declarations/mkfincons--59a7b2fc5ba9bd0fe23181cf.md) | 40 | `declaration-track:59a7b2fc5ba9bd0fe23181cfbb78986cd607c47dcff0d749068d364bab2d9e92` |
| 2 | `theorem` | [coe_mkFinCons](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852.lean/declarations/coe-mkfincons--653c74049085b611febc49ea.md) | 56 | `result-track:653c74049085b611febc49eab7fa35b692a90a83a666668f40f780dd04c69b07` |
| 3 | `def` | [mkFinConsOfLE](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852.lean/declarations/mkfinconsofle--485b8e4dd25ebecf66c01de1.md) | 65 | `declaration-track:485b8e4dd25ebecf66c01de12128074c8c3a0553b4125d5ed2adee5f4028303b` |
| 4 | `theorem` | [coe_mkFinConsOfLE](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852.lean/declarations/coe-mkfinconsofle--68c4d1ca6b0f091a1d62b3e9.md) | 73 | `result-track:68c4d1ca6b0f091a1d62b3e976cb27f8c4b229f9cc220a9211dd79ddb4e1b4be` |
| 5 | `def` | [finTwoProd](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852.lean/declarations/fintwoprod--d9f5fefd3103d8afe6ab2bfd.md) | 81 | `declaration-track:d9f5fefd3103d8afe6ab2bfd16e3700167d6da239e0762eef0fbb4e9e3c45fab` |
| 6 | `theorem` | [finTwoProd_zero](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852.lean/declarations/fintwoprod-zero--0bbd96c7c0f9086fcd44aa31.md) | 85 | `result-track:0bbd96c7c0f9086fcd44aa31ca48586f2c8aafb1c4e9bbcd4ced9a7a366c62ae` |
| 7 | `theorem` | [finTwoProd_one](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852.lean/declarations/fintwoprod-one--93fcf5ed06dd68499dfa7c8b.md) | 89 | `result-track:93fcf5ed06dd68499dfa7c8b857c48f8bff316a4235c2d49bbd112d30b8f9dde` |
| 8 | `theorem` | [coe_finTwoProd_repr](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variantbea816a30c1c4a54cd6aa0c9467025e5cab018ddf7535102e51ff34aac228852.lean/declarations/coe-fintwoprod-repr--69422c1c9ca9ac1ab813b5c9.md) | 93 | `result-track:69422c1c9ca9ac1ab813b5c92df5c7c0d313f9d5dcb2b7e1d33bbfa025a602ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
