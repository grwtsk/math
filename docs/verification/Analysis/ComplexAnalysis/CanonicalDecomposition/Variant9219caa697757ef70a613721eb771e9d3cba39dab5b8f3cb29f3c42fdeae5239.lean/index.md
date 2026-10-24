# Verification target: GRWTSK.Analysis.ComplexAnalysis.CanonicalDecomposition.Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "363bc7fdb88c837c745e0b26a1cdb8c8bec3923d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `363bc7fdb88c837c745e0b26a1cdb8c8bec3923d`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalFactor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/canonicalfactor--70fceb0c5a7f88131a08ace8.md) | 61 | `declaration-track:70fceb0c5a7f88131a08ace84f6deaf6921affeaaa651baadcc7c25c6786ff93` |
| 2 | `lemma` | [canonicalFactor_def](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/canonicalfactor-def--a1b3a7330ed8d8cc80c4afd2.md) | 64 | `result-track:a1b3a7330ed8d8cc80c4afd2aa140596a8220047f188654991e676d82bc86d2c` |
| 3 | `lemma` | [canonicalFactor_apply](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/canonicalfactor-apply--cc8c78c900e0ec07031d6cc0.md) | 68 | `result-track:cc8c78c900e0ec07031d6cc0656df2ca3ec652a7bc08415e321099f64f11ab98` |
| 4 | `lemma` | [canonicalFactor_apply_self](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/canonicalfactor-apply-self--9b7d5d7a0ada624139d4f2bf.md) | 73 | `result-track:9b7d5d7a0ada624139d4f2bfd7ee5dfa64433ca869b48ed034efcd9472af0af9` |
| 5 | `theorem` | [meromorphic_canonicalFactor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/meromorphic-canonicalfactor--1c3ddbbc9e010246f4b796bd.md) | 85 | `result-track:1c3ddbbc9e010246f4b796bdca9ef4eda25b4808e1ccec1e001840b9c4628805` |
| 6 | `theorem` | [analyticOnNhd_canonicalFactor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/analyticonnhd-canonicalfactor--19113110f3c3087294466b28.md) | 95 | `result-track:19113110f3c3087294466b28e4cb93ea347dc78649db4e9b4b88f2b963bf5a6f` |
| 7 | `theorem` | [meromorphicOrderAt_canonicalFactor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/meromorphicorderat-canonicalfactor--23a88fcbc509b440b787111c.md) | 106 | `result-track:23a88fcbc509b440b787111c259c5669c31603610db8c35b2b9ee1d77ce46ca6` |
| 8 | `theorem` | [meromorphicNFOn_canonicalFactor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/meromorphicnfon-canonicalfactor--e6370f9963836b6a1b9b298e.md) | 125 | `result-track:e6370f9963836b6a1b9b298e080610c353cb36e340f2a9a20ebdc4198abb6477` |
| 9 | `theorem` | [canonicalFactor_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/canonicalfactor-ne-zero--c8fef8c4f944ab39f6ba602d.md) | 143 | `result-track:c8fef8c4f944ab39f6ba602d614967cabe1682382cbe2fc028ebb3343a775207` |
| 10 | `theorem` | [canonicalFactor_eq_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/canonicalfactor-eq-zero-iff--480d7bfcc8f8b6dbb603b9c7.md) | 159 | `result-track:480d7bfcc8f8b6dbb603b9c7b5399b9167d5c0a6e6047514362bb0ea9c569888` |
| 11 | `theorem` | [norm_canonicalFactor_eval_circle_eq_one](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/norm-canonicalfactor-eval-circle-eq-one--bcaeec62808a1a4dd4860cb9.md) | 170 | `result-track:bcaeec62808a1a4dd4860cb98bd1538aa37bd863924e57c26251b3eb809c1773` |
| 12 | `theorem` | [meromorphicOrderAt_canonicalFactor_ne_top](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/meromorphicorderat-canonicalfactor-ne-top--bec0bda159df4e0cc740c039.md) | 186 | `result-track:bec0bda159df4e0cc740c039a0ff7013d25fc9d5b438811398559ddd738f52b5` |
| 13 | `theorem` | [divisor_canonicalFactor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/divisor-canonicalfactor--ed092316eb8f228d69cd1221.md) | 203 | `result-track:ed092316eb8f228d69cd122173009663ecb3105a8765e8a4c96e36ee8a7deffc` |
| 14 | `structure` | [CanonicalDecomp](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/canonicaldecomp--44e940f7319e809f410fd1af.md) | 240 | `declaration-track:44e940f7319e809f410fd1af55ab57de9273fcebd79c132db88af70af7c1069d` |
| 15 | `lemma` | [canonicalDecomposition_aux₁](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/canonicaldecomposition-aux--027931891b261a518ee8c8ee.md) | 256 | `result-track:027931891b261a518ee8c8eecf7487f8b26cb2c15ca3a24ef19f3dc217470cde` |
| 16 | `lemma` | [sum_apply_smul_single_eq_self](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/sum-apply-smul-single-eq-self--95ff97d0c6aa49f9b986f77f.md) | 270 | `result-track:95ff97d0c6aa49f9b986f77f36c32343a29c5adca690e9ed1f8b3148ae7c3a4b` |
| 17 | `lemma` | [canonicalDecomposition_aux₂](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/canonicaldecomposition-aux--3697383b7400b7e44f29337b.md) | 286 | `result-track:3697383b7400b7e44f29337bb7ce32cb49aa86b8b30edac8a9b65f4811932f3c` |
| 18 | `lemma` | [canonicalDecomposition_aux₃](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/canonicaldecomposition-aux--09e0ec2001fad058c8701cda.md) | 307 | `result-track:09e0ec2001fad058c8701cdaa465c7ad3cb2f8fdbf0e1aa86f75fced3941215d` |
| 19 | `theorem` | [_root_.GRWTSK.Analysis.ComplexAnalysis.CanonicalDecomp.Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.MeromorphicOn.exists_canonicalDecomp](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/root-grwtsk-analysis-complexanalysis-canonicaldecomp-variant64e0460d26c1--01be85d06b48ec450fa54ae3.md) | 322 | `result-track:01be85d06b48ec450fa54ae30ee16ddaa0e1a82c0123797ce85c4a5f5a52c2f9` |
| 20 | `theorem` | [CanonicalDecomp.divisor_eq_divisor](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/canonicaldecomp-divisor-eq-divisor--a9435ebce3dd430b7eaafca6.md) | 398 | `result-track:a9435ebce3dd430b7eaafca66550aed1dee63b67af7dbe24a5beaa6026655713` |
| 21 | `structure` | [ECanonicalDecomp](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/ecanonicaldecomp--740ab299a66a600eeda3f42e.md) | 455 | `declaration-track:740ab299a66a600eeda3f42e7ec32f3f6632876bc442775d160d266e726a0395` |
| 22 | `theorem` | [_root_.GRWTSK.Analysis.ComplexAnalysis.CanonicalDecomp.Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.MeromorphicOn.exists_ecanonicalDecomp](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/root-grwtsk-analysis-complexanalysis-canonicaldecomp-variant64e0460d26c1--b5dd5daee83ce16b6dad106d.md) | 477 | `result-track:b5dd5daee83ce16b6dad106dd529397c77866813ddbab479398b6f98c84c247c` |
| 23 | `lemma` | [mulSupport_pow_subset_support](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/mulsupport-pow-subset-support--10c4f2f72dbc9a8b80d54f2e.md) | 523 | `result-track:10c4f2f72dbc9a8b80d54f2e92e78ca8aa52150a5ce0f5278853c4f3532a0d7c` |
| 24 | `lemma` | [ECanonicalDecomp.eq_smul_meromorphicTrailingCoeffAt](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/ecanonicaldecomp-eq-smul-meromorphictrailingcoeffat--6ba40fc0863b3e82a244225b.md) | 534 | `result-track:6ba40fc0863b3e82a244225b26893e1db3a801d3c56735cd9dd671bfd88e54d7` |
| 25 | `lemma` | [ECanonicalDecomp.eq_smul_meromorphicTrailingCoeffAt_of_meromorphicOrderAt](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/ecanonicaldecomp-eq-smul-meromorphictrailingcoeffat-of-meromorphicordera--07f99037f4ef85a1bf209cb5.md) | 603 | `result-track:07f99037f4ef85a1bf209cb57318fe55007802d98468fab6a6c859b4233916d1` |
| 26 | `lemma` | [ECanonicalDecomp.log_norm_eq](../../../../../mathematics/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/declarations/ecanonicaldecomp-log-norm-eq--cd45862c52a81ef49e26ac4f.md) | 629 | `result-track:cd45862c52a81ef49e26ac4fcb6c236fccdf139abca2d9d3cef8098b7cc028e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
