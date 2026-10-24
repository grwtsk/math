# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PP.Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47f6cd6bd30dffd5fe33d4e68eb9edfd3b283ecf",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47f6cd6bd30dffd5fe33d4e68eb9edfd3b283ecf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideA.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.PPKernel` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.PPOffDiag` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumA2g](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/suma2g--f4b138a9fdedcf837ee778e7.md) | 70 | `declaration-track:f4b138a9fdedcf837ee778e74f67aba6a964ac9ce1a9af25b777aeb1f94cff93` |
| 2 | `lemma` | [Setting.log_X](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/setting-log-x--7610fb4fee44a29dcedf98e2.md) | 80 | `result-track:7610fb4fee44a29dcedf98e25f37f343ffc7c3e561229fba43c23b0d67813aeb` |
| 3 | `lemma` | [LocalHypsCore.L_add_one_le_X](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/localhypscore-l-add-one-le-x--8c27407d78b4e3c63f6d48e5.md) | 83 | `result-track:8c27407d78b4e3c63f6d48e59b68d16c86419e4ed626b7f1c5419a02a0f0c5e5` |
| 4 | `lemma` | [LocalHypsCore.two_le_X](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/localhypscore-two-le-x--8cb08b67dbf08f6ba12dbb25.md) | 86 | `result-track:8cb08b67dbf08f6ba12dbb2538bfd3fa86774de9354d762d516ed32666875d99` |
| 5 | `lemma` | [LocalHypsCore.L_le_X](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/localhypscore-l-le-x--eb7139d549f1c2fc8121b7e5.md) | 89 | `result-track:eb7139d549f1c2fc8121b7e50aa83a85bcc1bb7126eaafc174cb0e6ad28e39e5` |
| 6 | `theorem` | [sum_a2g_upper'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/sum-a2g-upper--e0edc4093c43473f7e8d03eb.md) | 102 | `result-track:e0edc4093c43473f7e8d03ebfaaecba3656401ac8493c33bc52bbe467a258cba` |
| 7 | `theorem` | [sum_a2g_lower'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/sum-a2g-lower--9c4d52272ccc0ca388b89355.md) | 126 | `result-track:9c4d52272ccc0ca388b89355cefd90890faeaca64811d1f89b704b20c6ef603e` |
| 8 | `lemma` | [sum_sum_eq_diag_add_offdiag](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/sum-sum-eq-diag-add-offdiag--053c5f1673b60afd605e4148.md) | 181 | `result-track:053c5f1673b60afd605e4148ce1303714930ba88a681dad0971b308524d82d31` |
| 9 | `lemma` | [Mform_PX_PX](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/mform-px-px--7e489be6c9e18fc29197036a.md) | 193 | `result-track:7e489be6c9e18fc29197036aaf0781654d48f152fcb3766dfac8b0a2a51c7a87` |
| 10 | `lemma` | [diag_estimate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/diag-estimate--b495954734b59be69656d046.md) | 257 | `result-track:b495954734b59be69656d046605c3485504514d43183f1333b3a039c083c2c54` |
| 11 | `lemma` | [O2_estimate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/o2-estimate--42692fcf23ceb82b525b18e4.md) | 290 | `result-track:42692fcf23ceb82b525b18e4bcc2ddcae0d3d01699ff3631a455b6a35f0d228d` |
| 12 | `theorem` | [prop_PP](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/prop-pp--114ad314af17be8fd3b9a84e.md) | 340 | `result-track:114ad314af17be8fd3b9a84e13ab80d51c61ed62f1157ecd6a8ebecd33798394` |
| 13 | `theorem` | [sum_a2g_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/sum-a2g-lower--e3c275ea88ace65e337f792b.md) | 473 | `result-track:e3c275ea88ace65e337f792b56ae3c5e055220a8dff5266c2a6745f2aa6dfbe6` |
| 14 | `theorem` | [sum_a2g_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/declarations/sum-a2g-upper--2a3adb61716e9eee1d68000e.md) | 480 | `result-track:2a3adb61716e9eee1d68000ec9dbc113a7d92fb04497fd61a323b402545f7921` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
