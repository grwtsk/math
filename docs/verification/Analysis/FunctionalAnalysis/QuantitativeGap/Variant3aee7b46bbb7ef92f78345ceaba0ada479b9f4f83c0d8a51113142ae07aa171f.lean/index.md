# Verification target: GRWTSK.Analysis.FunctionalAnalysis.QuantitativeGap.Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0a62295f3eba08c1039e0bd391242348710045f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0a62295f3eba08c1039e0bd391242348710045f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProtectedProjector](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean/declarations/protectedprojector--b9f4bff5e10eadf429f26fe0.md) | 31 | `declaration-track:b9f4bff5e10eadf429f26fe0ccf66a0854bec56da60cc6f2a958265c173a897b` |
| 2 | `def` | [ProtectedProjector.complement](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean/declarations/protectedprojector-complement--00fd8a40e001fceab1cb7768.md) | 39 | `declaration-track:00fd8a40e001fceab1cb7768dc4e0f994fb95a4d36df1ded57cea06cc128d22e` |
| 3 | `def` | [CoerciveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean/declarations/coerciveon--ef7ff5e59db54a98456d70b5.md) | 43 | `declaration-track:ef7ff5e59db54a98456d70b543bd9fa95d4220e4a6f8b1587d554e352b2c2fb8` |
| 4 | `theorem` | [coerciveOn_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean/declarations/coerciveon-mono--4932cde0d4413f63e7e384ef.md) | 48 | `result-track:4932cde0d4413f63e7e384ef8697e520bdb7d984bf9f304730954f9c5aec916f` |
| 5 | `theorem` | [pullback_coerciveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean/declarations/pullback-coerciveon--6a3a5324749d46de257e299c.md) | 56 | `result-track:6a3a5324749d46de257e299cd2416bd3a96ee9ddc9e25f8d78751e80d63d46cc` |
| 6 | `theorem` | [kernel_eq_protected_range](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean/declarations/kernel-eq-protected-range--e3971ca59f8b317261ba1619.md) | 83 | `result-track:e3971ca59f8b317261ba1619ffad42bca8db65f0c109857663284f1e20c1e85c` |
| 7 | `theorem` | [positive_eigenvalue_lower_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean/declarations/positive-eigenvalue-lower-bound--c6c240291e4d8c67c12a83f1.md) | 110 | `result-track:c6c240291e4d8c67c12a83f1300f1a15de21d26fc74b11f0fb7d3a5e7bb1e5d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
