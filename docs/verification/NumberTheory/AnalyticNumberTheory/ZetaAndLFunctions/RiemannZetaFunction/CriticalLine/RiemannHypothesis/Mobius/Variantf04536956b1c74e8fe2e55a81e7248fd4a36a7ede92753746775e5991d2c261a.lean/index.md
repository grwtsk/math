# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Mobius.Variantf04536956b1c74e8fe2e55a81e7248fd4a36a7ede92753746775e5991d2c261a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9099203fd9e396bfd632702f6d4d9078fee9ddd6",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantf04536956b1c74e8fe2e55a81e7248fd4a36a7ede92753746775e5991d2c261a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantf04536956b1c74e8fe2e55a81e7248fd4a36a7ede92753746775e5991d2c261a.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantf04536956b1c74e8fe2e55a81e7248fd4a36a7ede92753746775e5991d2c261a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9099203fd9e396bfd632702f6d4d9078fee9ddd6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantf04536956b1c74e8fe2e55a81e7248fd4a36a7ede92753746775e5991d2c261a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantf04536956b1c74e8fe2e55a81e7248fd4a36a7ede92753746775e5991d2c261a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.EulerProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Number.Mobius` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MobiusDirichletIdentityAuthority](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantf04536956b1c74e8fe2e55a81e7248fd4a36a7ede92753746775e5991d2c261a.lean/declarations/mobiusdirichletidentityauthority--d3897cef90f40cfdd9939fd9.md) | 24 | `declaration-track:d3897cef90f40cfdd9939fd948076f50e3223280cdd8440497498cee3ef5c1e0` |
| 2 | `theorem` | [mobius_dirichlet_identity_sound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantf04536956b1c74e8fe2e55a81e7248fd4a36a7ede92753746775e5991d2c261a.lean/declarations/mobius-dirichlet-identity-sound--de043c5c50b8f4bfda4c0124.md) | 35 | `result-track:de043c5c50b8f4bfda4c012469edda8b0fb771ac9177780bc778208dd40e4b5e` |
| 3 | `theorem` | [finite_mobius_window_not_analytic_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantf04536956b1c74e8fe2e55a81e7248fd4a36a7ede92753746775e5991d2c261a.lean/declarations/finite-mobius-window-not-analytic-identity--5d9b597c3ab1d84db491b9ca.md) | 44 | `result-track:5d9b597c3ab1d84db491b9ca0c046e6716ffb526731ad9eef2f7c1ed2c557361` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
