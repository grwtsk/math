# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0ffd302bc5bfb05c97e19dc2de417e8392826cc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0ffd302bc5bfb05c97e19dc2de417e8392826cc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.End` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [image_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean/declarations/image-inv--0e5c5ead253e9ce0763a5c53.md) | 33 | `result-track:0e5c5ead253e9ce0763a5c53104a0fce046cc31b32339ce1082243b28640f83a` |
| 2 | `lemma` | [preimage_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean/declarations/preimage-inv--1763950ce2a9634f10f80570.md) | 35 | `result-track:1763950ce2a9634f10f80570104e22a897147629a423184adaca655e35615b9f` |
| 3 | `theorem` | [swap_smul_self_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean/declarations/swap-smul-self-smul--c51f8d43f102f04ec4e7745e.md) | 45 | `result-track:c51f8d43f102f04ec4e7745ee3009d883a8b73049a44baa1f5f3447576ec889e` |
| 4 | `theorem` | [swap_smul_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean/declarations/swap-smul-involutive--3dc6b7fb42f80912f4fdc32e.md) | 48 | `result-track:3dc6b7fb42f80912f4fdc32e2331b3962c98b0693d0113f523f23e5334d8aa6f` |
| 5 | `lemma` | [BijOn.perm_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean/declarations/bijon-perm-inv--9eadcd86fa45e1351c0fbbb7.md) | 59 | `result-track:9eadcd86fa45e1351c0fbbb7641b7b86ee7bdcde44266d2ca51cca789054d3bf` |
| 6 | `lemma` | [MapsTo.perm_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean/declarations/mapsto-perm-pow--ec0b0a142dee00ee17fb0b63.md) | 61 | `result-track:ec0b0a142dee00ee17fb0b637299e2350315fb0919c03019d1befa7aa343c886` |
| 7 | `lemma` | [SurjOn.perm_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean/declarations/surjon-perm-pow--394502872c9604ef6d112565.md) | 63 | `result-track:394502872c9604ef6d11256570bfd9d5d8f4f7e40a2e232d1ea79cb55511fa84` |
| 8 | `lemma` | [BijOn.perm_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean/declarations/bijon-perm-pow--244d35c7ba6c28d9cb151bcc.md) | 65 | `result-track:244d35c7ba6c28d9cb151bcca0c60eff9c268d33e43011790d5bd299fbf1e4c7` |
| 9 | `lemma` | [BijOn.perm_zpow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa0b04819665f8f3a2bed4faba2bb381007b109ca71b5c13548e7998639ad5ca.lean/declarations/bijon-perm-zpow--e571cdc25c689d03b79e088f.md) | 68 | `result-track:e571cdc25c689d03b79e088ffdc89fc7a073985fad2e652ae0927de47e07d2a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
