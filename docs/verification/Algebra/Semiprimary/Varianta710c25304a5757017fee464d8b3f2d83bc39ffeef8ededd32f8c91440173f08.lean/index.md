# Verification target: GRWTSK.Algebra.Semiprimary.Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "004ab793a749c765efed87564c30aafb4610883d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Semiprimary/Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Semiprimary/Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08.lean/index.md) · [Full source](../../../../mathematics/Algebra/Semiprimary/Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `004ab793a749c765efed87564c30aafb4610883d`.

Source path: `GRWTSK/Algebra/Semiprimary/Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Semiprimary/Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson.Radical` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsSimpleModule.jacobson_eq_bot](../../../../mathematics/Algebra/Semiprimary/Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08.lean/declarations/issimplemodule-jacobson-eq-bot--9f35510af3c1aeeb5ae259f5.md) | 32 | `result-track:9f35510af3c1aeeb5ae259f524cce6a2bd13a53ea5b52afbfe764ec0057aafff` |
| 2 | `theorem` | [IsSemisimpleModule.jacobson_eq_bot](../../../../mathematics/Algebra/Semiprimary/Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08.lean/declarations/issemisimplemodule-jacobson-eq-bot--ccd7b15926237cb7090273ea.md) | 35 | `result-track:ccd7b15926237cb7090273ea6827f43b5ce63b01d86474c98d804b53129f9a29` |
| 3 | `theorem` | [IsSemisimpleRing.jacobson_eq_bot](../../../../mathematics/Algebra/Semiprimary/Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08.lean/declarations/issemisimplering-jacobson-eq-bot--6c1f06d94dc6ece05bc2706d.md) | 42 | `result-track:6c1f06d94dc6ece05bc2706d2d5dbca3d31874c2f26694fe94b9e422616e2ad3` |
| 4 | `theorem` | [IsSemisimpleModule.jacobson_le_ker](../../../../mathematics/Algebra/Semiprimary/Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08.lean/declarations/issemisimplemodule-jacobson-le-ker--ddb365bd501aa61a2a9ea9cc.md) | 45 | `result-track:ddb365bd501aa61a2a9ea9cc2f685fc5a5aa86b7fe8b3d5fab7c15bd77b6a879` |
| 5 | `theorem` | [IsSemisimpleModule.jacobson_le_annihilator](../../../../mathematics/Algebra/Semiprimary/Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08.lean/declarations/issemisimplemodule-jacobson-le-annihilator--c4d4c5b9d2be23df42881e34.md) | 50 | `result-track:c4d4c5b9d2be23df42881e3457fd26ab0fae5711bc9758f30493f9a4240e5eda` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiprimary/Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08.lean/declarations/instance--87d310bfb5ea38c69eb64f2d.md) | 56 | `declaration-track:87d310bfb5ea38c69eb64f2de8bab9a0ba1f200f5703b98f35ab6eab8fd9a5ef` |
| 7 | `class` | [IsSemiprimaryRing](../../../../mathematics/Algebra/Semiprimary/Varianta710c25304a5757017fee464d8b3f2d83bc39ffeef8ededd32f8c91440173f08.lean/declarations/issemiprimaryring--a5c29eaaa710780788a04233.md) | 62 | `declaration-track:a5c29eaaa710780788a04233de028a201dd27396b735f6e7dd76abc60f6d6a13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
