# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SplitBy.Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c2aa6a93133ff1d947f01abfaebf075031812e8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c2aa6a93133ff1d947f01abfaebf075031812e8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [splitBy_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/declarations/splitby-nil--9f65517aa1204522d245a463.md) | 27 | `result-track:9f65517aa1204522d245a4631c3cfbaa373596ff4f436479f88c036d350e3708` |
| 2 | `theorem` | [splitByLoop_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/declarations/splitbyloop-eq-append--46aa14a5caeb67e2f76a4ad7.md) | 30 | `result-track:46aa14a5caeb67e2f76a4ad732e35048b22147dc6d5664649a1f3cb549a6f4c2` |
| 3 | `theorem` | [flatten_splitByLoop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/declarations/flatten-splitbyloop--99df58d3531108736aba44cb.md) | 40 | `result-track:99df58d3531108736aba44cb2717f8a12afd61c4f4a3f5fb9e78834314cc82c4` |
| 4 | `theorem` | [flatten_splitBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/declarations/flatten-splitby--1e61c0cf49b9b14999f1e380.md) | 49 | `result-track:1e61c0cf49b9b14999f1e380564ef7b7e2c9fa4915b7fa9e529c90d637d5f1b2` |
| 5 | `theorem` | [nil_notMem_splitByLoop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/declarations/nil-notmem-splitbyloop--eca3b99cae386443a0f5cf31.md) | 54 | `result-track:eca3b99cae386443a0f5cf31c8c7cb44fb8ce71b172f41b18d9a90e5194467cc` |
| 6 | `theorem` | [nil_notMem_splitBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/declarations/nil-notmem-splitby--f599be0d8b6e4f77e3104fb9.md) | 68 | `result-track:f599be0d8b6e4f77e3104fb922e63122cc781de6191d2c1e5382bd3893578698` |
| 7 | `theorem` | [ne_nil_of_mem_splitBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/declarations/ne-nil-of-mem-splitby--cd8bdf8206419d0dbe20af1a.md) | 75 | `result-track:cd8bdf8206419d0dbe20af1a5ab1dc9a683fe0350463f3c4b255335ae59f3749` |
| 8 | `theorem` | [chain'_of_mem_splitByLoop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/declarations/chain-of-mem-splitbyloop--b65ebf484190fe4008c7abd4.md) | 79 | `result-track:b65ebf484190fe4008c7abd424597b4350196fbb84fc25184d86449e6a9a5f86` |
| 9 | `theorem` | [chain'_of_mem_splitBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/declarations/chain-of-mem-splitby--157b963edbe99579b4bb3537.md) | 105 | `result-track:157b963edbe99579b4bb353770bf7559666d8b647ad598f30397d5f50efa7689` |
| 10 | `theorem` | [chain'_getLast_head_splitByLoop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/declarations/chain-getlast-head-splitbyloop--a41374374b2f7181f7f8ed5c.md) | 114 | `result-track:a41374374b2f7181f7f8ed5c0c69891bab5667320193d29f52aaeefa0c22bd9a` |
| 11 | `theorem` | [chain'_getLast_head_splitBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/declarations/chain-getlast-head-splitby--11c5f5da06c8094d117b7749.md) | 138 | `result-track:11c5f5da06c8094d117b7749de9192b91ef578d3bedbfa483b962e1ebe057b58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
