# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.InjectiveSeminorm.Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "616c6e2d435367899e4295f83e482632f448d292",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `616c6e2d435367899e4295f83e482632f448d292`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Isomorphisms` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDualContinuousMultilinearMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean/declarations/todualcontinuousmultilinearmap--5adb2b5c8a818d4cb5ea456a.md) | 55 | `declaration-track:5adb2b5c8a818d4cb5ea456aac4373f6337ef0fde16344b5c2e13c3d0f7f40be` |
| 2 | `theorem` | [toDualContinuousMultilinearMap_le_projectiveSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean/declarations/todualcontinuousmultilinearmap-le-projectiveseminorm--80cb2fcabb8d574286c92774.md) | 65 | `result-track:80cb2fcabb8d574286c927741f35e5560f9062196e1a4eaa0037a6e361026a0d` |
| 3 | `lemma` | [dualSeminorms_bounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean/declarations/dualseminorms-bounded--b0d60c4f88f4ca86dc641b03.md) | 84 | `result-track:b0d60c4f88f4ca86dc641b03f4a304378f9e692b723b646940a9c576e04c8883` |
| 4 | `theorem` | [injectiveSeminorm_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean/declarations/injectiveseminorm-apply--76c06ff4f0b9a8a57315c97c.md) | 96 | `result-track:76c06ff4f0b9a8a57315c97ccdc13ec04a98788589b9273c2ce50336f216edaf` |
| 5 | `theorem` | [norm_eval_le_injectiveSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean/declarations/norm-eval-le-injectiveseminorm--2df111e69045843c9e5812e9.md) | 108 | `result-track:2df111e69045843c9e5812e9abc709303e8b2bba012da79bb7a192023880a27d` |
| 6 | `theorem` | [injectiveSeminorm_le_projectiveSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean/declarations/injectiveseminorm-le-projectiveseminorm--d03f676b818f513bfb23ff2e.md) | 164 | `result-track:d03f676b818f513bfb23ff2e936e863a946cde0fcd3b73060a857a6f0e4b60b4` |
| 7 | `theorem` | [injectiveSeminorm_tprod_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean/declarations/injectiveseminorm-tprod-le--bba3b169dc0c537554fcd939.md) | 184 | `result-track:bba3b169dc0c537554fcd9392ff2d22227fc35cdf52dba391d33abba2f6a1935` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
