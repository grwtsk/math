# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Range.Variantfd19a5350345bfa451176ed90352526c5cb519fd363f5a73e78c47912f2b8c4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "810f03b5667b380bb6f9c0b0be9899aafb45ef8a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Range/Variantfd19a5350345bfa451176ed90352526c5cb519fd363f5a73e78c47912f2b8c4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variantfd19a5350345bfa451176ed90352526c5cb519fd363f5a73e78c47912f2b8c4c.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variantfd19a5350345bfa451176ed90352526c5cb519fd363f5a73e78c47912f2b8c4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `810f03b5667b380bb6f9c0b0be9899aafb45ef8a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Range/Variantfd19a5350345bfa451176ed90352526c5cb519fd363f5a73e78c47912f2b8c4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Range/Variantfd19a5350345bfa451176ed90352526c5cb519fd363f5a73e78c47912f2b8c4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Range` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variantfd19a5350345bfa451176ed90352526c5cb519fd363f5a73e78c47912f2b8c4c.lean/declarations/range--b1645a395ab804b81d302770.md) | 34 | `declaration-track:b1645a395ab804b81d3027703dc9fbbc478f33ce1e7e36ce12720993f97952c0` |
| 2 | `theorem` | [mem_range_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variantfd19a5350345bfa451176ed90352526c5cb519fd363f5a73e78c47912f2b8c4c.lean/declarations/mem-range-iff--8b707ee5d0a25d03d8749251.md) | 38 | `result-track:8b707ee5d0a25d03d87492518ba96381d530bc0858b8dc1af95800cf64272d7a` |
| 3 | `instance` | [decidableLELT](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variantfd19a5350345bfa451176ed90352526c5cb519fd363f5a73e78c47912f2b8c4c.lean/declarations/decidablelelt--bc58722b7807a8148795171d.md) | 44 | `declaration-track:bc58722b7807a8148795171dd60d7fe37dcdb16aa8a7cfc2f114e83518216baf` |
| 4 | `instance` | [decidableLELE](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variantfd19a5350345bfa451176ed90352526c5cb519fd363f5a73e78c47912f2b8c4c.lean/declarations/decidablelele--88899ec6d5cd870122955356.md) | 49 | `declaration-track:88899ec6d5cd87012295535630eda5f7025b86849e5e6bae510771b9ee012a3b` |
| 5 | `instance` | [decidableLTLT](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variantfd19a5350345bfa451176ed90352526c5cb519fd363f5a73e78c47912f2b8c4c.lean/declarations/decidableltlt--419ad2ada4508099b366dce4.md) | 64 | `declaration-track:419ad2ada4508099b366dce4f352bef41df73e413677d5a95b73dca72655c4c9` |
| 6 | `instance` | [decidableLTLE](../../../../mathematics/FoundationsLogicAndTypeTheory/Range/Variantfd19a5350345bfa451176ed90352526c5cb519fd363f5a73e78c47912f2b8c4c.lean/declarations/decidableltle--65f56efaac1df193c6224fed.md) | 69 | `declaration-track:65f56efaac1df193c6224fed5043560f6509b44f9a902188a3093a42daff9972` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
