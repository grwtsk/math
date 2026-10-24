# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Continuous.Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83dd728c08d02c6ca748331ccdeb57c66489ad1d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83dd728c08d02c6ca748331ccdeb57c66489ad1d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Affine.Convex` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ConvexOn.lipschitzOnWith_of_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/convexon-lipschitzonwith-of-abs-le--c073c79ddac32e72a4ba3f9a.md) | 21 | `result-track:c073c79ddac32e72a4ba3f9a08b586c0488e1a97a88ab99cc72ee934b625b718` |
| 2 | `lemma` | [ConcaveOn.lipschitzOnWith_of_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/concaveon-lipschitzonwith-of-abs-le--33ac934e227f494c82fe74e3.md) | 66 | `result-track:33ac934e227f494c82fe74e3160477ee2e07aae119c291d4b7783a870495a36a` |
| 3 | `lemma` | [ConvexOn.exists_lipschitzOnWith_of_isBounded](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/convexon-exists-lipschitzonwith-of-isbounded--69231e7b4bfca9d87a371465.md) | 71 | `result-track:69231e7b4bfca9d87a3714650064a13ac3093ab7bb77e7a78a6dd4263c98f7f3` |
| 4 | `lemma` | [ConcaveOn.exists_lipschitzOnWith_of_isBounded](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/concaveon-exists-lipschitzonwith-of-isbounded--57f2f007c29c4d32d327373d.md) | 80 | `result-track:57f2f007c29c4d32d327373d7bcabe9c78a1d2f14aa7c3951e128ae050cdfaf2` |
| 5 | `lemma` | [ConvexOn.isBoundedUnder_abs](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/convexon-isboundedunder-abs--054370eb299046cec6219eb3.md) | 85 | `result-track:054370eb299046cec6219eb3baebe4c15ddc57e6d5ecceec6f8b7a1391cf9119` |
| 6 | `lemma` | [ConcaveOn.isBoundedUnder_abs](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/concaveon-isboundedunder-abs--b1f93f98c0bf78aa0aaed70d.md) | 106 | `result-track:b1f93f98c0bf78aa0aaed70d61a1c0c47b8f5adaaef3b8549d2754ebde9c94d2` |
| 7 | `lemma` | [ConvexOn.continuousOn_tfae](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/convexon-continuouson-tfae--8c1a21f8308823192ccbe988.md) | 110 | `result-track:8c1a21f8308823192ccbe988d08aca72b89b5c22820c0f8ff7e2cabe7b783fba` |
| 8 | `lemma` | [ConcaveOn.continuousOn_tfae](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/concaveon-continuouson-tfae--490eb5a93d448e0d56ab436e.md) | 158 | `result-track:490eb5a93d448e0d56ab436e8e6cf7dbefc840458a81b83b2289972e13975f1a` |
| 9 | `lemma` | [ConvexOn.locallyLipschitzOn_iff_continuousOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/convexon-locallylipschitzon-iff-continuouson--85525142204071d5ff35f246.md) | 170 | `result-track:85525142204071d5ff35f2463adf7f4889cb83785734e0cae08d8f737e4ea618` |
| 10 | `lemma` | [ConcaveOn.locallyLipschitzOn_iff_continuousOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/concaveon-locallylipschitzon-iff-continuouson--455ddda155465ce12a6cf097.md) | 176 | `result-track:455ddda155465ce12a6cf097b63b6ed51455a5953be3bf26eacd6301cc72337a` |
| 11 | `lemma` | [ConvexOn.locallyLipschitzOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/convexon-locallylipschitzon--8ea74b8e974fb76e3f669ed8.md) | 182 | `result-track:8ea74b8e974fb76e3f669ed8c15c4a76730b73d9c870f39d7c9af32fd1172704` |
| 12 | `lemma` | [ConcaveOn.locallyLipschitzOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/concaveon-locallylipschitzon--98c62612e3f26fd9a987a709.md) | 192 | `result-track:98c62612e3f26fd9a987a709cf552947c37b8d34d5b1c88d95ff87a0f80b50da` |
| 13 | `lemma` | [ConvexOn.continuousOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/convexon-continuouson--bbc6379432ff1150500092a1.md) | 195 | `result-track:bbc6379432ff1150500092a1be1d0425af2d0a6254295ea61aae717206044cf1` |
| 14 | `lemma` | [ConcaveOn.continuousOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/concaveon-continuouson--b3aa28806a425632f80c9044.md) | 198 | `result-track:b3aa28806a425632f80c9044f9998156dca62a97e1230cb6bb75537bf4f049d6` |
| 15 | `lemma` | [ConvexOn.locallyLipschitzOn_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/convexon-locallylipschitzon-interior--972bde9c12118672678c3a83.md) | 201 | `result-track:972bde9c12118672678c3a83a026c49094de22f146835468a375da92aacfa081` |
| 16 | `lemma` | [ConcaveOn.locallyLipschitzOn_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/concaveon-locallylipschitzon-interior--e3fdcd04cc39cce12acff034.md) | 205 | `result-track:e3fdcd04cc39cce12acff0344b52cef0fe1fa197a3612b0c2a1c410b292e81b5` |
| 17 | `lemma` | [ConvexOn.continuousOn_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/convexon-continuouson-interior--2a44c3b9d032e93a73c19261.md) | 209 | `result-track:2a44c3b9d032e93a73c19261afc0915ce174591ecb28728147248f541eeaec9d` |
| 18 | `lemma` | [ConcaveOn.continuousOn_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/concaveon-continuouson-interior--fe7a05f9dc500f531e26619d.md) | 212 | `result-track:fe7a05f9dc500f531e26619d0091ba4ccdef692aa8d0f0ce68092d8cbc9f51ab` |
| 19 | `lemma` | [ConvexOn.locallyLipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/convexon-locallylipschitz--165d84a011db9d4c4f0cac18.md) | 215 | `result-track:165d84a011db9d4c4f0cac18cf66fa4302ca463a4efa0964603865e3e7a79d86` |
| 20 | `lemma` | [ConcaveOn.locallyLipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variant305b02906a1dcabf9b2ec7dd17086d901d70fbae948219956b71e530ca382f21.lean/declarations/concaveon-locallylipschitz--f028e248609d0483ab0e46c7.md) | 218 | `result-track:f028e248609d0483ab0e46c7175deea626e416f6143283166d65164f73d7f264` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
