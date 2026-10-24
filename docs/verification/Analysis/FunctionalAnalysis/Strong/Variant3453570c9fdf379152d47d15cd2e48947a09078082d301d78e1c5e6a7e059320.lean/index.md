# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Strong.Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c23360f9dc5e96d4bb15c7c0107cc4403253384",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c23360f9dc5e96d4bb15c7c0107cc4403253384`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniformConvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconvexon--e650e93684f97067b2d2ef02.md) | 37 | `declaration-track:e650e93684f97067b2d2ef024500cde3f93ccdf6162e386c7166425ecc0c824a` |
| 2 | `def` | [UniformConcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconcaveon--4c290cf7305ab7c1ed3b23fd.md) | 45 | `declaration-track:4c290cf7305ab7c1ed3b23fd31df1decabfd3db54549b07a0d711ac2b6c3b3b6` |
| 3 | `lemma` | [uniformConvexOn_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconvexon-zero--e7816d689f7146b52a58a182.md) | 49 | `result-track:e7816d689f7146b52a58a182b31073ea30b4688ee010a153387c99aa948f1be3` |
| 4 | `lemma` | [uniformConcaveOn_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconcaveon-zero--6a56941b97daff8058160019.md) | 52 | `result-track:6a56941b97daff8058160019805a8ef2bc934567ff6dd996ce772001be9aefb6` |
| 5 | `lemma` | [UniformConvexOn.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconvexon-mono--9f17c7abbb0b845b9aadbee0.md) | 58 | `result-track:9f17c7abbb0b845b9aadbee081db39153b1aad93f6ab367cdf7994d2fa1ee087` |
| 6 | `lemma` | [UniformConcaveOn.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconcaveon-mono--cbbcdc27e8f254bdd69bc501.md) | 61 | `result-track:cbbcdc27e8f254bdd69bc5014e9b77cf31484b48a9d5c92d849f358c9f9b697b` |
| 7 | `lemma` | [UniformConvexOn.convexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconvexon-convexon--e64050e043c87f330c0dfdc8.md) | 64 | `result-track:e64050e043c87f330c0dfdc8018d5b6e9f17809bf0eb370152c84cf4cefdc350` |
| 8 | `lemma` | [UniformConcaveOn.concaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconcaveon-concaveon--776cd238ca33dd5f20c1fb77.md) | 67 | `result-track:776cd238ca33dd5f20c1fb771aca6271e8458337651ece5e09f0c8514bd96182` |
| 9 | `lemma` | [UniformConvexOn.strictConvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconvexon-strictconvexon--7a353bc23d33f54e4db8dd30.md) | 70 | `result-track:7a353bc23d33f54e4db8dd301552267a92ed208c179ce3e4d2b344fcea4bd186` |
| 10 | `lemma` | [UniformConcaveOn.strictConcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconcaveon-strictconcaveon--675b0ed499dc449aaed79860.md) | 78 | `result-track:675b0ed499dc449aaed79860c32a3506789f8998a92dcbc73f6e27df64430338` |
| 11 | `lemma` | [UniformConvexOn.add](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconvexon-add--a56ea98257fcf338655ebf91.md) | 86 | `result-track:a56ea98257fcf338655ebf91095b59d3be54f46d2ada084733ec078ca9f7e73a` |
| 12 | `lemma` | [UniformConcaveOn.add](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconcaveon-add--7e8017a503d67b7c02d8b40b.md) | 92 | `result-track:7e8017a503d67b7c02d8b40b5349e530ea0e9717256cce14c615a0d15bbcafa4` |
| 13 | `lemma` | [UniformConvexOn.neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconvexon-neg--20b3bb3a0a3eff4212ae261a.md) | 97 | `result-track:20b3bb3a0a3eff4212ae261a84e88bf6384befe9f593b7b84b5ff1d194f9b994` |
| 14 | `lemma` | [UniformConcaveOn.neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconcaveon-neg--5fd803bd36242e6270fe5f62.md) | 101 | `result-track:5fd803bd36242e6270fe5f62042255e9ab6be9fa623bc7c2775972c880d16474` |
| 15 | `lemma` | [UniformConvexOn.sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconvexon-sub--a90093c50dd3a1b7a5b7451c.md) | 106 | `result-track:a90093c50dd3a1b7a5b7451cd89c0db14fbdcf7e360813b5ff70a33bf348e82a` |
| 16 | `lemma` | [UniformConcaveOn.sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/uniformconcaveon-sub--b0bda6b934dfcd0341f5b78e.md) | 109 | `result-track:b0bda6b934dfcd0341f5b78eb4d42f0309678a9e738dae691553480503927b41` |
| 17 | `def` | [StrongConvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/strongconvexon--d8de7d2b0b0f19cbeda0ca5e.md) | 116 | `declaration-track:d8de7d2b0b0f19cbeda0ca5e299f9389457f854ccf08255cdd4a556cc33b82d8` |
| 18 | `def` | [StrongConcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/strongconcaveon--e63b732a9710f6920fec8a3c.md) | 123 | `declaration-track:e63b732a9710f6920fec8a3ce39c371885acfef2a6556a58e280657982064f53` |
| 19 | `lemma` | [StrongConvexOn.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/strongconvexon-mono--a56fb4860d1e953314b11e65.md) | 128 | `result-track:a56fb4860d1e953314b11e65c5e87ec66aeb83aaa484bd51e6fbcdd8b20a5e2c` |
| 20 | `lemma` | [StrongConcaveOn.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/strongconcaveon-mono--891d0905af63f4c7de1e262c.md) | 131 | `result-track:891d0905af63f4c7de1e262cbd3a45709a0c2209d185d8601c5571c4a990420e` |
| 21 | `lemma` | [strongConvexOn_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/strongconvexon-zero--1ff3f3857e1d460684159918.md) | 134 | `result-track:1ff3f3857e1d460684159918b47c53a9f5ab0c1b165cf4e0d88bbf49e6c1dae2` |
| 22 | `lemma` | [strongConcaveOn_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/strongconcaveon-zero--6bbb0f64a72b2b4c0686a8d4.md) | 137 | `result-track:6bbb0f64a72b2b4c0686a8d41188b2501b1abfca680d402cc21c8d55e49ffbbf` |
| 23 | `lemma` | [StrongConvexOn.strictConvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/strongconvexon-strictconvexon--a9831dd835a6265b6ac48595.md) | 140 | `result-track:a9831dd835a6265b6ac4859545454c4d1c0db7032616059b824ceb11ea115abe` |
| 24 | `lemma` | [StrongConcaveOn.strictConcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/strongconcaveon-strictconcaveon--a3dbb12d98ccff2659080d2b.md) | 143 | `result-track:a3dbb12d98ccff2659080d2bb6f0d544080323210ba7e1e8d2a4cc1123247282` |
| 25 | `lemma` | [aux_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/aux-sub--b020d1d6fe9cb8e0e0cdf481.md) | 151 | `result-track:b020d1d6fe9cb8e0e0cdf481cb56ce64d24095720bdc8a33b27d25da20a19898` |
| 26 | `lemma` | [aux_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/aux-add--2bebd6e84a37f06a5aedf6cf.md) | 160 | `result-track:2bebd6e84a37f06a5aedf6cfedea17fe0346135ea9dd01d2d75d798735bdd9b1` |
| 27 | `lemma` | [strongConvexOn_iff_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/strongconvexon-iff-convex--6b43be109d9c00fdbf640ee9.md) | 166 | `result-track:6b43be109d9c00fdbf640ee9231747c390400fa047b358d802ed962a3b03edc8` |
| 28 | `lemma` | [strongConcaveOn_iff_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/declarations/strongconcaveon-iff-convex--ee0e4286769bf421396e7982.md) | 171 | `result-track:ee0e4286769bf421396e798236086b3dcec11675f0a9ace0120fdf9b482a38da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
