# Verification target: GRWTSK.Analysis.ComplexAnalysis.Complex.Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5e94153c7c375e5a2ee05aeee2fb46604d67e0f",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5e94153c7c375e5a2ee05aeee2fb46604d67e0f`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/macro-rules--e73a806e71851ca3f88d99f8.md) | 24 | `declaration-track:e73a806e71851ca3f88d99f88bc472d878e5db4e9ac9c4bfa35df42ca375cf0c` |
| 2 | `def` | [cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow--03f6e7d1f708d01bfc649cfb.md) | 33 | `declaration-track:03f6e7d1f708d01bfc649cfb708f2d8ff1a2310ca56b71b8b6767061327b0b51` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/instance--ec354a3fc8445039ee18b4a5.md) | 37 | `declaration-track:ec354a3fc8445039ee18b4a55bb637dad55fc1e1d52f1b7507cddd8888db8dfa` |
| 4 | `theorem` | [cpow_eq_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-eq-pow--8948bb0dacef39d2c454541f.md) | 41 | `result-track:8948bb0dacef39d2c454541fb22a7c84a5a99575811c865fb5d6388f5c35e180` |
| 5 | `theorem` | [cpow_def](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-def--6a04ba6a2dc0c1799ac243fa.md) | 45 | `result-track:6a04ba6a2dc0c1799ac243fafb9c73cf7b9d81765e2c45b9568e1e1832e57254` |
| 6 | `theorem` | [cpow_def_of_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-def-of-ne-zero--01c7bb23bf0e1fa0b29e3251.md) | 49 | `result-track:01c7bb23bf0e1fa0b29e32510ee07513e55aae51d6c4c0f4ec932f3e6cd773e4` |
| 7 | `theorem` | [cpow_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-zero--f57788ca99bafbf671db00cd.md) | 54 | `result-track:f57788ca99bafbf671db00cd7c7a4f1aafdd7bb9d28bcb91b7713a978ba4c551` |
| 8 | `theorem` | [cpow_eq_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-eq-zero-iff--7e53e3f8aab0873a07fdc1f4.md) | 58 | `result-track:7e53e3f8aab0873a07fdc1f483595a1a17cbf27ca3fbd4fa80e33b29d45609ed` |
| 9 | `theorem` | [zero_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/zero-cpow--ae567bcd22ad52442493d5e0.md) | 64 | `result-track:ae567bcd22ad52442493d5e00f11ff636c9e2003a0fc28b377c4b48630e5f101` |
| 10 | `theorem` | [zero_cpow_eq_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/zero-cpow-eq-iff--1b3a7993bff86ab79e8cd0d2.md) | 67 | `result-track:1b3a7993bff86ab79e8cd0d2400aff850926fd386a928b9eb60997ddd59d6a51` |
| 11 | `theorem` | [eq_zero_cpow_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/eq-zero-cpow-iff--9e6ed6a5146f7d6d01bf0039.md) | 84 | `result-track:9e6ed6a5146f7d6d01bf00390ee22e60bf0333126ab7972efca32e4c7bf5f47c` |
| 12 | `theorem` | [cpow_one](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-one--56498362db2ca5bd7d4bd46e.md) | 89 | `result-track:56498362db2ca5bd7d4bd46ecf765bde199038eaf748e7eea8c1a409c02335c7` |
| 13 | `theorem` | [one_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/one-cpow--6c9793aa0c539b0168948ab0.md) | 95 | `result-track:6c9793aa0c539b0168948ab0da4396ad1bccc8417bda2324cfc380718eac4500` |
| 14 | `theorem` | [cpow_add](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-add--7a1d5c811fff96926de2144c.md) | 100 | `result-track:7a1d5c811fff96926de2144c1c223bb482a1fa3e9cb26bce7c6fb142378c22bf` |
| 15 | `theorem` | [cpow_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-mul--a4f7b24b879b0eb23217069e.md) | 105 | `result-track:a4f7b24b879b0eb23217069e867f39bd0f0441c526f5d02738eefa149af51ae9` |
| 16 | `theorem` | [cpow_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-neg--6e2b185b1d8fe591bb8b7ebd.md) | 111 | `result-track:6e2b185b1d8fe591bb8b7ebd26cc84ab6922b5546e98729234124d9d4fb2e975` |
| 17 | `theorem` | [cpow_sub](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-sub--ef96da4cb4fda4f5fa153afa.md) | 116 | `result-track:ef96da4cb4fda4f5fa153afa746b633a30351f44d2da9014aaa3daea5737b773` |
| 18 | `theorem` | [cpow_neg_one](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-neg-one--d32f20c8d31ed5552910ab32.md) | 120 | `result-track:d32f20c8d31ed5552910ab3292c9108084adf8bc54b574bd1de2c94e6f059fb6` |
| 19 | `theorem` | [cpow_nat_cast](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-nat-cast--f58ec2cc5d5d7f689aabc123.md) | 124 | `result-track:f58ec2cc5d5d7f689aabc1234d7295d60d7eec15a73bb500695883b4917c0384` |
| 20 | `theorem` | [cpow_two](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-two--05fd2b6bca949b5bcd6edac1.md) | 134 | `result-track:05fd2b6bca949b5bcd6edac1992c5d8c4b212eb81600daa3d19dfb24e7b01129` |
| 21 | `theorem` | [cpow_int_cast](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-int-cast--6d61fad08fa40188f900f59d.md) | 141 | `result-track:6d61fad08fa40188f900f59d09c4be932b0bef3453265b7a599fd167bdce3e03` |
| 22 | `theorem` | [cpow_nat_inv_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-nat-inv-pow--b5b8d7723818286290d09f05.md) | 149 | `result-track:b5b8d7723818286290d09f05b4a041c5c0ac078dfcb3f6040b202dbcc7475f46` |
| 23 | `theorem` | [mul_cpow_ofReal_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/mul-cpow-ofreal-nonneg--1ca436a0b761078f9e84b2b8.md) | 172 | `result-track:1ca436a0b761078f9e84b2b89e60d830a25c7c74566437320e3a78600d2bcd63` |
| 24 | `theorem` | [inv_cpow_eq_ite](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/inv-cpow-eq-ite--6c106c676b3b0463fa41c304.md) | 186 | `result-track:6c106c676b3b0463fa41c304d94450dba6d06536be968a03f2d8a77fa1ec3881` |
| 25 | `theorem` | [inv_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/inv-cpow--793803591eaf92ea28bb52a6.md) | 194 | `result-track:793803591eaf92ea28bb52a67494f10f5186e179e76a7997aa7b5cfac1ec1b0f` |
| 26 | `theorem` | [inv_cpow_eq_ite'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/inv-cpow-eq-ite--76d7282f9dd2dff770b4b477.md) | 199 | `result-track:76d7282f9dd2dff770b4b4777327f877b57fa7f6b1dd9cae8ea240915c1f208d` |
| 27 | `theorem` | [conj_cpow_eq_ite](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/conj-cpow-eq-ite--3ea1f4de4ac05ce4a7411601.md) | 207 | `result-track:3ea1f4de4ac05ce4a741160195c247dae0e6bddaf937c903cfec94d902d8bf0c` |
| 28 | `theorem` | [conj_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/conj-cpow--65eac063305023b052e60a05.md) | 214 | `result-track:65eac063305023b052e60a05a2bc8f76ed44a42fa98cc63fe4f895ee2f86a044` |
| 29 | `theorem` | [cpow_conj](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant91fe384887a390ecab779f5bc13f380a3372c4981dde1fa5db27257f9cd26e83.lean/declarations/cpow-conj--a9975faa3850a748b0ae6578.md) | 218 | `result-track:a9975faa3850a748b0ae65789b87800779d556d060dee02109a62fdfe3f003bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
