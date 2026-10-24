# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.InvariantExtension.Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77d36b88c1da890a527b423b6821cdd0980552c1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77d36b88c1da890a527b423b6821cdd0980552c1`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Ultra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Unbundled.FiniteExtension` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [algNormOfAlgEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/declarations/algnormofalgequiv--7af9f331584de1be1c1ac571.md) | 60 | `declaration-track:7af9f331584de1be1c1ac5719a93c10dd5f03123c3903985de1c2ccdd47f76a2` |
| 2 | `theorem` | [algNormOfAlgEquiv_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/declarations/algnormofalgequiv-apply--aa43519576855b2da4ee6479.md) | 71 | `result-track:aa43519576855b2da4ee6479c01f21b04dc7becc2a4f798a610ae2e465e76b0f` |
| 3 | `theorem` | [isPowMul_algNormOfAlgEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/declarations/ispowmul-algnormofalgequiv--3f0752e756b8fba738b2cb38.md) | 77 | `result-track:3f0752e756b8fba738b2cb389f1c5a60d273828ae2473d090a822ab292ae9b6a` |
| 4 | `theorem` | [isNonarchimedean_algNormOfAlgEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/declarations/isnonarchimedean-algnormofalgequiv--889c64893bf0808290d9d2a6.md) | 85 | `result-track:889c64893bf0808290d9d2a604296ba2b9d4d30e76d0f133b9c5720b395841e5` |
| 5 | `theorem` | [algNormOfAlgEquiv_extends](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/declarations/algnormofalgequiv-extends--7e300c6855b5d10b05ff401d.md) | 93 | `result-track:7e300c6855b5d10b05ff401d81092f01608d4bb099dc17d375f952168b4e5e93` |
| 6 | `def` | [invariantExtension](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/declarations/invariantextension--eaaeeb2154bfb9d7ff8b0f82.md) | 107 | `declaration-track:eaaeeb2154bfb9d7ff8b0f82e89174bcbb106107b47417d2d13b33b6ce17612e` |
| 7 | `theorem` | [invariantExtension_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/declarations/invariantextension-apply--fc7f951be7dc17c7429f5f42.md) | 128 | `result-track:fc7f951be7dc17c7429f5f4247998bc9a642e389c96ce0b0435f4a4977df1334` |
| 8 | `theorem` | [isPowMul_invariantExtension](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/declarations/ispowmul-invariantextension--22a31d6f8f5076b9fb7f5255.md) | 133 | `result-track:22a31d6f8f5076b9fb7f5255e2f569207d761ac306c488da2bee0a3ca87ee0ba` |
| 9 | `theorem` | [isNonarchimedean_invariantExtension](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/declarations/isnonarchimedean-invariantextension--f747a0bc33e50b718a2c6b24.md) | 141 | `result-track:f747a0bc33e50b718a2c6b24edeeecbb1e132939c1c1815b049810f95de2b017` |
| 10 | `theorem` | [invariantExtension_extends](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/declarations/invariantextension-extends--3923a78b2f6b1fefdf64adb0.md) | 148 | `result-track:3923a78b2f6b1fefdf64adb0f52c2ae4a157c999a6462045e36e7c060720e86c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
