# Verification target: GRWTSK.NumberTheory.AdmissibleAbs.Variantcfc66ece722710cc667f08d2527b7e3928ae10f25c3cbe561c5754a200ef4e08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71f09327ac50529eb3ace201eb9b69e99ddcad4d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AdmissibleAbs/Variantcfc66ece722710cc667f08d2527b7e3928ae10f25c3cbe561c5754a200ef4e08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/AdmissibleAbs/Variantcfc66ece722710cc667f08d2527b7e3928ae10f25c3cbe561c5754a200ef4e08.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/AdmissibleAbs/Variantcfc66ece722710cc667f08d2527b7e3928ae10f25c3cbe561c5754a200ef4e08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71f09327ac50529eb3ace201eb9b69e99ddcad4d`.

Source path: `GRWTSK/NumberTheory/AdmissibleAbs/Variantcfc66ece722710cc667f08d2527b7e3928ae10f25c3cbe561c5754a200ef4e08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AdmissibleAbs/Variantcfc66ece722710cc667f08d2527b7e3928ae10f25c3cbe561c5754a200ef4e08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbsoluteValue` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_partition_int](../../../../mathematics/NumberTheory/AdmissibleAbs/Variantcfc66ece722710cc667f08d2527b7e3928ae10f25c3cbe561c5754a200ef4e08.lean/declarations/exists-partition-int--21f47a0cfba001406bd4cd41.md) | 38 | `result-track:21f47a0cfba001406bd4cd41b2827eb1b22e39455129e1d1ca69304f23954824` |
| 2 | `def` | [absIsAdmissible](../../../../mathematics/NumberTheory/AdmissibleAbs/Variantcfc66ece722710cc667f08d2527b7e3928ae10f25c3cbe561c5754a200ef4e08.lean/declarations/absisadmissible--b99f5879bf29b6a813ea1383.md) | 63 | `declaration-track:b99f5879bf29b6a813ea13831161ea60541146a0e0dafd5b2e95ae5807c68c38` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/AdmissibleAbs/Variantcfc66ece722710cc667f08d2527b7e3928ae10f25c3cbe561c5754a200ef4e08.lean/declarations/instance--6ca1126dc161b4c07e99b65a.md) | 69 | `declaration-track:6ca1126dc161b4c07e99b65a44d32574eab10eecd4ab484ac486407248efe805` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
