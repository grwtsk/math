# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Distillation.Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58d40cf8b4e8fe6710437fe57ce0dac4a499ed75",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58d40cf8b4e8fe6710437fe57ce0dac4a499ed75`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Network` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.ML.IntervalVector` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IntervalDyadic.neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/intervaldyadic-neg--2fb9285caf00b77d64105dfa.md) | 41 | `declaration-track:2fb9285caf00b77d64105dfa2b3583b84efe88c0ba0443c768930c2cb35e05ed` |
| 2 | `theorem` | [IntervalDyadic.mem_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/intervaldyadic-mem-neg--2eeb2e038c8d0dd455cb3105.md) | 51 | `result-track:2eeb2e038c8d0dd455cb31050b87ee4c1e8de39cbf34a438c8d1c313f88d3ced` |
| 3 | `def` | [IntervalDyadic.sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/intervaldyadic-sub--2c149cf8539aee102d99b6d6.md) | 65 | `declaration-track:2c149cf8539aee102d99b6d67ba0395820575ede0f60b92f3cfafa2cbf5cbc6a` |
| 4 | `theorem` | [IntervalDyadic.mem_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/intervaldyadic-mem-sub--3c6395cbb5b1e572dabb6433.md) | 69 | `result-track:3c6395cbb5b1e572dabb6433add3ee421effec76895793b8004c418928a488fa` |
| 5 | `structure` | [SequentialNet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/sequentialnet--fb79e6003bce4d177526fe3b.md) | 77 | `declaration-track:fb79e6003bce4d177526fe3b83667b354f9ce01964c86eb3c943d44376318a5a` |
| 6 | `def` | [forwardReal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/forwardreal--a3dcf8c787abf9eed715f45f.md) | 84 | `declaration-track:a3dcf8c787abf9eed715f45f8ab16fe93305586f02fba8d33bacb3650ce0eaff` |
| 7 | `def` | [forwardInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/forwardinterval--e2c767001f89b391b1671268.md) | 88 | `declaration-track:e2c767001f89b391b1671268b06dbf02fcff4f49d8a04ef14a0d2855d494600d` |
| 8 | `def` | [LayersWellFormed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/layerswellformed--1fe0e903622c27bfcb5ba28b.md) | 92 | `declaration-track:1fe0e903622c27bfcb5ba28be6b042bac892b04d2eb61043ac4d89fb7e13a883` |
| 9 | `def` | [WellFormed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/wellformed--6956e40377f5905882adbc29.md) | 100 | `declaration-track:6956e40377f5905882adbc29dc9fab6a8f13d04bebde3f1e69dc5edd429a401c` |
| 10 | `theorem` | [forwardLength_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/forwardlength-aux--146d0994715522766214c52f.md) | 104 | `result-track:146d0994715522766214c52f02608fd14d41407ca62b1df47f901ea56e27971f` |
| 11 | `theorem` | [mem_forwardInterval_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/mem-forwardinterval-aux--8ecf4a5e4e4fdc321b804181.md) | 123 | `result-track:8ecf4a5e4e4fdc321b804181d1258c66aa3ab6c0a2831a633921de5e3eb21920` |
| 12 | `theorem` | [mem_forwardInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/mem-forwardinterval--f1a55ceae894a87ffdb3c2c3.md) | 173 | `result-track:f1a55ceae894a87ffdb3c2c3df59573da62ab446b52448ca98ac459aa2eeeea0` |
| 13 | `def` | [subVectors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/subvectors--8b3ed385b89f10817758781c.md) | 189 | `declaration-track:8b3ed385b89f10817758781cf5358c059ca5acd547ae8961400d3cfa4a27338c` |
| 14 | `theorem` | [subVectors_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/subvectors-length--d523b2a817a019d473e24b54.md) | 193 | `result-track:d523b2a817a019d473e24b543bd7bd0ae3dce21d94f00196b5eca23732e5c61f` |
| 15 | `theorem` | [mem_subVectors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/mem-subvectors--63b11bf1a8e6837d5620f0fa.md) | 198 | `result-track:63b11bf1a8e6837d5620f0fa7d845013c2801853c73b1893b5b084fc530e9585` |
| 16 | `def` | [intervalBoundedBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/intervalboundedby--64cdb5167eeb837bd70aa21e.md) | 217 | `declaration-track:64cdb5167eeb837bd70aa21e60d236d86504b60039c0e97c4d8572be11f7fad4` |
| 17 | `def` | [isBoundedBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/isboundedby--a3b2819f5f92c04d56407f0b.md) | 222 | `declaration-track:a3b2819f5f92c04d56407f0bfc5d6e486c9bf2aced4f937b8fed593c56b6eb3b` |
| 18 | `theorem` | [intervalBoundedBy_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/intervalboundedby-spec--c81d916521a440cbb691cce1.md) | 226 | `result-track:c81d916521a440cbb691cce1fd2a37a8e174deae94d9e1bc99267188c42f3f29` |
| 19 | `def` | [checkEquivalence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/checkequivalence--3b1812b3b8a33fd63197147d.md) | 245 | `declaration-track:3b1812b3b8a33fd63197147d07cf4c17dde363b5041b51045cba50d6af37dd40` |
| 20 | `theorem` | [checkEquivalence_dims](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/checkequivalence-dims--18e740755da4b63723bc39fb.md) | 258 | `result-track:18e740755da4b63723bc39fba4cb513bf76ae14f687fdb2b83f63b99c7eabbd6` |
| 21 | `theorem` | [verify_equivalence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/declarations/verify-equivalence--e7493f316eb5ccf444de3c9d.md) | 275 | `result-track:e7493f316eb5ccf444de3c9d50aa56b183cee62e8bf79abd52ac7dbfd3c41121` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
