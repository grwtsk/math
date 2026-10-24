# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.InjectiveSeminorm.Variant12392f99ad0237f3b31ff54f12ecee8a587f3d3cf858a12789b2d095257a2857

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "946f270b2fac8382658467943d0d1908e8a04224",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant12392f99ad0237f3b31ff54f12ecee8a587f3d3cf858a12789b2d095257a2857.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant12392f99ad0237f3b31ff54f12ecee8a587f3d3cf858a12789b2d095257a2857.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant12392f99ad0237f3b31ff54f12ecee8a587f3d3cf858a12789b2d095257a2857.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `946f270b2fac8382658467943d0d1908e8a04224`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant12392f99ad0237f3b31ff54f12ecee8a587f3d3cf858a12789b2d095257a2857.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant12392f99ad0237f3b31ff54f12ecee8a587f3d3cf858a12789b2d095257a2857.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Isomorphisms` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDualContinuousMultilinearMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant12392f99ad0237f3b31ff54f12ecee8a587f3d3cf858a12789b2d095257a2857.lean/declarations/todualcontinuousmultilinearmap--34457166a079b84b4ebd3bc1.md) | 63 | `declaration-track:34457166a079b84b4ebd3bc1b7b065e8c46d377a682ca314366696b393fdd4f5` |
| 2 | `theorem` | [toDualContinuousMultilinearMap_le_projectiveSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant12392f99ad0237f3b31ff54f12ecee8a587f3d3cf858a12789b2d095257a2857.lean/declarations/todualcontinuousmultilinearmap-le-projectiveseminorm--d1d4523477f044ccd5112a18.md) | 73 | `result-track:d1d4523477f044ccd5112a188c5e3d5782fef483891468a50d294e10abe40f7d` |
| 3 | `lemma` | [dualSeminorms_bounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant12392f99ad0237f3b31ff54f12ecee8a587f3d3cf858a12789b2d095257a2857.lean/declarations/dualseminorms-bounded--32c17992d39aed2ac663f9c0.md) | 92 | `result-track:32c17992d39aed2ac663f9c0f971563c86d2413641491263f48075c6fbde34c5` |
| 4 | `theorem` | [injectiveSeminorm_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant12392f99ad0237f3b31ff54f12ecee8a587f3d3cf858a12789b2d095257a2857.lean/declarations/injectiveseminorm-apply--d767a0969895a62588ede4d4.md) | 104 | `result-track:d767a0969895a62588ede4d4a05d325a67a363ba2a44c8699185e5afe84e9633` |
| 5 | `theorem` | [norm_eval_le_injectiveSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant12392f99ad0237f3b31ff54f12ecee8a587f3d3cf858a12789b2d095257a2857.lean/declarations/norm-eval-le-injectiveseminorm--d0e42c00933d597191d90961.md) | 116 | `result-track:d0e42c00933d597191d909611fae0846c262f96b52d42d7951039cd0003d2f0f` |
| 6 | `theorem` | [injectiveSeminorm_le_projectiveSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant12392f99ad0237f3b31ff54f12ecee8a587f3d3cf858a12789b2d095257a2857.lean/declarations/injectiveseminorm-le-projectiveseminorm--919dc748f28310e68fc2e338.md) | 172 | `result-track:919dc748f28310e68fc2e338b3b6231b9d2c4c72e559684a535a5bb45576044b` |
| 7 | `theorem` | [injectiveSeminorm_tprod_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant12392f99ad0237f3b31ff54f12ecee8a587f3d3cf858a12789b2d095257a2857.lean/declarations/injectiveseminorm-tprod-le--9108b589a520beacbb414b46.md) | 192 | `result-track:9108b589a520beacbb414b467c8a333dbbeb2a60b258f52521f1b4658bf23209` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
