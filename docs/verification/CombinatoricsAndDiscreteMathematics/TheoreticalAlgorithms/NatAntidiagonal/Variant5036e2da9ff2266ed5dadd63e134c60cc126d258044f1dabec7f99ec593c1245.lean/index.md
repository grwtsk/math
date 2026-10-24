# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NatAntidiagonal.Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d004475c9c8f6ebd568fe69a0df8b0c39512c28",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d004475c9c8f6ebd568fe69a0df8b0c39512c28`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Range` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean/declarations/antidiagonal--a5f8ab8d24e08eb45e154efe.md) | 40 | `declaration-track:a5f8ab8d24e08eb45e154efe2602c88dc1d3817e2b46767a2acb04e379576714` |
| 2 | `theorem` | [mem_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean/declarations/mem-antidiagonal--3a9113fb41ef6629635a16d4.md) | 46 | `result-track:3a9113fb41ef6629635a16d49f87d4e211fe0184ed725acbea749e1f945a439b` |
| 3 | `theorem` | [length_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean/declarations/length-antidiagonal--be53788899d93c8df6808ee5.md) | 60 | `result-track:be53788899d93c8df6808ee507b3b36bc47b44b5db5891b636ed2f17f2965283` |
| 4 | `theorem` | [antidiagonal_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean/declarations/antidiagonal-zero--c208aa57a735a1f32f7542fc.md) | 66 | `result-track:c208aa57a735a1f32f7542fc271885a5ca667cc5b6c37b6f3ea56654c6e2b692` |
| 5 | `theorem` | [nodup_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean/declarations/nodup-antidiagonal--21b846ad2427f23aac677cfd.md) | 71 | `result-track:21b846ad2427f23aac677cfd45e0011af6dac39c9aaf5ba5ba3774a9210226ca` |
| 6 | `theorem` | [antidiagonal_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean/declarations/antidiagonal-succ--486d94633f5187ffcde14354.md) | 76 | `result-track:486d94633f5187ffcde14354ca05caa573c5b4b19e6776d798b1534235041b55` |
| 7 | `theorem` | [antidiagonal_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean/declarations/antidiagonal-succ--9512a4823fbd34cc86b436a5.md) | 84 | `result-track:9512a4823fbd34cc86b436a57f0ba2039942238d6265bb222f44da1dba2002ad` |
| 8 | `theorem` | [antidiagonal_succ_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean/declarations/antidiagonal-succ-succ--080b064cae368f7b788b2141.md) | 93 | `result-track:080b064cae368f7b788b21418850146a019a18d7ec8d99e322d6a39e78e281b6` |
| 9 | `theorem` | [map_swap_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant5036e2da9ff2266ed5dadd63e134c60cc126d258044f1dabec7f99ec593c1245.lean/declarations/map-swap-antidiagonal--99c91944e098f607f542f810.md) | 102 | `result-track:99c91944e098f607f542f8108bea7485d0ca175acaea48955a2052f23d4fb854` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
