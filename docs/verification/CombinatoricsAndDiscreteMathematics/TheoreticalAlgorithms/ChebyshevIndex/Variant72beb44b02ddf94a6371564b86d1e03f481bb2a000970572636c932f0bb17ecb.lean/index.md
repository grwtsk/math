# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChebyshevIndex.Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fecf0bf0ce77c060ef8188dcc0b940edff6b50f5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fecf0bf0ce77c060ef8188dcc0b940edff6b50f5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.BinomialChebyshevBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.Exposition.EulerPrimeDivergenceIndex` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [chebyshevThetaDefinitionAnchor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb.lean/declarations/chebyshevthetadefinitionanchor--962112b989775626927685ec.md) | 14 | `declaration-track:962112b989775626927685ec60d655bcb716c5fd649a477262085cd15945c1e3` |
| 2 | `def` | [chebyshevPsiDefinitionAnchor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb.lean/declarations/chebyshevpsidefinitionanchor--6f8fb2126186fb520f9518d9.md) | 24 | `declaration-track:6f8fb2126186fb520f9518d9b1b2f102ab3ed94d3c9ef1de76b1cb66ee0b8e0d` |
| 3 | `def` | [lcmPsiIdentityAnchor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb.lean/declarations/lcmpsiidentityanchor--9961555459a3c24f964f1b8c.md) | 34 | `declaration-track:9961555459a3c24f964f1b8c22e34355190b9bf11d15eb62a6fcf823b65f4db3` |
| 4 | `def` | [centralBinomialChebyshevAnchor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb.lean/declarations/centralbinomialchebyshevanchor--c9bec7799fed5ed1ccc5b26c.md) | 44 | `declaration-track:c9bec7799fed5ed1ccc5b26cd9138485de55fc0a0dd0914b7e7d485b54328aed` |
| 5 | `def` | [chebyshevPrimeCountingBoundsTargetAnchor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb.lean/declarations/chebyshevprimecountingboundstargetanchor--554e37ac864dd4ebaebec88a.md) | 54 | `declaration-track:554e37ac864dd4ebaebec88aee3da3b95634f4577d513edaf9ebb0121802ef58` |
| 6 | `def` | [pntStillTargetAfterChebyshevAnchor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb.lean/declarations/pntstilltargetafterchebyshevanchor--843dc11b1fcab144f213b0c9.md) | 64 | `declaration-track:843dc11b1fcab144f213b0c9b28f8cf2edd65cd1f5ecbda28db08c14a56dbd34` |
| 7 | `def` | [chebyshevAnchors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant72beb44b02ddf94a6371564b86d1e03f481bb2a000970572636c932f0bb17ecb.lean/declarations/chebyshevanchors--34f34755ea4d6ab86826609b.md) | 74 | `declaration-track:34f34755ea4d6ab86826609b199dbc359065d2e08b78cbe5443cd57ca6f7f2c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
