# Verification target: GRWTSK.Algebra.FinitePresentation.Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ef04cb02190c8072c90400c697382b5afa7c816",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FinitePresentation/Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FinitePresentation/Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de.lean/index.md) · [Full source](../../../../mathematics/Algebra/FinitePresentation/Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ef04cb02190c8072c90400c697382b5afa7c816`.

Source path: `GRWTSK/Algebra/FinitePresentation/Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FinitePresentation/Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Finiteness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Localization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.FiniteType` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.AdjoinRoot` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finitePresentation_localizationPreserves](../../../../mathematics/Algebra/FinitePresentation/Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de.lean/declarations/finitepresentation-localizationpreserves--933d3894f36dfc3c25df5af1.md) | 34 | `result-track:933d3894f36dfc3c25df5af19f7ccb950bde9f1ce7b349f977ee06a64ecf535b` |
| 2 | `theorem` | [finitePresentation_stableUnderComposition](../../../../mathematics/Algebra/FinitePresentation/Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de.lean/declarations/finitepresentation-stableundercomposition--560bee755b015b9ce489ffb0.md) | 59 | `result-track:560bee755b015b9ce489ffb0e67537133e841341c7b99baaf825f9d3927111bc` |
| 3 | `theorem` | [finitePresentation_holdsForLocalizationAway](../../../../mathematics/Algebra/FinitePresentation/Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de.lean/declarations/finitepresentation-holdsforlocalizationaway--c229054857138e682baa0265.md) | 64 | `result-track:c229054857138e682baa0265efc6e0a1502953df7eb691251a21bc06f437d462` |
| 4 | `lemma` | [finitePresentation_ofLocalizationSpanTarget_aux](../../../../mathematics/Algebra/FinitePresentation/Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de.lean/declarations/finitepresentation-oflocalizationspantarget-aux--a3ac37102ee7d99d88231e32.md) | 81 | `result-track:a3ac37102ee7d99d88231e32f6d4b5b9364f90714b525d657b322f5efc396137` |
| 5 | `theorem` | [finitePresentation_ofLocalizationSpanTarget](../../../../mathematics/Algebra/FinitePresentation/Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de.lean/declarations/finitepresentation-oflocalizationspantarget--9aa4c97a282339a9a020d3a2.md) | 100 | `result-track:9aa4c97a282339a9a020d3a20c457be84bca39c0389ec2a5b96d093222b20043` |
| 6 | `theorem` | [finitePresentation_isLocal](../../../../mathematics/Algebra/FinitePresentation/Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de.lean/declarations/finitepresentation-islocal--5ee1072adde23f24f9b8c8f6.md) | 172 | `result-track:5ee1072adde23f24f9b8c8f619849e6fb383b3ba5fae41c9f261c6f8a9bff8af` |
| 7 | `theorem` | [finitePresentation_respectsIso](../../../../mathematics/Algebra/FinitePresentation/Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de.lean/declarations/finitepresentation-respectsiso--907125f8bfec7317811bdf0c.md) | 182 | `result-track:907125f8bfec7317811bdf0cf2cac8bd482c08d81c43adc9ec939a9692c3b175` |
| 8 | `theorem` | [finitePresentation_isStableUnderBaseChange](../../../../mathematics/Algebra/FinitePresentation/Variantc54df1b428861361bb06da3e0a096981bc7c3166c6e427759796b45cc17554de.lean/declarations/finitepresentation-isstableunderbasechange--6e86602a77f9e22771dbb2dd.md) | 186 | `result-track:6e86602a77f9e22771dbb2dd2782a4e560ecf383853786ece669841e5c2dec5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
