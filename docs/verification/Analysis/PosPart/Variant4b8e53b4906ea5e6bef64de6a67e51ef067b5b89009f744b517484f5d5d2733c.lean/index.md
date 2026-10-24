# Verification target: GRWTSK.Analysis.PosPart.Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "229b9077e01de4f2b8915ccd9da8bf3c62ba3ec9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean/index.md) · [Full source](../../../../mathematics/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `229b9077e01de4f2b8915ccd9da8bf3c62ba3ec9`.

Source path: `GRWTSK/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Range` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Hom` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [realToRCLike_posPart_negPart](../../../../mathematics/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean/declarations/realtorclike-pospart-negpart--8cc05c0c90edb6c9e1685663.md) | 36 | `result-track:8cc05c0c90edb6c9e16856637865e2bc693d2087a71d7dcabce3d2829f9e6afe` |
| 2 | `lemma` | [realToRCLike_posPart](../../../../mathematics/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean/declarations/realtorclike-pospart--eb995029d7287fa4f171c571.md) | 49 | `result-track:eb995029d7287fa4f171c571060bbe57083bf7dd23f1152235c249fc733bab5d` |
| 3 | `lemma` | [realToRCLike_negPart](../../../../mathematics/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean/declarations/realtorclike-negpart--956799ad6db58b72b6a55f99.md) | 52 | `result-track:956799ad6db58b72b6a55f9982c53d40e6af14b9087b2695f78823c175f95d96` |
| 4 | `lemma` | [posPart_mono](../../../../mathematics/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean/declarations/pospart-mono--d9cc7098ebc56e210bbb6121.md) | 65 | `result-track:d9cc7098ebc56e210bbb6121f948a0a502ec3d02362a8344af7669bfb05e2c35` |
| 5 | `lemma` | [negPart_anti](../../../../mathematics/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean/declarations/negpart-anti--9c3050ca42e14dcc45f0a292.md) | 83 | `result-track:9c3050ca42e14dcc45f0a2926fa5d8a0fe22102af7f8b763af6de3d95ab66651` |
| 6 | `lemma` | [Commute.posPart_mono](../../../../mathematics/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean/declarations/commute-pospart-mono--8c6dd428a64f854f38b706a9.md) | 97 | `result-track:8c6dd428a64f854f38b706a9c3c556e7c8763b84d1a9a0844e54976f91fcb602` |
| 7 | `lemma` | [Commute.negPart_anti](../../../../mathematics/Analysis/PosPart/Variant4b8e53b4906ea5e6bef64de6a67e51ef067b5b89009f744b517484f5d5d2733c.lean/declarations/commute-negpart-anti--79c77f35ea939fcd19d84584.md) | 113 | `result-track:79c77f35ea939fcd19d845841b5de600100437ec5b8aecd27254c20c74aea045` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
