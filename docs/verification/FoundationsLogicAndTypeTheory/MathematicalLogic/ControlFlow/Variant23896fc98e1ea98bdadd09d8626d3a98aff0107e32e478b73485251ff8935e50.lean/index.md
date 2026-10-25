# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ControlFlow.Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c8d4538fc5ab131d76322d45351ec84b321f1f1",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c8d4538fc5ab131d76322d45351ec84b321f1f1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.Simp.Result` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Rewrite` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.ControlFlow` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.AlphaShareBuilder` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InstantiateS` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InferType` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.App` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.SynthInstance` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Meta.WHNF` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Sym.Lemmas` — import line 24; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.TheoremsLookup` — import line 25; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.Opaque` — import line 26; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.CbvEvalExt` — import line 27; external provider; requires a separately pinned dependency.
- `Lean.Compiler.NoncomputableAttr` — import line 28; external provider; requires a separately pinned dependency.
- `Init.CbvSimproc` — import line 29; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.CbvSimproc` — import line 30; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isCbvNoncomputable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/iscbvnoncomputable--30e2d5eab474387515e84e59.md) | 50 | `declaration-track:30e2d5eab474387515e84e59a0036c64ead470c99a7f7ff4744b644ed5ab9c80` |
| 2 | `def` | [trySynthComputableInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/trysynthcomputableinstance--23a9ddfbdfc2dcde49f5733a.md) | 57 | `declaration-track:23a9ddfbdfc2dcde49f5733a7d97f0e4324b98fe893932dfb86f856c1798eccf` |
| 3 | `def` | [matchIteDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/matchitedecidable--117dbaf484d8797703fdf342.md) | 63 | `declaration-track:117dbaf484d8797703fdf342762dba82ce0f89b0587ff48f34305ffc9790e857` |
| 4 | `def` | [matchIteDecidableCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/matchitedecidablecongr--84c2715f41253481c0fdd67c.md) | 72 | `declaration-track:84c2715f41253481c0fdd67c5110cf4d61b3b02e9d483d81bbe64fb6af777fde` |
| 5 | `def` | [simpAndMatchIteDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/simpandmatchitedecidable--91b9165ac085c140e62df865.md) | 81 | `declaration-track:91b9165ac085c140e62df8655c81923611d112179876dc25b7341e5aa9b09996` |
| 6 | `def` | [simpAndMatchIteDecidableCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/simpandmatchitedecidablecongr--b89d6aa11088b23dcc8e4940.md) | 92 | `declaration-track:b89d6aa11088b23dcc8e4940684a90d53db340623ddef027816c99b96f1ff3fb` |
| 7 | `def` | [matchDIteDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/matchditedecidable--70987a0bcd84ed5aa1dab467.md) | 135 | `declaration-track:70987a0bcd84ed5aa1dab46777e1ca696277b96ca68728826ea15f6ee9c46bf7` |
| 8 | `def` | [matchDIteDecidableCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/matchditedecidablecongr--092fbddc795f3f6c5eb4ce87.md) | 146 | `declaration-track:092fbddc795f3f6c5eb4ce87c9cda02e7e056d0e20632fa81218b5d6ec7b0818` |
| 9 | `def` | [simpAndMatchDIteDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/simpandmatchditedecidable--b1c1f48ea5815f7440d80049.md) | 159 | `declaration-track:b1c1f48ea5815f7440d80049b701dbc2d10c5f6c1e04cf0582e9d895c9b590b4` |
| 10 | `def` | [simpAndMatchDIteDecidableCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/simpandmatchditedecidablecongr--509e934b771f8afff3e2cf72.md) | 169 | `declaration-track:509e934b771f8afff3e2cf72b74023e52426d232177363a208427067cd43156e` |
| 11 | `def` | [matchDecideDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/matchdecidedecidable--8efb9c5259ac420515fcbb6c.md) | 219 | `declaration-track:8efb9c5259ac420515fcbb6c7da2b24fcf4770a0ea1a6cf850a0244c695f5907` |
| 12 | `def` | [matchDecideDecidableCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/matchdecidedecidablecongr--12c842467b3a175457552c73.md) | 228 | `declaration-track:12c842467b3a175457552c738dc0fbbe7fa852d70156af0ccc156644f9fe5890` |
| 13 | `def` | [simpAndMatchDecideDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/simpandmatchdecidedecidable--ef360d40a2a1b7d4fff4d610.md) | 237 | `declaration-track:ef360d40a2a1b7d4fff4d6100c66e98900d2032fab52a1ada021c629ac962ed0` |
| 14 | `def` | [simpAndMatchDecideDecidableCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/simpandmatchdecidedecidablecongr--15afede9208705e254a6512a.md) | 247 | `declaration-track:15afede9208705e254a6512a8ad8c3a0dc710ee62d0f22ed3ebe0bd659686f8b` |
| 15 | `def` | [withCbvOpaqueGuard](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/withcbvopaqueguard--9fcce2070e98c44dd70842b0.md) | 300 | `declaration-track:9fcce2070e98c44dd70842b037294d287c6ed481eb270932e08b9484e1b2adb8` |
| 16 | `def` | [reduceRecMatcher](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/reducerecmatcher--c5761c2e6602a2055f2a9f8b.md) | 322 | `declaration-track:c5761c2e6602a2055f2a9f8b1467a133e36c8c3fb03015830c166d11ce281b24` |
| 17 | `def` | [tryMatchEquations](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/trymatchequations--68a0e35370fba01508f3b0e3.md) | 332 | `declaration-track:68a0e35370fba01508f3b0e3d6ae369b9b37f5bded41e12f5c7747fee334247e` |
| 18 | `def` | [tryMatcher](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/declarations/trymatcher--f69b7581c317b52d66c7de6e.md) | 338 | `declaration-track:f69b7581c317b52d66c7de6e5dc69be72b67c8f2698d976e305632cfe70b13aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
