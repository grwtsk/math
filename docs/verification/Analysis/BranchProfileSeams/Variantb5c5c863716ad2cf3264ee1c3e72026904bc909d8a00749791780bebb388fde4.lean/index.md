# Verification target: GRWTSK.Analysis.BranchProfileSeams.Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce69e8874d17ca1067ea512e82806383327e4578",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/index.md) · [Full source](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce69e8874d17ca1067ea512e82806383327e4578`.

Source path: `GRWTSK/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.BranchSecondDerivativeEnergy` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.TangentCone.Real` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edgeCoefficient](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/edgecoefficient--e6ade73984f2f0cdc355314f.md) | 29 | `declaration-track:e6ade73984f2f0cdc355314ffe5f68ec128f898c4000d8e5f9bc558e2b4fcce9` |
| 2 | `def` | [edgePolynomial](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/edgepolynomial--edbfdb7fa5f1267e150c51b1.md) | 39 | `declaration-track:edbfdb7fa5f1267e150c51b1be25a38541df0bbe63887f7671dfa28988ff8bea` |
| 3 | `theorem` | [normalizedInterior_edge_polynomial](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/normalizedinterior-edge-polynomial--02e4084802439e22cf4616fb.md) | 43 | `result-track:02e4084802439e22cf4616fb2cb59eeea501eaf74b22f2f50c9107be0c3e7621` |
| 4 | `theorem` | [actual_source_edge_polynomial](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/actual-source-edge-polynomial--73849d8748780f4075039656.md) | 52 | `result-track:73849d8748780f40750396562034938c6648fa07b6f0c61bb01c6048edd0ea40` |
| 5 | `theorem` | [normalizedInterior_even](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/normalizedinterior-even--a55e1a24c1ccccecbc72b6d3.md) | 61 | `result-track:a55e1a24c1ccccecbc72b6d35e086565bb3741c0d18cbe071da73a0abfa47080` |
| 6 | `theorem` | [normalizedSecondInterior_endpoints](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/normalizedsecondinterior-endpoints--8cd7b1d46a826a6da7078668.md) | 67 | `result-track:8cd7b1d46a826a6da7078668e736bd1e73bef1a2fcdfa2aee072b0cf41124fc5` |
| 7 | `theorem` | [second_trace_pos](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/second-trace-pos--51f2542c6471b79cc8e4ce4b.md) | 77 | `result-track:51f2542c6471b79cc8e4ce4bd2e3abd3c9f80cdaf1f18884b34a80165075fe59` |
| 8 | `theorem` | [secondRepresentative_upper_endpoint](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/secondrepresentative-upper-endpoint--87daceea404f9963f8036fae.md) | 83 | `result-track:87daceea404f9963f8036faebd1de0b371d599853bf6473a278ce72750ddf368` |
| 9 | `theorem` | [secondRepresentative_lower_endpoint](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/secondrepresentative-lower-endpoint--e9f70b922ddb20b00c3f486c.md) | 91 | `result-track:e9f70b922ddb20b00c3f486c1b75a13486c92d107e54e11e1a4b5c36f0067642` |
| 10 | `theorem` | [actual_first_derivative_zero_of_upper_le](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/actual-first-derivative-zero-of-upper-le--809148c67c564f501003f026.md) | 99 | `result-track:809148c67c564f501003f026e06cd957c00f6b8d95c45718367fa9ab78300677` |
| 11 | `theorem` | [actual_first_derivative_hasDerivWithinAt_inside](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/actual-first-derivative-hasderivwithinat-inside--6717a93eb1e5c948408d4a8c.md) | 112 | `result-track:6717a93eb1e5c948408d4a8c36a7cfe0eaf7161a6885e3b6bf8d1ecc9d66cb43` |
| 12 | `theorem` | [actual_first_derivative_hasDerivWithinAt_outside](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/actual-first-derivative-hasderivwithinat-outside--848fd7fad3ccbd380bfb7685.md) | 124 | `result-track:848fd7fad3ccbd380bfb7685294f3f186b2dfdc9102e096c625dbbb373cd1107` |
| 13 | `theorem` | [actual_first_derivative_not_differentiableAt_upper](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/actual-first-derivative-not-differentiableat-upper--cdf2e2fde27e3b0417791c55.md) | 131 | `result-track:cdf2e2fde27e3b0417791c55b5b11dd99045f1995efdaaa2153edc6a5104b749` |
| 14 | `theorem` | [actual_source_not_contDiff_two](../../../../mathematics/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/declarations/actual-source-not-contdiff-two--cd89d5ec58d45cc95114df8c.md) | 145 | `result-track:cd89d5ec58d45cc95114df8c1b320a663cb0a43700dfb9f8df90566e6ec537d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
