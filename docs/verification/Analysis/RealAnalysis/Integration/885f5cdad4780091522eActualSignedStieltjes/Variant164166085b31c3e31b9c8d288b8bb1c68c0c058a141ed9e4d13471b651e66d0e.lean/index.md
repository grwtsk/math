# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.885f5cdad4780091522eActualSignedStieltjes.Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "265ed8d2fb9c943b26c7ceeef2835af8f54ef0cf",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `265ed8d2fb9c943b26c7ceeef2835af8f54ef0cf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `IntegerWitnessTransfer` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/signedcoefficient--3890a7407e3b65dbffbeda8b.md) | 16 | `declaration-track:3890a7407e3b65dbffbeda8b5f7aee6b0961b51640e064b65d87ae8b1e452412` |
| 2 | `theorem` | [signedCoefficient_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/signedcoefficient-zero--1fc3d57cf26e4e5f4530a6d0.md) | 19 | `result-track:1fc3d57cf26e4e5f4530a6d07c5def086823821ba4e7b44cc9d905518d416e2a` |
| 3 | `theorem` | [signedCoefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/signedcoefficient-pos--0357875aa6043d7c496d4491.md) | 22 | `result-track:0357875aa6043d7c496d449187293a1c450dff21824ac07ca618466707b591a4` |
| 4 | `theorem` | [signedCoefficient_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/signedcoefficient-one--9fc9342eef97f499e2104c38.md) | 26 | `result-track:9fc9342eef97f499e2104c38ba5d8d5fe2eb008e5762438405af31652f8bcc10` |
| 5 | `theorem` | [cumulative_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/cumulative-eq--e912f6f61ab18916f401d0b5.md) | 29 | `result-track:e912f6f61ab18916f401d0b5b3dba30320178140199ee01806eb2b6299b45a84` |
| 6 | `theorem` | [cumulative_eq_intFloor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/cumulative-eq-intfloor--45ce1b5c73341e4552f14152.md) | 45 | `result-track:45ce1b5c73341e4552f141529be3b0d02b59f50faf4eb619ce8d1925262b8fac` |
| 7 | `theorem` | [weighted_sum_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/weighted-sum-eq--b99c991632ac0fa8008e0476.md) | 50 | `result-track:b99c991632ac0fa8008e047693a5077f4ee7ca31e7e1ec96f56e04744c609804` |
| 8 | `theorem` | [actual_derivative_integrable_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/actual-derivative-integrable-icc--e887c8e2e3b71ef6d18116c9.md) | 61 | `result-track:e887c8e2e3b71ef6d18116c983a9e347bbb8172d0d0584a7b998826eae83ab9c` |
| 9 | `theorem` | [actual_finite_signed_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/actual-finite-signed-integrable--f3aa4dcc40533604730ffe81.md) | 66 | `result-track:f3aa4dcc40533604730ffe81d697ff3d62b30a6d738e67dcb79c1053b5661795` |
| 10 | `theorem` | [actual_finite_stieltjes](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/actual-finite-stieltjes--4e5673e54a10ab0bf57da1f6.md) | 77 | `result-track:4e5673e54a10ab0bf57da1f636c63b16e7f0f815e3bcd2b9626ae4d03e32d8bf` |
| 11 | `theorem` | [actual_derivative_zero_above](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/actual-derivative-zero-above--3ceb405d8004b90536ce35a5.md) | 93 | `result-track:3ceb405d8004b90536ce35a587929835779b9449f53eb207c31303e6e56c6caf` |
| 12 | `theorem` | [actual_signed_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/actual-signed-integrable--d759e246c641d3e05992f41f.md) | 101 | `result-track:d759e246c641d3e05992f41fdc848852f9bf7e106760f2e03a3ec6be01a451a1` |
| 13 | `theorem` | [actual_full_stieltjes](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/actual-full-stieltjes--2cfe2738bd3c5daaff50c1c3.md) | 120 | `result-track:2cfe2738bd3c5daaff50c1c33bc3bf9b56bc49e89a0167342d59d40be4182609` |
| 14 | `def` | [signedLogKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/signedlogkernel--140a587069f7c228c37667a3.md) | 134 | `declaration-track:140a587069f7c228c37667a390209b47d65347caf8e9d7e89223bf811f10f432` |
| 15 | `theorem` | [actual_log_kernel_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/actual-log-kernel-eq--64a800526ad26f7510f3dc32.md) | 139 | `result-track:64a800526ad26f7510f3dc320c26cf64c04d303fbcc04041004b342d713f8769` |
| 16 | `theorem` | [actual_log_signed_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/actual-log-signed-integrable--52868efd6dde158210a3a126.md) | 146 | `result-track:52868efd6dde158210a3a12613f8010b3671f9e0adfc2403521c750ddb806701` |
| 17 | `theorem` | [actual_log_stieltjes](../../../../../../mathematics/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/declarations/actual-log-stieltjes--2a07c74d2a098078a167becb.md) | 153 | `result-track:2a07c74d2a098078a167becba8753775d6748daa57dddc4e6210848c660293cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
