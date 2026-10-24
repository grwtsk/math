# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mem.Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1693acc52efd51326fff09f7dc29e14cbce1d67b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1693acc52efd51326fff09f7dc29e14cbce1d67b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [get_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/declarations/get-mem--3a67cb9d900af28b35f61f0b.md) | 25 | `result-track:3a67cb9d900af28b35f61f0b7c74c453ab0804cb84e02677d9db4ad1abb3b2f0` |
| 2 | `theorem` | [mem_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/declarations/mem-iff-get--f9698289cf1c921de2288d44.md) | 27 | `result-track:f9698289cf1c921de2288d4422847ea845d9ffc7d25280f439d481ef10faca8c` |
| 3 | `theorem` | [notMem_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/declarations/notmem-nil--85468bb6d6531b38c658b148.md) | 33 | `result-track:85468bb6d6531b38c658b1487c00b8d2dce95d19e30aa418a0fa77590437b1e3` |
| 4 | `theorem` | [notMem_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/declarations/notmem-zero--b5136af155653e6094c75dcc.md) | 40 | `result-track:b5136af155653e6094c75dccbc597e9d11221e2567c010c2e661dd82dfdb75e9` |
| 5 | `theorem` | [mem_cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/declarations/mem-cons-iff--291caa9f8b978b9d2a78b91a.md) | 45 | `result-track:291caa9f8b978b9d2a78b91a7086a5ae12075c71808c7385c52c455c1d3d7f9c` |
| 6 | `theorem` | [mem_succ_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/declarations/mem-succ-iff--1e9c5e55e1203eb1fe1cc19f.md) | 48 | `result-track:1e9c5e55e1203eb1fe1cc19fbe0b548da1a50359acc8737409f5486e1b03de00` |
| 7 | `theorem` | [mem_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/declarations/mem-cons-self--805d24baa8f41cd67cf66841.md) | 52 | `result-track:805d24baa8f41cd67cf6684152b66ee606a37390f092fc38e675d75d92cdd684` |
| 8 | `theorem` | [head_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/declarations/head-mem--bf845488e925abe5f0af9bc7.md) | 56 | `result-track:bf845488e925abe5f0af9bc76f3e72ecdef15215813ac0620b8e6a1d332fb0fd` |
| 9 | `theorem` | [mem_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/declarations/mem-cons-of-mem--7bf1b709ccf275b3477d18fc.md) | 59 | `result-track:7bf1b709ccf275b3477d18fccaa20ec9c37042396e9eee1c5b2dc3f9c82c7d9d` |
| 10 | `theorem` | [mem_of_mem_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/declarations/mem-of-mem-tail--c621f6ed8f65bba70a61e1d6.md) | 62 | `result-track:c621f6ed8f65bba70a61e1d62a133fcd5610a62cc81233a79391cda5c609e3ff` |
| 11 | `theorem` | [mem_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/declarations/mem-map-iff--c0b13541d6f108ee8d9554f6.md) | 67 | `result-track:c0b13541d6f108ee8d9554f6fcfe94e9e75cd126ea043e146407efda86d3af38` |
| 12 | `theorem` | [notMem_map_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/declarations/notmem-map-zero--2abe71fd4ccf192293d7449f.md) | 71 | `result-track:2abe71fd4ccf192293d7449f5b920de328fd7e0c7c7bad3c875b11a1c226f8c6` |
| 13 | `theorem` | [mem_map_succ_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant559dd48bacf7f8655c7648536e52b1bf3255f9a8fc3171ac184b56b448cf86c6.lean/declarations/mem-map-succ-iff--e49dc66153f5a8f749dea38e.md) | 76 | `result-track:e49dc66153f5a8f749dea38e91d7acece3c2274e5168a1073dd3e60e54f547ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
