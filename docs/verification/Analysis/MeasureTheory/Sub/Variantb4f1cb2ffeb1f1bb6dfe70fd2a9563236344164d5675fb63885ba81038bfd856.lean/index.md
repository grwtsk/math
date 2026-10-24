# Verification target: GRWTSK.Analysis.MeasureTheory.Sub.Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5759fd52d1ac0022b9b9b3eb9021539b6bca783",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5759fd52d1ac0022b9b9b3eb9021539b6bca783`.

Source path: `GRWTSK/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSub](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/declarations/instsub--5d685db5bc7995645f8e0976.md) | 33 | `declaration-track:5d685db5bc7995645f8e0976bde0ea80a1b84254651bd1420a9269e16477ff0d` |
| 2 | `theorem` | [sub_def](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/declarations/sub-def--6610238beed8c41576dcec8e.md) | 39 | `result-track:6610238beed8c41576dcec8edbde5eb6966787696cb28ebb7a8c6ac8caeeac66` |
| 3 | `theorem` | [sub_le_of_le_add](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/declarations/sub-le-of-le-add--7bc735391197ecfd56ed8f7d.md) | 42 | `result-track:7bc735391197ecfd56ed8f7df6d8acdcb29543b3659f347157bd61daae45a884` |
| 4 | `theorem` | [sub_eq_zero_of_le](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/declarations/sub-eq-zero-of-le--28da40dd8aecf949cd6e0a6d.md) | 46 | `result-track:28da40dd8aecf949cd6e0a6dc66c4896094ab41924c760acc9d12670ce461be5` |
| 5 | `theorem` | [sub_le](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/declarations/sub-le--858d04f81b29525815213bb8.md) | 50 | `result-track:858d04f81b29525815213bb824a0121889c5e8299a73a76e0f13fc48f508b3bf` |
| 6 | `theorem` | [sub_top](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/declarations/sub-top--c65dc9952343bcef2346a1d9.md) | 55 | `result-track:c65dc9952343bcef2346a1d9c67884e8fdd91659dd9f07c3c0b913e92886d900` |
| 7 | `theorem` | [zero_sub](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/declarations/zero-sub--52e2de0fe50e88f5a74a9855.md) | 60 | `result-track:52e2de0fe50e88f5a74a9855f15ef3ee5b491b7cce80c0284da895c19f3741d8` |
| 8 | `theorem` | [sub_self](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/declarations/sub-self--aabbf71e131bb27587d3022e.md) | 65 | `result-track:aabbf71e131bb27587d3022e15a996e53cba1d1b1c4c89bac31f8d33c750db87` |
| 9 | `theorem` | [sub_apply](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/declarations/sub-apply--6e9b53f58bbce729dbe97540.md) | 71 | `result-track:6e9b53f58bbce729dbe97540c31b3c153d38f9c90b6a424ab1257dc80c374108` |
| 10 | `theorem` | [sub_add_cancel_of_le](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/declarations/sub-add-cancel-of-le--ee7820bac36d2767e44deee3.md) | 99 | `result-track:ee7820bac36d2767e44deee312c54fb4a8af76c23f4257b44a027be97f3f6a6f` |
| 11 | `theorem` | [restrict_sub_eq_restrict_sub_restrict](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/declarations/restrict-sub-eq-restrict-sub-restrict--752f8acf92ecc5e7ef147c05.md) | 104 | `result-track:752f8acf92ecc5e7ef147c050551392de4743865fa10217c5d87fb8e025bd40c` |
| 12 | `theorem` | [sub_apply_eq_zero_of_restrict_le_restrict](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/declarations/sub-apply-eq-zero-of-restrict-le-restrict--3e63787dc08a395c36a34f32.md) | 136 | `result-track:3e63787dc08a395c36a34f32bdf61c8792e4fd6aedd15205e88e6e206566f150` |
| 13 | `instance` | [isFiniteMeasure_sub](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/declarations/isfinitemeasure-sub--969c7eb1774d33f0083a228c.md) | 141 | `declaration-track:969c7eb1774d33f0083a228cdfc1b01fb7df64df2b0a449d895d0df3596e1071` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
