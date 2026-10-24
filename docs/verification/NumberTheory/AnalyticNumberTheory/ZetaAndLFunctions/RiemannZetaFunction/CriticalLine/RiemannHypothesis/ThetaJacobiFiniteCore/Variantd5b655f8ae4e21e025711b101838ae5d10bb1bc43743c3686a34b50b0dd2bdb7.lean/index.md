# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaJacobiFiniteCore.Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "013acb9a90dd2de9e603c6387dcbab0388b18d9f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `013acb9a90dd2de9e603c6387dcbab0388b18d9f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ThetaJacobiRecurrence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteSequences](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/finitesequences--3a006a70b0c6a102f958cb58.md) | 36 | `declaration-track:3a006a70b0c6a102f958cb589576711f705aa10cd06ee8ea4a03081e23c5eb43` |
| 2 | `theorem` | [finiteSequences_support_finite](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/finitesequences-support-finite--4a094121b658606e66096bb8.md) | 40 | `result-track:4a094121b658606e66096bb843db5fb3c43bee3f52e53b2ebb22f4c53c8b226f` |
| 3 | `theorem` | [mem_finiteSequences_of_support_finite](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/mem-finitesequences-of-support-finite--d717dab9a1546a5e6fb2fd26.md) | 71 | `result-track:d717dab9a1546a5e6fb2fd268c8aa668ebdc370795e7ed91c90a781099bda473` |
| 4 | `theorem` | [mem_finiteSequences_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/mem-finitesequences-iff--3ab82f654b36ad2234012ae9.md) | 96 | `result-track:3ab82f654b36ad2234012ae940239384e2717bc44d40392b1a72858d99aedc08` |
| 5 | `theorem` | [pointedUnitary_map_finiteSequences](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/pointedunitary-map-finitesequences--27ac350619ca18d95039cf6f.md) | 101 | `result-track:27ac350619ca18d95039cf6f4548ee5ddac67d73a19f863398bde704f543852d` |
| 6 | `theorem` | [pointedUnitary_preimage_polynomialCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/pointedunitary-preimage-polynomialcore--ebfc7b3937c521b0d3ec9849.md) | 111 | `result-track:ebfc7b3937c521b0d3ec98498d2044ccdd288755a2ff6d21a5a2afc9bba14304` |
| 7 | `theorem` | [finiteSequences_le_jacobiDomain](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/finitesequences-le-jacobidomain--543b2be0d2032cfc005a8f44.md) | 117 | `result-track:543b2be0d2032cfc005a8f44289e5cb8dc4c7658ddc51c56ad8f4d6e926c8a34` |
| 8 | `theorem` | [finiteSequence_graph_approximation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/finitesequence-graph-approximation--50e11cafff8f1b95c63a42fb.md) | 124 | `result-track:50e11cafff8f1b95c63a42fb550417224d1cff6303d2ef624048fe04c6058170` |
| 9 | `theorem` | [finiteSequences_graph_closure](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/finitesequences-graph-closure--6d792f570688f31860bc32c2.md) | 161 | `result-track:6d792f570688f31860bc32c2eda645c323c6e1046fad7c2dc1eb81ec23fa664c` |
| 10 | `theorem` | [jacobiOperator_finiteSequences_hasCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/jacobioperator-finitesequences-hascore--18ec17b841e2da0bae250463.md) | 182 | `result-track:18ec17b841e2da0bae250463d3c2103ee107a45a3304097ebd213186fba5a133` |
| 11 | `theorem` | [finiteSequences_restriction_closure](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/finitesequences-restriction-closure--75140a8b68a7d9b46e7dbdbc.md) | 193 | `result-track:75140a8b68a7d9b46e7dbdbcd90c8a252b6ea9665dce2065ab185d31f318cf81` |
| 12 | `theorem` | [finiteSequences_restriction_closure_isSelfAdjoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/finitesequences-restriction-closure-isselfadjoint--f31fd5b9eb7d7d888f4e13be.md) | 198 | `result-track:f31fd5b9eb7d7d888f4e13be5e24cdd20d54f1e0dff730f869c5dc77ce47a077` |
| 13 | `def` | [cutoffSequences](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/cutoffsequences--3fb5c58ddcea9919bdf5cd03.md) | 204 | `declaration-track:3fb5c58ddcea9919bdf5cd03f5d05d91ef65a7b24eae13e2da8340fb29d965ed` |
| 14 | `theorem` | [cutoffSequences_le_finiteSequences](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/cutoffsequences-le-finitesequences--a984f64bfdd6611b68da4616.md) | 208 | `result-track:a984f64bfdd6611b68da4616bb87a211d9978e67a2a6d66263f5d6d83564b0a6` |
| 15 | `theorem` | [finiteSequences_eq_iSup_cutoffs](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/finitesequences-eq-isup-cutoffs--42e9ac2d1f3d52a76eca40f4.md) | 212 | `result-track:42e9ac2d1f3d52a76eca40f43010db52ecffc892a2301b705ada23d038293140` |
| 16 | `theorem` | [cutoffSequences_coordinate_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/cutoffsequences-coordinate-zero--22b247e2e40d18171c9bc651.md) | 221 | `result-track:22b247e2e40d18171c9bc651bea9f6303d8c70e66c1ac8803f2cb56c5d877042` |
| 17 | `theorem` | [cutoffSequences_not_hasCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/declarations/cutoffsequences-not-hascore--fb4e347948767b26d779aa14.md) | 234 | `result-track:fb4e347948767b26d779aa147966393643d268d7305129daa7bf4f46d6163508` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
