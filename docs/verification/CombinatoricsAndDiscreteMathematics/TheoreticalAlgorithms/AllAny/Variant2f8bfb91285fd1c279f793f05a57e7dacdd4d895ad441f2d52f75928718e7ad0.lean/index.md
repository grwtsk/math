# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AllAny.Variant2f8bfb91285fd1c279f793f05a57e7dacdd4d895ad441f2d52f75928718e7ad0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c1969c260e0af65a2bef3ea3968c52fac41cb34",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant2f8bfb91285fd1c279f793f05a57e7dacdd4d895ad441f2d52f75928718e7ad0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant2f8bfb91285fd1c279f793f05a57e7dacdd4d895ad441f2d52f75928718e7ad0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant2f8bfb91285fd1c279f793f05a57e7dacdd4d895ad441f2d52f75928718e7ad0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c1969c260e0af65a2bef3ea3968c52fac41cb34`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant2f8bfb91285fd1c279f793f05a57e7dacdd4d895ad441f2d52f75928718e7ad0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant2f8bfb91285fd1c279f793f05a57e7dacdd4d895ad441f2d52f75928718e7ad0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [all_iff_forall_prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant2f8bfb91285fd1c279f793f05a57e7dacdd4d895ad441f2d52f75928718e7ad0.lean/declarations/all-iff-forall-prop--3a82a2168ed5b4fe85282299.md) | 29 | `result-track:3a82a2168ed5b4fe8528229908fe40b5d282a5c3f0ec508b81d1c408e3a96bfb` |
| 2 | `theorem` | [any_iff_exists_prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant2f8bfb91285fd1c279f793f05a57e7dacdd4d895ad441f2d52f75928718e7ad0.lean/declarations/any-iff-exists-prop--f0a2feb76781a1adc10537e7.md) | 32 | `result-track:f0a2feb76781a1adc10537e7192092477808c1ed41f54155db628b8c9ccfa8c4` |
| 3 | `theorem` | [any_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant2f8bfb91285fd1c279f793f05a57e7dacdd4d895ad441f2d52f75928718e7ad0.lean/declarations/any-of-mem--5ae6868b9d960185e4d0caa9.md) | 34 | `result-track:5ae6868b9d960185e4d0caa9e0d222efcd4ce34fbd820c1f2cd497227dc8e007` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
