# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Convex.Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed1fbc47408fd7a668ee32044245061467dffb83",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed1fbc47408fd7a668ee32044245061467dffb83`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.ReImTopology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Combination` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PathConnected` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [convexHull_reProdIm](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/convexhull-reprodim--b157b474be39797a48c377e1.md) | 32 | `result-track:b157b474be39797a48c377e110d79456ab31697f4ee4f61e6bfcfcf193768b4e` |
| 2 | `lemma` | [starConvex_slitPlane](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/starconvex-slitplane--1bb7004b080521038f46f162.md) | 41 | `result-track:1bb7004b080521038f46f162f8264e64ebdaa814e04b3506ef39ed2ffa6c1aac` |
| 3 | `lemma` | [starConvex_ofReal_slitPlane](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/starconvex-ofreal-slitplane--6b226a75e38300cb256b80ef.md) | 45 | `result-track:6b226a75e38300cb256b80efc9bd22866bf05f43f507c33537a326e3cd439457` |
| 4 | `lemma` | [starConvex_one_slitPlane](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/starconvex-one-slitplane--f664febd1d00a57173ced904.md) | 49 | `result-track:f664febd1d00a57173ced9045b7f19fb21cbd3702d567bc893fa75f53f5ff5d5` |
| 5 | `theorem` | [convex_halfSpace_re_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/convex-halfspace-re-lt--f114b2d3de5434794922920e.md) | 57 | `result-track:f114b2d3de5434794922920ef1b7cbfb5cd3625c0dbcd34d6cd983d9b4ed84ff` |
| 6 | `theorem` | [convex_halfSpace_re_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/convex-halfspace-re-le--8e79b3638eae218d4f612a1e.md) | 61 | `result-track:8e79b3638eae218d4f612a1e214db439f9c0e67bfffb957f918f2543a46a5314` |
| 7 | `theorem` | [convex_halfSpace_re_gt](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/convex-halfspace-re-gt--22badd927eb351ee14bb54ea.md) | 65 | `result-track:22badd927eb351ee14bb54ea57c6a7d420ba6a8c5445b907f53493a5bc2169fd` |
| 8 | `theorem` | [convex_halfSpace_re_ge](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/convex-halfspace-re-ge--353259bad8c90c5a6ffc7bc9.md) | 69 | `result-track:353259bad8c90c5a6ffc7bc9fcf52fbcd2cb3d19e3c95a503223ecdeac8fdfbd` |
| 9 | `theorem` | [convex_halfSpace_im_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/convex-halfspace-im-lt--6994db8a08256cdcd1c08ff3.md) | 73 | `result-track:6994db8a08256cdcd1c08ff3b90ee5572b9cb7a501b8cf54e92e46bb181656cc` |
| 10 | `theorem` | [convex_halfSpace_im_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/convex-halfspace-im-le--92d051c31d044683c1c8c17b.md) | 77 | `result-track:92d051c31d044683c1c8c17bb2cbeb422c2dfd9eba9213d61549cbc963eb788d` |
| 11 | `theorem` | [convex_halfSpace_im_gt](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/convex-halfspace-im-gt--9a26117abf70f39dac606817.md) | 81 | `result-track:9a26117abf70f39dac60681794cd35c10788465ff92e87b534394a0deef914e7` |
| 12 | `theorem` | [convex_halfSpace_im_ge](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/convex-halfspace-im-ge--12984b3b35c323e17cd09106.md) | 85 | `result-track:12984b3b35c323e17cd091064f3fdbaa7b70fe06e8e4c894596cb7ba9f414e90` |
| 13 | `lemma` | [Complex.isConnected_of_upperHalfPlane](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/complex-isconnected-of-upperhalfplane--4cc0ca00c680825b24b9a070.md) | 89 | `result-track:4cc0ca00c680825b24b9a0705469c98942e6a90ff58683d3d9e4aa2f18c98aa1` |
| 14 | `lemma` | [Complex.isConnected_of_lowerHalfPlane](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/declarations/complex-isconnected-of-lowerhalfplane--cf03aa06a06e67b0ad4056ff.md) | 94 | `result-track:cf03aa06a06e67b0ad4056ff5eb41f05b6e1be194c3682126165ab6d7011e77c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
