# Verification target: GRWTSK.Analysis.ComplexAnalysis.IntegerCompl.Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a91fbe653d5c2ad4b08b47ee0307273977aec435",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a91fbe653d5c2ad4b08b47ee0307273977aec435`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean.json)

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
| 1 | `def` | [Complex.integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/declarations/complex-integercomplement--cd3c27757ece3b7db2346258.md) | 31 | `declaration-track:cd3c27757ece3b7db2346258f7b38c779a56ff9863ab395432d2718127c9ac7b` |
| 2 | `lemma` | [integerComplement_eq](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/declarations/integercomplement-eq--db0d0ac2294f48a800d15f9e.md) | 37 | `result-track:db0d0ac2294f48a800d15f9e3e62ea4f4337e040315e36ebdf6f8429fbf89ada` |
| 3 | `lemma` | [mem_integerComplement_iff](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/declarations/mem-integercomplement-iff--05a1e435912327b9c5a6a50a.md) | 39 | `result-track:05a1e435912327b9c5a6a50a0d1e6a1daa34c2093d8ecbed3c6f0e2d603d6a96` |
| 4 | `lemma` | [_root_.GRWTSK.Analysis.ComplexAnalysis.ComplexIntegerComplement.Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.UpperHalfPlane.coe_mem_integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/declarations/root-grwtsk-analysis-complexanalysis-complexintegercomplement-variantd64--7f3064d1b0add78c6f4a2974.md) | 42 | `result-track:7f3064d1b0add78c6f4a2974183794d203bac6a867436a0013c16c298dcb6ca8` |
| 5 | `lemma` | [add_intCast_mem_integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/declarations/add-intcast-mem-integercomplement--e1b6f12e14dea168e60b9144.md) | 46 | `result-track:e1b6f12e14dea168e60b9144c623c09cc4807570d56b1ece5d0271fa335b9584` |
| 6 | `lemma` | [integerComplement.ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/declarations/integercomplement-ne-zero--54df688763fe8dd5aeacf749.md) | 51 | `result-track:54df688763fe8dd5aeacf7497340cbf8116e155d8c2430462d2181edfb227f04` |
| 7 | `lemma` | [integerComplement_add_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/declarations/integercomplement-add-ne-zero--d008dbcd1349986f53a16360.md) | 54 | `result-track:d008dbcd1349986f53a16360af03af82600133f4546eae80bc587ec49a465b08` |
| 8 | `lemma` | [integerComplement.ne_one](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/declarations/integercomplement-ne-one--1bef8378c2f490419a8226a5.md) | 57 | `result-track:1bef8378c2f490419a8226a5601a2ba85c74e2f38a5c4adf4d47044875c1c304` |
| 9 | `lemma` | [integerComplement_pow_two_ne_pow_two](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/declarations/integercomplement-pow-two-ne-pow-two--04db5670ce4daf9e3f333f94.md) | 60 | `result-track:04db5670ce4daf9e3f333f947109898dd40010a4dc33f800d89235e3b24624c6` |
| 10 | `lemma` | [upperHalfPlane_inter_integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/declarations/upperhalfplane-inter-integercomplement--e6545b0dfe5bcb401747409c.md) | 65 | `result-track:e6545b0dfe5bcb401747409ccbbdb414474eaf6208a30cd68579690823e62145` |
| 11 | `lemma` | [_root_.GRWTSK.Analysis.ComplexAnalysis.ComplexIntegerComplement.Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48.UpperHalfPlane.int_div_mem_integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variant8bf5c64362201ff3b169490ef4cc9780c4ebe2f7df6088d522125cf283be5790.lean/declarations/root-grwtsk-analysis-complexanalysis-complexintegercomplement-variantd64--2273e2465f59f8e6e064aded.md) | 70 | `result-track:2273e2465f59f8e6e064aded4c0a051c480294f9b336cb8b374e8af14c6bdcad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
