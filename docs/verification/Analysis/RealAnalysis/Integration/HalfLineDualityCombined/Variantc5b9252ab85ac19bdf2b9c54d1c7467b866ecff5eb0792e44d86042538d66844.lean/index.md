# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfLineDualityCombined.Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ed822dd75dc3402aa1f367a2bf9f2d6df23007e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ed822dd75dc3402aa1f367a2bf9f2d6df23007e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/fullh--e6a635a01fc5904743e97207.md) | 17 | `declaration-track:e6a635a01fc5904743e97207f5e431b5e3cabd601921d52e1da2d89a49e52288` |
| 2 | `def` | [zeroExtensionFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/zeroextensionfunction--e305cfd327fe8688686e4c0c.md) | 19 | `declaration-track:e305cfd327fe8688686e4c0cbaad06981c7900b5b3f88a57487d34774c70e19e` |
| 3 | `theorem` | [zeroExtensionFunction_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/zeroextensionfunction-memlp--ed7c6599c69019be58db1c7d.md) | 21 | `result-track:ed7c6599c69019be58db1c7d4e69dbe1bf6a8729e9e3c939d40fd6ec323b814d` |
| 4 | `def` | [zeroExtensionVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/zeroextensionvector--2f7e05a02a8d62f64c8ccd00.md) | 25 | `declaration-track:2f7e05a02a8d62f64c8ccd00d9a733363c4bdc351d46d38ed2c578ad725ae002` |
| 5 | `theorem` | [zeroExtensionVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/zeroextensionvector-ae--1d234e59d8bcfb514fe8ce53.md) | 28 | `result-track:1d234e59d8bcfb514fe8ce535d5fb1887a5e9727b19091f4b3a1a9d3de27e9f0` |
| 6 | `theorem` | [zeroExtensionVector_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/zeroextensionvector-norm--e12156341f8eebf12a1db19f.md) | 32 | `result-track:e12156341f8eebf12a1db19f179f887c9e9647deff65930b5fc6670ec771954a` |
| 7 | `theorem` | [zeroExtensionVector_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/zeroextensionvector-add--801b8c8b5730ae8190b91584.md) | 37 | `result-track:801b8c8b5730ae8190b9158411f7ebde041c78696f8ccf2b4b8e7faf9ad8d243` |
| 8 | `theorem` | [zeroExtensionVector_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/zeroextensionvector-smul--2f9b0b6db648c5f33385d216.md) | 49 | `result-track:2f9b0b6db648c5f33385d2167a44ad9fa8fbe2853a3ef60b7a91c96dd3bc3997` |
| 9 | `def` | [zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/zeroextension--02a54fae5660b0f448a08375.md) | 62 | `declaration-track:02a54fae5660b0f448a083758f3e17fd4c9c14deff1e8c11d903992247529f1f` |
| 10 | `theorem` | [zeroExtension_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/zeroextension-ae--542deb4ededd9d3d9e1b5a70.md) | 68 | `result-track:542deb4ededd9d3d9e1b5a703fc1c9aaa75cc00d3fe48786035d0e69ecd816bd` |
| 11 | `theorem` | [zeroExtension_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/zeroextension-norm--14bbbfff67d636781ac270ee.md) | 72 | `result-track:14bbbfff67d636781ac270ee4e3cb904344a3c29cce5ff4607f59ac2cc548269` |
| 12 | `theorem` | [zeroExtension_ae_halfLine](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/zeroextension-ae-halfline--04c3b83e95f29d01e1aa8848.md) | 75 | `result-track:04c3b83e95f29d01e1aa88487775dbf99ea40f5d29af805484e5bb60c1052661` |
| 13 | `theorem` | [zeroExtension_ae_nonpositive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/zeroextension-ae-nonpositive--0cd64f647b433cb546301277.md) | 81 | `result-track:0cd64f647b433cb54630127775e3ac7f75c6a39a169629ffdd1f57d706ba7875` |
| 14 | `def` | [restriction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/restriction--c537634150a8a5631290454f.md) | 90 | `declaration-track:c537634150a8a5631290454f0bf9f41d4f3079583a58c8ccf00c5aa7a1773202` |
| 15 | `theorem` | [restriction_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/restriction-ae--8c6cc3f80f387b2f68bf52d0.md) | 92 | `result-track:8c6cc3f80f387b2f68bf52d0df75f3565d6af0b206d4db709640d551218f18bd` |
| 16 | `theorem` | [restriction_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/restriction-norm-le--62ec369bb205019d736ca2be.md) | 95 | `result-track:62ec369bb205019d736ca2bedbbea7abfd65e2069eb9d3e0de223d43be5fa7e1` |
| 17 | `theorem` | [restriction_opNorm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/restriction-opnorm-le--7e0a2b2beecbc3eed6d4d1fa.md) | 98 | `result-track:7e0a2b2beecbc3eed6d4d1facb5dceae6ea1818ad68fc8b4f3f0a439bbcd2c2d` |
| 18 | `theorem` | [restriction_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/restriction-zeroextension--2d7a88da3aa00899e848aa5f.md) | 103 | `result-track:2d7a88da3aa00899e848aa5fe0c7c264f695c0c78fa4c3390b94a2d64b7b236a` |
| 19 | `theorem` | [restriction_comp_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/restriction-comp-zeroextension--1b93f1dbe6f19fe13667b3ce.md) | 106 | `result-track:1b93f1dbe6f19fe13667b3ce916e0894c55cab08a168ae2f65346ffda94d682a` |
| 20 | `theorem` | [restricted_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/restricted-inner-integrable--8c80d01d070ca6d5f5e120ed.md) | 128 | `result-track:8c80d01d070ca6d5f5e120ed7e0c7d2b5ef3d95065c7ac5498fc826df67b509f` |
| 21 | `theorem` | [extended_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/extended-inner-integrable--828f4780230f3f2ee63c14e4.md) | 134 | `result-track:828f4780230f3f2ee63c14e4c69d83a3e4c08fadb3f6d0a05721b018a4fdbd62` |
| 22 | `theorem` | [inner_restriction_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/inner-restriction-zeroextension--81b50420245679422772ad13.md) | 138 | `result-track:81b50420245679422772ad13026ec9e5d86bc9170960400683c6a5b1b0319532` |
| 23 | `theorem` | [zeroExtension_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/zeroextension-adjoint--1f64a9d769fdc2a9e4db0483.md) | 156 | `result-track:1f64a9d769fdc2a9e4db0483b6b730d4a56e8e878f0ed2d81a7b829952f95ac5` |
| 24 | `theorem` | [restriction_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/declarations/restriction-adjoint--4aa3711d28385107ac5d3e45.md) | 161 | `result-track:4aa3711d28385107ac5d3e45fc4e603c43d2b759d0886864bb693fdbce8bb872` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
