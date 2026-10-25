# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimprocDSLBuiltin.Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0e3337c008d44073f6ad59a166a3298e4140bb4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0e3337c008d44073f6ad59a166a3298e4140bb4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Grind.SimprocDSL` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Sym.Simp.SimprocDSL` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.EvalGround` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Telescope` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.ControlFlow` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Forall` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Rewrite` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabSimprocGround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabsimprocground--64abe19e368ac137fbc59bd3.md) | 29 | `declaration-track:64abe19e368ac137fbc59bd3f6940af095cdb8071b40f384e3f729075509639c` |
| 2 | `def` | [elabSimprocTelescope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabsimproctelescope--398f147fbbb2de2c11a92a26.md) | 33 | `declaration-track:398f147fbbb2de2c11a92a26c3f1d919a744672d1f24c4c6ef78d945acca6589` |
| 3 | `def` | [elabSimprocControl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabsimproccontrol--162f18a15d2f99664911bc3e.md) | 37 | `declaration-track:162f18a15d2f99664911bc3e5c7463c9be7307ef3e7d4385e41d213acb96d3ef` |
| 4 | `def` | [elabSimprocArrowTelescope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabsimprocarrowtelescope--ac52bd9cdc968866ba667b2e.md) | 41 | `declaration-track:ac52bd9cdc968866ba667b2e3f317d78a78cefc52e3d2267dcb204e0f7477362` |
| 5 | `def` | [elabSimprocSelf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabsimprocself--3e9852c8e5a1796b54e19f10.md) | 45 | `declaration-track:3e9852c8e5a1796b54e19f10977f7396170be7ef032a4138a0617ed02a542987` |
| 6 | `def` | [elabSimprocNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabsimprocnone--4ebb9635668587b180e303ea.md) | 49 | `declaration-track:4ebb9635668587b180e303ea894dee076d3a7ab63aa905b03b1fc4b2494c45f3` |
| 7 | `def` | [elabOptDischarger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elaboptdischarger--ae080ca4bb5ab1d37d705dc7.md) | 52 | `declaration-track:ae080ca4bb5ab1d37d705dc7e7512d10f0ab2f7456c55741810a2ce6fe4bf601` |
| 8 | `def` | [elabSimprocRewriteSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabsimprocrewriteset--d24e902e333f89e952ad09ce.md) | 57 | `declaration-track:d24e902e333f89e952ad09ce466e47ab3e4db5acc15efafb3b962329076d9b20` |
| 9 | `def` | [elabSimprocRewriteInline](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabsimprocrewriteinline--19c4afb37811bdfb4d10b9be.md) | 65 | `declaration-track:19c4afb37811bdfb4d10b9be6bccf593f7ec1937f9d0b0be45f5cc6771e67135` |
| 10 | `def` | [elabSimprocAndThen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabsimprocandthen--536abd637c2cb8bd23c1e107.md) | 74 | `declaration-track:536abd637c2cb8bd23c1e1073e7c0cc748fd43ca9e9926958a4543de3a943586` |
| 11 | `def` | [elabSimprocOrElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabsimprocorelse--76a7a1b25b5e90d7bb41f537.md) | 81 | `declaration-track:76a7a1b25b5e90d7bb41f537c0189d8d23cc03a4ec5ea1e2310cdeecee5efd3d` |
| 12 | `def` | [elabSimprocParen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabsimprocparen--6cfc12b12805f494a771a47b.md) | 88 | `declaration-track:6cfc12b12805f494a771a47b8f195ef085d89d1d6b6ba34c171792e12a11e205` |
| 13 | `def` | [elabDischSelf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabdischself--f2788a4b0a31370878d2b161.md) | 95 | `declaration-track:f2788a4b0a31370878d2b161598dcb9bd4f34082c6e8d65887d671f9598bcf2c` |
| 14 | `def` | [elabDischNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabdischnone--9defa5b08813b64b3a3371c6.md) | 99 | `declaration-track:9defa5b08813b64b3a3371c6faa7d56ee9cc5846e449880a73b054a3dd482bb7` |
| 15 | `def` | [elabDischParen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSLBuiltin/Variantaae8008c2cf28afa0a930d92d71e34333cf8ac8215b16d2b2fe1adc5b7398eaf.lean/declarations/elabdischparen--0d9b3744b4e38d9544023ee7.md) | 103 | `declaration-track:0d9b3744b4e38d9544023ee74cc077c1fa5018bbcab984071a9d114ec4c8fcdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
