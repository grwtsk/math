# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Norm.Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a49e0b975ccf28b87f5aa3e12cb942bce1757c6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a49e0b975ccf28b87f5aa3e12cb942bce1757c6`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/declarations/normseminorm--de4dc7f0355f88ea760422a7.md) | 32 | `declaration-track:de4dc7f0355f88ea760422a7a6942b92f94d1d9b418b591e62ca7b50a3fc9682` |
| 2 | `theorem` | [coe_normSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/declarations/coe-normseminorm--ce8815945a2370ac37470cb2.md) | 38 | `result-track:ce8815945a2370ac37470cb2da9b9b414bce38143a555dfe3bd097891d6cdd81` |
| 3 | `theorem` | [ball_normSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/declarations/ball-normseminorm--997176939058e5ec7a9df277.md) | 41 | `result-track:997176939058e5ec7a9df277afd88eed34b0fd9d1b2afd1caa280c149293b273` |
| 4 | `theorem` | [closedBall_normSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/declarations/closedball-normseminorm--2d3d22c8f0b98ee716ac8949.md) | 46 | `result-track:2d3d22c8f0b98ee716ac8949dfcc26db2731c7f3650bd030d381c60d503db4da` |
| 5 | `theorem` | [absorbent_ball_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/declarations/absorbent-ball-zero--f937e526331a7924555eac32.md) | 53 | `result-track:f937e526331a7924555eac32ce7b37afcb1ac160d42d1cb878cab3e11c686983` |
| 6 | `theorem` | [absorbent_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/declarations/absorbent-ball--598cdafd81178be64e8733f3.md) | 58 | `result-track:598cdafd81178be64e8733f3072655f1e29099e745f71519b3b3a00f71268723` |
| 7 | `theorem` | [balanced_ball_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/declarations/balanced-ball-zero--4ad4d09843c17bc215ac8931.md) | 63 | `result-track:4ad4d09843c17bc215ac893156ab48b39c3f7822612d3daf62e3f353edd2bbdc` |
| 8 | `theorem` | [balanced_closedBall_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/declarations/balanced-closedball-zero--13f25bfd1ccc59b67440d5ae.md) | 68 | `result-track:13f25bfd1ccc59b67440d5ae4d52d8780e06ae8cd4ef0e4b9d61a69ae09735e3` |
| 9 | `lemma` | [rescale_to_shell_semi_normed_zpow](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/declarations/rescale-to-shell-semi-normed-zpow--134a968bd5c36d013b7cb2de.md) | 75 | `result-track:134a968bd5c36d013b7cb2de803d6feb0bd0013bdc351c9b490e3b4acf39c329` |
| 10 | `lemma` | [rescale_to_shell_semi_normed](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/declarations/rescale-to-shell-semi-normed--7c6919f0e4a58d2e2814d9b5.md) | 83 | `result-track:7c6919f0e4a58d2e2814d9b5cd12419fbf367bf5e6b7cd2b13d05d6255748d4a` |
| 11 | `lemma` | [rescale_to_shell_zpow](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/declarations/rescale-to-shell-zpow--887bb6fe9a33a7700e6d2686.md) | 94 | `result-track:887bb6fe9a33a7700e6d2686992badc1269479763cf2cb174c75b5c6a4da5aeb` |
| 12 | `lemma` | [rescale_to_shell](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant752fc99582193474a3ca155b174d909a7383c188536d9576f1444f34ff7d353a.lean/declarations/rescale-to-shell--b340c143b78eb24e9a20888b.md) | 102 | `result-track:b340c143b78eb24e9a20888bc41a6f9ad7cb29f369a7cadc1e53e6141a28b0a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
