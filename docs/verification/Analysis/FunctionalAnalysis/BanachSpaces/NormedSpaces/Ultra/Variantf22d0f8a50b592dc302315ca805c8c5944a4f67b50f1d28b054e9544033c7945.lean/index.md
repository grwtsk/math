# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Ultra.Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "922d17c24f3cbdb736e28a48cb22897caae2c370",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `922d17c24f3cbdb736e28a48cb22897caae2c370`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Ultra` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_add_one_le_max_norm_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945.lean/declarations/norm-add-one-le-max-norm-one--68309b7b480ac05dd0fbeb7f.md) | 46 | `result-track:68309b7b480ac05dd0fbeb7f04cc25d664570aab7e84c3ee0dedf69039b5c530` |
| 2 | `lemma` | [nnnorm_add_one_le_max_nnnorm_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945.lean/declarations/nnnorm-add-one-le-max-nnnorm-one--1b0dab670fa77abc63ae6e26.md) | 50 | `result-track:1b0dab670fa77abc63ae6e26e50176388dd5cc104af03430cbd0c37365bf46ca` |
| 3 | `lemma` | [nnnorm_natCast_le_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945.lean/declarations/nnnorm-natcast-le-one--b5a813b613cdefa0266a8c92.md) | 55 | `result-track:b5a813b613cdefa0266a8c924c597ce3f8b2450bf0f5efeb46a5bbabd2ace089` |
| 4 | `lemma` | [norm_natCast_le_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945.lean/declarations/norm-natcast-le-one--f78c2b5e13ae4836a54fad12.md) | 62 | `result-track:f78c2b5e13ae4836a54fad12f03def731f25c2e4c6ac061a77e954a90c984e89` |
| 5 | `lemma` | [nnnorm_intCast_le_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945.lean/declarations/nnnorm-intcast-le-one--423e33f9eed075053b704952.md) | 66 | `result-track:423e33f9eed075053b704952c6eec9d4886778ec927b2fee56ce23a97b2ce270` |
| 6 | `lemma` | [norm_intCast_le_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variantf22d0f8a50b592dc302315ca805c8c5944a4f67b50f1d28b054e9544033c7945.lean/declarations/norm-intcast-le-one--8a82c1bc999a27756772dcd3.md) | 72 | `result-track:8a82c1bc999a27756772dcd3eabf92eb46a6e7a38ecfab490b44d4247e5da9c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
