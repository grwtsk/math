# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fin.Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eb2da5c48822f6c808557d3c6a1e45e21eec4e7",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eb2da5c48822f6c808557d3c6a1e45e21eec4e7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.MinMax` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [npow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/npow--fa0219b253b653e65d51e86d.md) | 34 | `declaration-track:fa0219b253b653e65d51e86dbb584cfec78922f7a6257412db82991eff469782` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/instance--f0201762ac7b6756a3522451.md) | 36 | `declaration-track:f0201762ac7b6756a35224519c19e01c267a21c667f94d64f81088613c25718d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/instance--f1a67abed6f5d229623defa0.md) | 39 | `declaration-track:f1a67abed6f5d229623defa05a41eb73d2fbd2509ef1b93e9b88286633888731` |
| 4 | `theorem` | [pow_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/pow-zero--2ad23568647057347b5ca50e.md) | 42 | `result-track:2ad23568647057347b5ca50ef510436561493ef0aff4f9296894bd3d57993fba` |
| 5 | `theorem` | [pow_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/pow-succ--8e04b6077905edfa6dc8b6c9.md) | 43 | `result-track:8e04b6077905edfa6dc8b6c9d44bc1b82e4982bd7ef81cf754db83012f2fd435` |
| 6 | `theorem` | [add_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/add-assoc--45a0f02ed415daf7c9d58458.md) | 45 | `result-track:45a0f02ed415daf7c9d584583d0563ae8fc41adf34d509fe7b92b2eaa2638981` |
| 7 | `theorem` | [add_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/add-comm--12d1229e9ddf42a29496b1d3.md) | 48 | `result-track:12d1229e9ddf42a29496b1d3c885a65218a4f637554efe4e212bef1703a82aa0` |
| 8 | `theorem` | [add_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/add-zero--e1f15ad28c6633d70cc26b85.md) | 51 | `result-track:e1f15ad28c6633d70cc26b858b872580adc4c17ecc22a64335267eb82c3736c4` |
| 9 | `theorem` | [neg_add_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/neg-add-cancel--ec6035a562d62e0877ee641f.md) | 55 | `result-track:ec6035a562d62e0877ee641f3c4aadd0562536e3323174a7543cb992c8450aba` |
| 10 | `theorem` | [mul_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/mul-assoc--fc13c6c31eb259b1fe0906f5.md) | 59 | `result-track:fc13c6c31eb259b1fe0906f5d0338e1d59431f8270fbc6a79d58320225e8bda9` |
| 11 | `theorem` | [mul_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/mul-comm--cd5e3ca52a4c4272d227f5bb.md) | 62 | `result-track:cd5e3ca52a4c4272d227f5bb4b92799c09d220482415d740b9f7b2cc062266ac` |
| 12 | `theorem` | [zero_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/zero-mul--957bb3898bb145ace9527562.md) | 65 | `result-track:957bb3898bb145ace9527562883614c301918bf66c1d900ff07b5b9ecb8792e5` |
| 13 | `theorem` | [mul_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/mul-one--595d006dde070909e2d6b2bd.md) | 68 | `result-track:595d006dde070909e2d6b2bd227d4f260c96904015941e7c8d38d7653df5a601` |
| 14 | `theorem` | [left_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/left-distrib--28cf95d68094156c47edef09.md) | 72 | `result-track:28cf95d68094156c47edef09a5dbb17f45374406cdd432a4b356eb096060fe14` |
| 15 | `theorem` | [ofNat_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/ofnat-succ--677022ae5888be0efbcc8f93.md) | 75 | `result-track:677022ae5888be0efbcc8f93f34103b25a0a0d8a32d72f4025940daaafd97e1a` |
| 16 | `theorem` | [sub_eq_add_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/sub-eq-add-neg--326e932b28988888d393653a.md) | 78 | `result-track:326e932b28988888d393653a3955268e7a775f362b5e28688e8a141a9accdfbe` |
| 17 | `theorem` | [neg_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/neg-neg--29c5f181f94f49f3d79a9053.md) | 81 | `result-track:29c5f181f94f49f3d79a9053d0c2ac8f57c3be88b9a68b7c6e590b6d24f6ad60` |
| 18 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Npow.Variant5fa3dd5230518c7eaa51b630434fe2c179bda0918208e2d72f473102e1a7ad71.Nat.sub_sub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-npow--416cbaab57d97d0c7360c002.md) | 88 | `result-track:416cbaab57d97d0c7360c00209d8ada677f0c55cc24c5e2422d31a06206f66c0` |
| 19 | `theorem` | [neg_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/neg-mul--3e4afa820b0bdcc1b7e5d0f3.md) | 90 | `result-track:3e4afa820b0bdcc1b7e5d0f30d4f6c82b96cd49edbedbb90226d875788fa51dc` |
| 20 | `theorem` | [intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/intcast-neg--56fc25af03065e345110c9ab.md) | 112 | `result-track:56fc25af03065e345110c9abdcb22c10f843da228afb5db896e7d29ae2f1face` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/instance--47956927fe802c6d316a4f25.md) | 119 | `declaration-track:47956927fe802c6d316a4f25ce7f6cc9f599e67e6877fe43bd88652eef2ce291` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/instance--3e1d71d38012c995458999bc.md) | 143 | `declaration-track:3e1d71d38012c995458999bc6eee985d31ae52965d2b49d6392d1ffb91e03ec6` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/example--937c03051dd3b465e44397bd.md) | 150 | `declaration-track:937c03051dd3b465e44397bd1248abc20b55f05b1d92e8cb683ae2503f4eacf1` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/example--299a1ceddd97823a49d99899.md) | 151 | `declaration-track:299a1ceddd97823a49d998998634246f4d71ea0f5f31f7ce38fbf936f85b354d` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/instance--a1c627324cf77c46950e0b22.md) | 154 | `declaration-track:a1c627324cf77c46950e0b22c50fda55eacc3fafeebcb090dc4b6dd3c1b72cc2` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant16cfce9145e8b5e6532049e74d86a6f54747912ca247010726c2cc7ed505715e.lean/declarations/instance--e04d0c9df758612fabe10c14.md) | 167 | `declaration-track:e04d0c9df758612fabe10c14c2306479f538f4579cbe83c9712f6332fa5fc17a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
