# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Hypotheses.Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f5b868e26ecc1e9d33afd56b11b123c931c3638",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f5b868e26ecc1e9d33afd56b11b123c931c3638`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Defs` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExplicitFormulaPaper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean/declarations/explicitformulapaper--3cfb3b1b4820f964b4556a91.md) | 48 | `declaration-track:3cfb3b1b4820f964b4556a91f73d060014049fafffaff5ec6202f752b984a4d0` |
| 2 | `structure` | [RiemannVonMangoldt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean/declarations/riemannvonmangoldt--62cadd2525e93f9231b807b2.md) | 67 | `declaration-track:62cadd2525e93f9231b807b2a38e0f0ddd551b60c3906909c266517867afcda1` |
| 3 | `structure` | [ChebyshevMertens](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean/declarations/chebyshevmertens--d55ec8244bf4a98c304e656e.md) | 83 | `declaration-track:d55ec8244bf4a98c304e656e0ae694ea16745a5b90c0e5b6127719513ba0c5ab` |
| 4 | `def` | [MVHilbert](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean/declarations/mvhilbert--fd2df1b549f71ad9560dec13.md) | 107 | `declaration-track:fd2df1b549f71ad9560dec1395b6eca66c4201166e968f42c168fecbedc35ca8` |
| 5 | `structure` | [GammaFacts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean/declarations/gammafacts--0885a0d3713e26bac80fe1c5.md) | 125 | `declaration-track:0885a0d3713e26bac80fe1c537afdf3c784108aa755fa262fff5538086302bd2` |
| 6 | `structure` | [PaperInputs](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variantb64911caaf69328e0ca4fced1fd1f80fdca02d57bce390db34843b9849ccb4e2.lean/declarations/paperinputs--9eb95188e8fb12815b3eaf94.md) | 147 | `declaration-track:9eb95188e8fb12815b3eaf940960bf8e9e0486f558310e20808bbd20325875c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
