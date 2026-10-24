# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mem.Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6a11da1037bbfa4dc192035ba90ecfa9b329639",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6a11da1037bbfa4dc192035ba90ecfa9b329639`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean.json)

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
| 1 | `theorem` | [get_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/declarations/get-mem--054c940dabb8cd01486c5cc5.md) | 29 | `result-track:054c940dabb8cd01486c5cc55f209556cfde7446d511bb972d5150748b019719` |
| 2 | `theorem` | [mem_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/declarations/mem-iff-get--f0296ab8269e07dde556bf7e.md) | 31 | `result-track:f0296ab8269e07dde556bf7e03797942387a6fe47c2492dfd84852c1035d02f5` |
| 3 | `theorem` | [notMem_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/declarations/notmem-nil--757658b01926b4bec80e35bf.md) | 37 | `result-track:757658b01926b4bec80e35bfa004d471fef552ac86c76cf58c415411442ab454` |
| 4 | `theorem` | [notMem_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/declarations/notmem-zero--28caeb72f27d5e9e55b6e8bb.md) | 40 | `result-track:28caeb72f27d5e9e55b6e8bbb4397d89631417273fd1167e0d8eaee00ecea75d` |
| 5 | `theorem` | [mem_cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/declarations/mem-cons-iff--30b0158a75e38d0abced5901.md) | 43 | `result-track:30b0158a75e38d0abced59011267a7fd068c1e117bae26882795c2348cd825ee` |
| 6 | `theorem` | [mem_succ_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/declarations/mem-succ-iff--3440443f64b7042b38acfd5d.md) | 46 | `result-track:3440443f64b7042b38acfd5d7f0a138112f95d2d55bfbecd52994776405b757c` |
| 7 | `theorem` | [mem_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/declarations/mem-cons-self--c86d429c4ff0ccd5c8bb1865.md) | 50 | `result-track:c86d429c4ff0ccd5c8bb186568c4bbd319a82286659804c3c1d3a2067841fd77` |
| 8 | `theorem` | [head_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/declarations/head-mem--b29507cdd13cf63fd294e0ad.md) | 54 | `result-track:b29507cdd13cf63fd294e0adb886319fba56fc8b95355b330e4c398a341ec64c` |
| 9 | `theorem` | [mem_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/declarations/mem-cons-of-mem--d1d98567521ea4e7ceccb6a6.md) | 57 | `result-track:d1d98567521ea4e7ceccb6a663c690bb0bb56b93cc48d436aa26a477c2b2a279` |
| 10 | `theorem` | [mem_of_mem_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/declarations/mem-of-mem-tail--196b03786514e7b4cd602172.md) | 60 | `result-track:196b03786514e7b4cd602172c12401788330e866ca065ba3d5090dccd3ac227f` |
| 11 | `theorem` | [mem_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/declarations/mem-map-iff--e3945a637cce22c75c0310a9.md) | 65 | `result-track:e3945a637cce22c75c0310a9338638737a67d2b5159ea400c2716bd4c2803e73` |
| 12 | `theorem` | [notMem_map_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/declarations/notmem-map-zero--92838e96a453436656036163.md) | 69 | `result-track:92838e96a4534366560361639aa7bf112603157056884b6eef9c573c7398e66a` |
| 13 | `theorem` | [mem_map_succ_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c.lean/declarations/mem-map-succ-iff--dddd1268da10c6e3a209a7cb.md) | 72 | `result-track:dddd1268da10c6e3a209a7cb6b48f83a438eb199ae3c5e2ad69a64dbb78fcff2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
