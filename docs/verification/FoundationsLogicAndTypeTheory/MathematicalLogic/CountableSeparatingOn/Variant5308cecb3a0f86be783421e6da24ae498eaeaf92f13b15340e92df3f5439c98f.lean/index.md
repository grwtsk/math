# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CountableSeparatingOn.Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "552a128f17bc54ad4022fe8dad42549365c51201",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `552a128f17bc54ad4022fe8dad42549365c51201`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.CountableInter` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasCountableSeparatingOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/hascountableseparatingon--c22ffbdd5328ca347ced4d47.md) | 83 | `declaration-track:c22ffbdd5328ca347ced4d476193c873789487326081004b71429632687b424a` |
| 2 | `theorem` | [exists_countable_separating](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/exists-countable-separating--1ee71d8d24e34d20805c1e42.md) | 87 | `result-track:1ee71d8d24e34d20805c1e42569774bdf119f9fc38d07abe4a42542c02b2d1b9` |
| 3 | `theorem` | [exists_nonempty_countable_separating](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/exists-nonempty-countable-separating--c828c44bc4f6244237c384d8.md) | 93 | `result-track:c828c44bc4f6244237c384d8142e8a32e84fe4f6be5457644f6c08ddda3f51c3` |
| 4 | `theorem` | [exists_seq_separating](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/exists-seq-separating--1841b56e803b81fe3533d97f.md) | 101 | `result-track:1841b56e803b81fe3533d97f565e1d429bae9e196b363cef49843bbfa74819c4` |
| 5 | `theorem` | [HasCountableSeparatingOn.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/hascountableseparatingon-mono--2139d75267ca1244b22b740e.md) | 109 | `result-track:2139d75267ca1244b22b740eb3aaa88cc7e7897b7d97f06fc0a6d0d809b1b4b2` |
| 6 | `theorem` | [HasCountableSeparatingOn.of_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/hascountableseparatingon-of-subtype--0cee25c17aaebdd1f9511e00.md) | 116 | `result-track:0cee25c17aaebdd1f9511e006ae2f52c66eeb6c0c2b9219c5dd277015cc1a61d` |
| 7 | `theorem` | [HasCountableSeparatingOn.subtype_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/hascountableseparatingon-subtype-iff--1f83898a961163e0fa3d3103.md) | 126 | `result-track:1f83898a961163e0fa3d310394797681c6da26bd45b120fb949dc18f57426419` |
| 8 | `theorem` | [exists_subset_subsingleton_mem_of_forall_separating](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/exists-subset-subsingleton-mem-of-forall-separating--214dbdb5e1622eff9ffed4f0.md) | 156 | `result-track:214dbdb5e1622eff9ffed4f04690cea6e29cca7f3e3375bfee3f75ed82a04e69` |
| 9 | `theorem` | [exists_mem_singleton_mem_of_mem_of_nonempty_of_forall_separating](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/exists-mem-singleton-mem-of-mem-of-nonempty-of-forall-separating--2bae0d0692c32790f29725a1.md) | 172 | `result-track:2bae0d0692c32790f29725a162a8a17495fc0855876085d3d2bb34fc67bbc8c6` |
| 10 | `theorem` | [exists_singleton_mem_of_mem_of_forall_separating](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/exists-singleton-mem-of-mem-of-forall-separating--82a857c20907747ec7669742.md) | 180 | `result-track:82a857c20907747ec7669742861e1b1dfbe6582ae80aed63e25c9c2694e9d308` |
| 11 | `theorem` | [exists_subsingleton_mem_of_forall_separating](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/exists-subsingleton-mem-of-forall-separating--dc791c7df9c553b134d8f074.md) | 188 | `result-track:dc791c7df9c553b134d8f0743ac9288e7a84f2ed27896edf9f359a8e4b805de9` |
| 12 | `theorem` | [exists_singleton_mem_of_forall_separating](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/exists-singleton-mem-of-forall-separating--000f1c7e1a4319d19fb8a93d.md) | 194 | `result-track:000f1c7e1a4319d19fb8a93d59626f09f5421757437fd5facea93604fc638b69` |
| 13 | `theorem` | [exists_mem_eventuallyEq_const_of_eventually_mem_of_forall_separating](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/exists-mem-eventuallyeq-const-of-eventually-mem-of-forall-separating--2c28e3d7c6c530f980918900.md) | 207 | `result-track:2c28e3d7c6c530f98091890041baf5fc09f60cf6d2799f77c5736898358c123d` |
| 14 | `theorem` | [exists_eventuallyEq_const_of_eventually_mem_of_forall_separating](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/exists-eventuallyeq-const-of-eventually-mem-of-forall-separating--a53f59fffd4fe49ea0df759e.md) | 213 | `result-track:a53f59fffd4fe49ea0df759eb05f4452de7226e911433b82f5b6ce943603ec78` |
| 15 | `theorem` | [exists_eventuallyEq_const_of_forall_separating](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/exists-eventuallyeq-const-of-forall-separating--4a16c3643f7823843452bce4.md) | 219 | `result-track:4a16c3643f7823843452bce48abaae91c98280cb6139d4cd8fcd356e52d1f848` |
| 16 | `theorem` | [of_eventually_mem_of_forall_separating_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/of-eventually-mem-of-forall-separating-mem-iff--5c4c12483253e49d5d1ae5dc.md) | 235 | `result-track:5c4c12483253e49d5d1ae5dc9a205de46365d09f4a581f59aec0f28dbed013ee` |
| 17 | `theorem` | [of_forall_separating_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/of-forall-separating-mem-iff--d5b1b0a1bf434cc74b78ce41.md) | 243 | `result-track:d5b1b0a1bf434cc74b78ce41ba85bd102c0578650bc7cd7ff99740c8768c729b` |
| 18 | `theorem` | [of_eventually_mem_of_forall_separating_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/of-eventually-mem-of-forall-separating-preimage--de71b543c228126ec3282f0f.md) | 248 | `result-track:de71b543c228126ec3282f0f9aadaffc4209d3e82530c9ac347e9a8c8bc1f167` |
| 19 | `theorem` | [of_forall_separating_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant5308cecb3a0f86be783421e6da24ae498eaeaf92f13b15340e92df3f5439c98f.lean/declarations/of-forall-separating-preimage--a0c596efb15836168db27b0a.md) | 253 | `result-track:a0c596efb15836168db27b0a9f43472460519ca61a8049bc58758680621e4237` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
