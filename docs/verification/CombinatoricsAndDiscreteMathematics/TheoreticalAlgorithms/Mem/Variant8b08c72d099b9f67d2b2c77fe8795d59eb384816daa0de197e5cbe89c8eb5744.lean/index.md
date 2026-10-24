# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mem.Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d365e6ddbb85664280349aec5f15bf20670567e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d365e6ddbb85664280349aec5f15bf20670567e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [get_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/declarations/get-mem--1aa89259612d143536e7a362.md) | 33 | `result-track:1aa89259612d143536e7a3627e7bd8560258f340e37ef4700d67190086f4d852` |
| 2 | `theorem` | [mem_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/declarations/mem-iff-get--8166427b749964651ad33fab.md) | 35 | `result-track:8166427b749964651ad33fab7ba822462c861aa0180c6da6acbf1e7d14eef92f` |
| 3 | `theorem` | [notMem_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/declarations/notmem-nil--a16caaf29b1eed1780eaf08b.md) | 41 | `result-track:a16caaf29b1eed1780eaf08b7155f2132f03d6a4fc7d8985b6bd3000044f15ca` |
| 4 | `theorem` | [notMem_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/declarations/notmem-zero--a5bdbfcaf4b38e3719e9c55b.md) | 48 | `result-track:a5bdbfcaf4b38e3719e9c55b7c179ab74ad60ebf73760d9f191100421db04350` |
| 5 | `theorem` | [mem_cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/declarations/mem-cons-iff--df1fd2bc9389145436bb5c58.md) | 53 | `result-track:df1fd2bc9389145436bb5c58d9d1f0d2afc2d874cb3a0f32a11769fed9f49908` |
| 6 | `theorem` | [mem_succ_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/declarations/mem-succ-iff--f9357d60a562d7048bb0b352.md) | 56 | `result-track:f9357d60a562d7048bb0b352a567db0bed304dc3e30b2d8c24f4061bb6d02cf0` |
| 7 | `theorem` | [mem_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/declarations/mem-cons-self--28f905f16a184ad752367805.md) | 60 | `result-track:28f905f16a184ad752367805bbae2c616bf2e0e30edd1ade5a0550be73ba031e` |
| 8 | `theorem` | [head_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/declarations/head-mem--e541a0f84771ed2bc5227e95.md) | 64 | `result-track:e541a0f84771ed2bc5227e9528d46e909930bb70cc662eca6bd590c8e7d7ba50` |
| 9 | `theorem` | [mem_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/declarations/mem-cons-of-mem--ef9f87edc6512b991a58ca70.md) | 67 | `result-track:ef9f87edc6512b991a58ca70a6133b0009056215e5e1794fbeaa50bd49c229f2` |
| 10 | `theorem` | [mem_of_mem_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/declarations/mem-of-mem-tail--23f5ea75911b27651c48c879.md) | 70 | `result-track:23f5ea75911b27651c48c87985c2208fc2b888dd98a4567eb1e50c59137dc90e` |
| 11 | `theorem` | [mem_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/declarations/mem-map-iff--a07b556e9d24cfea8a0d1e53.md) | 75 | `result-track:a07b556e9d24cfea8a0d1e53f801ce35351590a554de4fcc7ad625ba73b3cf29` |
| 12 | `theorem` | [notMem_map_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/declarations/notmem-map-zero--df59598737db063dabcbaf8b.md) | 79 | `result-track:df59598737db063dabcbaf8bf7eabcf653ce1036377b3d3b00ae7fab6407ccb3` |
| 13 | `theorem` | [mem_map_succ_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant8b08c72d099b9f67d2b2c77fe8795d59eb384816daa0de197e5cbe89c8eb5744.lean/declarations/mem-map-succ-iff--1b42e81c7980d2e66c6177e9.md) | 84 | `result-track:1b42e81c7980d2e66c6177e94b6d1bc4b0d3648ffe22ec385285c700c8f991a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
