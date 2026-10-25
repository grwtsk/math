# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant8d352ce1a5e9eaf1dc0e152cddf35c688467f8bd57dc81df17ee3053715ccfc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d02cdb83a63db55f104fe963ff557c6dad55422",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant8d352ce1a5e9eaf1dc0e152cddf35c688467f8bd57dc81df17ee3053715ccfc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant8d352ce1a5e9eaf1dc0e152cddf35c688467f8bd57dc81df17ee3053715ccfc5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant8d352ce1a5e9eaf1dc0e152cddf35c688467f8bd57dc81df17ee3053715ccfc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d02cdb83a63db55f104fe963ff557c6dad55422`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant8d352ce1a5e9eaf1dc0e152cddf35c688467f8bd57dc81df17ee3053715ccfc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant8d352ce1a5e9eaf1dc0e152cddf35c688467f8bd57dc81df17ee3053715ccfc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MulLeft.Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918.unitsEquivNeZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant8d352ce1a5e9eaf1dc0e152cddf35c688467f8bd57dc81df17ee3053715ccfc5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-mulleft-vari--c245ea785ea80014785000cb.md) | 31 | `declaration-track:c245ea785ea80014785000cb39e67ee5411534555dc9d042772159d56cf429e2` |
| 2 | `def` | [mulLeft₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant8d352ce1a5e9eaf1dc0e152cddf35c688467f8bd57dc81df17ee3053715ccfc5.lean/declarations/mulleft--11afb9d6c2dfa4ca45e58fd5.md) | 40 | `declaration-track:11afb9d6c2dfa4ca45e58fd5f24fa816c3d1ef747422274778d1fbfe7ea73a70` |
| 3 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MulLeft.Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918.mulLeft_bijective₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant8d352ce1a5e9eaf1dc0e152cddf35c688467f8bd57dc81df17ee3053715ccfc5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-mulleft-vari--54cb37dc2384f74039cb305e.md) | 43 | `result-track:54cb37dc2384f74039cb305ee1da69d0b52ad21d3cb7eaff5dbc773497186bab` |
| 4 | `def` | [mulRight₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant8d352ce1a5e9eaf1dc0e152cddf35c688467f8bd57dc81df17ee3053715ccfc5.lean/declarations/mulright--b4f8ee4fb5f14185a964ab7c.md) | 49 | `declaration-track:b4f8ee4fb5f14185a964ab7ccf7721374a1a88c29b7bd4035859b31ee29aa7e4` |
| 5 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MulLeft.Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918.mulRight_bijective₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant8d352ce1a5e9eaf1dc0e152cddf35c688467f8bd57dc81df17ee3053715ccfc5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-mulleft-vari--c2e4b2493c37d85245b9aded.md) | 52 | `result-track:c2e4b2493c37d85245b9aded1058d485c4d7b041a5f293a632419a7d2ca3d306` |
| 6 | `def` | [divRight₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant8d352ce1a5e9eaf1dc0e152cddf35c688467f8bd57dc81df17ee3053715ccfc5.lean/declarations/divright--6332a86c29368ec5a6201525.md) | 58 | `declaration-track:6332a86c29368ec5a6201525dddef0e714c7a8ebdcc99efa84ae868ab2838728` |
| 7 | `def` | [divLeft₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant8d352ce1a5e9eaf1dc0e152cddf35c688467f8bd57dc81df17ee3053715ccfc5.lean/declarations/divleft--88b2ca326c67da79599119d7.md) | 72 | `declaration-track:88b2ca326c67da79599119d762b9f4bea67b704efeed9e0459730e0c34a9ebce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
