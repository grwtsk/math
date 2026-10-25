# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nat.Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9e0f1808184052bc7eca87ba8100a60d163d6f6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9e0f1808184052bc7eca87ba8100a60d163d6f6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Bits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pairing` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boolProdNatEquivNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean/declarations/boolprodnatequivnat--0568b993d29d68161b35ca74.md) | 35 | `declaration-track:0568b993d29d68161b35ca74a05b47fab4504ad4a77355fedb874704ae23e301` |
| 2 | `def` | [natSumNatEquivNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean/declarations/natsumnatequivnat--099c310823ead3e8eb36602b.md) | 45 | `declaration-track:099c310823ead3e8eb36602b7c7795f81e2a47b686f4ca759525a10f0c8e2e02` |
| 3 | `theorem` | [natSumNatEquivNat_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean/declarations/natsumnatequivnat-apply--eeba429ea7845e8a1bccac56.md) | 49 | `result-track:eeba429ea7845e8a1bccac5658d3ac7dc018d3fc3bfb72445641174e43941bdc` |
| 4 | `def` | [intEquivNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean/declarations/intequivnat--2c51255f9dfe2ca5d8433a80.md) | 54 | `declaration-track:2c51255f9dfe2ca5d8433a80483ffd07bf88fbd7aaa41805e88f11f115ddac36` |
| 5 | `def` | [prodEquivOfEquivNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean/declarations/prodequivofequivnat--6a938848cc16163c94d52c78.md) | 59 | `declaration-track:6a938848cc16163c94d52c78d98d5c02f963b8bd23a77a6a7ae7947ef9e9d28d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
