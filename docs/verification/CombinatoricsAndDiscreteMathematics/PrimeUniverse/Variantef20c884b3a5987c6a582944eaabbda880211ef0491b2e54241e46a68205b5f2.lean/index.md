# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeUniverse.Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b76fc28d65a422a2c7ed7484f1e31b1ce1c3fe81",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b76fc28d65a422a2c7ed7484f1e31b1ce1c3fe81`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Place](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean/declarations/place--ddb6176e7b533da0c04a74f4.md) | 21 | `declaration-track:ddb6176e7b533da0c04a74f48fea39c967b8e2264f2a78c0cc38f795d5a42edc` |
| 2 | `structure` | [FinitePrimeUniverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean/declarations/finiteprimeuniverse--075410c02d018ae8547052a6.md) | 26 | `declaration-track:075410c02d018ae8547052a6f2f5a5546b9b12af35a41ee71939e138c693aef0` |
| 3 | `structure` | [AnchoredPrimeCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean/declarations/anchoredprimecut--edf515128d4648dabac9ab6e.md) | 33 | `declaration-track:edf515128d4648dabac9ab6e0bca4aa01980c938cd342f9d2bc4d98c6fa62e75` |
| 4 | `def` | [AnchoredPrimeCut.contains](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean/declarations/anchoredprimecut-contains--593cc61a5aad7f83752caafa.md) | 41 | `declaration-track:593cc61a5aad7f83752caafab1f3b4847d5a5164f67aef4e217b01ab6a03fa90` |
| 5 | `theorem` | [archimedean_anchor_present](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean/declarations/archimedean-anchor-present--ddc73180b770d7146423d8e9.md) | 49 | `result-track:ddc73180b770d7146423d8e950abe02e6744174f621d9b55e388c1c87bb897ba` |
| 6 | `theorem` | [finite_place_present_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Variantef20c884b3a5987c6a582944eaabbda880211ef0491b2e54241e46a68205b5f2.lean/declarations/finite-place-present-iff--9ad35249c24c5ce550e8f258.md) | 56 | `result-track:9ad35249c24c5ce550e8f2585007ed5e292e6e2d6e66fd517cfa4d5ff4ffdb4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
