# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryHyperbola.Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6568cb2791fd9bdb3d515e0fdc28254235460a0c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6568cb2791fd9bdb3d515e0fdc28254235460a0c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryJoint` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperSmallIndices](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/uppersmallindices--350a61cb270b2b4f05df9a47.md) | 20 | `declaration-track:350a61cb270b2b4f05df9a47571165d8c4e5974f11d4e6f62a1e5f5ad1d935ad` |
| 2 | `def` | [upperSmallSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/uppersmallsum--35e5a3c76e7a5e2554bf09d1.md) | 24 | `declaration-track:35e5a3c76e7a5e2554bf09d1543875edc1a8a02f73e3a5f6fb38f778326b346c` |
| 3 | `def` | [upperHyperbola](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/upperhyperbola--246f88e3206204d2fc333f53.md) | 28 | `declaration-track:246f88e3206204d2fc333f5316df512d03f238e1a93a4bf2c0424cf34c180e35` |
| 4 | `theorem` | [mem_upperSmallIndices_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/mem-uppersmallindices-iff--932833299433e9891af6c364.md) | 33 | `result-track:932833299433e9891af6c364bc755b2ee893c0751c6f100342d369c6d775ef9b` |
| 5 | `theorem` | [upperSmallIndices_eq_sqrt_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/uppersmallindices-eq-sqrt-cutoff--666a84561728ae52971de458.md) | 39 | `result-track:666a84561728ae52971de45869095b894c0a4092d92913eb80d14d8ccf55e55d` |
| 6 | `theorem` | [hyperbola_pair](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/hyperbola-pair--70ac2a03e1ca7fe2c059886f.md) | 46 | `result-track:70ac2a03e1ca7fe2c059886fc6a63bae768b002b45e785e5969144097b4053fe` |
| 7 | `theorem` | [finite_hyperbola](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/finite-hyperbola--52951a65817fea010f892c57.md) | 63 | `result-track:52951a65817fea010f892c57abdefceba29f110380a02672c5c4a7f85f961723` |
| 8 | `theorem` | [upperProductSummatory_eq_hyperbola](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/upperproductsummatory-eq-hyperbola--574506fdd55e3d22921499fc.md) | 120 | `result-track:574506fdd55e3d22921499fc5f12122f7eb4504dc3de612c0423d65d558c0469` |
| 9 | `theorem` | [upperSmallSum_square_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/uppersmallsum-square-nonneg--a2b48462a685fdae05fa0b0a.md) | 127 | `result-track:a2b48462a685fdae05fa0b0a1fa8fdc182b529443d9c4a8b16bb11c09cb2ce02` |
| 10 | `theorem` | [upperRowIndices_eq_div_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/upperrowindices-eq-div-cutoff--a03bd7c36d599d6ac1406e57.md) | 131 | `result-track:a03bd7c36d599d6ac1406e57a81ad73b045fcc0f89c45d5c7cfae26d5f9e51f6` |
| 11 | `theorem` | [upperHyperbola_eq_floor_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/upperhyperbola-eq-floor-sum--7f396f74e5e02d846441dafe.md) | 143 | `result-track:7f396f74e5e02d846441dafe4a6e935c1f8824db869fb4384f3c64b883b84746` |
| 12 | `theorem` | [upperSmallSum_eq_floor_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/uppersmallsum-eq-floor-sum--6d0bfc777704aed2ec6bbeba.md) | 156 | `result-track:6d0bfc777704aed2ec6bbebae95e9e35538b0b8749c1a74e28e5bd41c1b0f7b2` |
| 13 | `theorem` | [upperProductSummatory_eq_floor_hyperbola](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/upperproductsummatory-eq-floor-hyperbola--e5a3f6556f583965fcbc01ab.md) | 162 | `result-track:e5a3f6556f583965fcbc01ab958af98b28a5deba5fc3b6f39fcfc5d656c96662` |
| 14 | `theorem` | [upperSmallSum_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/uppersmallsum-measurable--b2cc34e9a5b05e92ef3688bc.md) | 174 | `result-track:b2cc34e9a5b05e92ef3688bc327af3acd1689996fb6cc4651d319812f265bfb4` |
| 15 | `theorem` | [upperSmallSum_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/uppersmallsum-abs-le--c151a0f56da902a9bd3c80ca.md) | 182 | `result-track:c151a0f56da902a9bd3c80ca8db454e54543daf9077d530aeff80dab676ef30f` |
| 16 | `theorem` | [upperSmallSum_square_mul_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/uppersmallsum-square-mul-integrableon--711ea50b9b6352e6610b9201.md) | 193 | `result-track:711ea50b9b6352e6610b9201b38262993f9465f8ec27158b22ff01d20422c145` |
| 17 | `theorem` | [upperHyperbola_mul_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/upperhyperbola-mul-integrableon--01d16b9730ece60158159fac.md) | 208 | `result-track:01d16b9730ece60158159fac0b564c9c5113b43cf1a453aafda1c9e9a7b033d3` |
| 18 | `theorem` | [upperProduct_integral_eq_hyperbola](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/upperproduct-integral-eq-hyperbola--f154a20531b22f18f24d651c.md) | 224 | `result-track:f154a20531b22f18f24d651c82fa41e4cc2c5dec00c0a6edc2bf465215ab1441` |
| 19 | `theorem` | [source_hyperbola_derivative_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/source-hyperbola-derivative-integrableon--5236bf3b22c3f97b535650e3.md) | 247 | `result-track:5236bf3b22c3f97b535650e30bbc2235fc805d8d6d7e5c0f28bd34ea984d9e5a` |
| 20 | `theorem` | [source_square_derivative_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/source-square-derivative-integrableon--0c194363930e61af976d4ffb.md) | 256 | `result-track:0c194363930e61af976d4ffb3e3d1763fbc1b582b8210ab2f306613b6ea63b54` |
| 21 | `theorem` | [sourceQuadraticValue_eq_hyperbola_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/declarations/sourcequadraticvalue-eq-hyperbola-integrals--2599d8f05f3dc0588b17a980.md) | 265 | `result-track:2599d8f05f3dc0588b17a980c71f2cbdf3fd73a91ddc4e13e3959a7bba53fdf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
