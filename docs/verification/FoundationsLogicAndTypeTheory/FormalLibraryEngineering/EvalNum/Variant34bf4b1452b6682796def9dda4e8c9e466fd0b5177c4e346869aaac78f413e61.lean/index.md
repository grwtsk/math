# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalNum.Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2650f7342472bd3f6b44ef08dba127e7409a9769",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2650f7342472bd3f6b44ef08dba127e7409a9769`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.LitValues` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.IntInstTesters` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatInstTesters` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean/declarations/checkexp--d5dd2b128977d1e1693e40e0.md) | 31 | `declaration-track:d5dd2b128977d1e1693e40e0a65bee51c8111ae757af5a44f7dc85e14e9708dc` |
| 2 | `def` | [evalNatCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean/declarations/evalnatcore--6f7c7e82ddd9adb1f373a6dd.md) | 43 | `declaration-track:6f7c7e82ddd9adb1f373a6ddd5b34d8830512dacc5e100907df4f4d70278d7cd` |
| 3 | `def` | [evalIntCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean/declarations/evalintcore--20ca35b18b08235566ce98a3.md) | 65 | `declaration-track:20ca35b18b08235566ce98a3bd0e9242fbdbbbe2196715463b6c6bc41b8075bd` |
| 4 | `def` | [evalNat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean/declarations/evalnat--70f627e151d4fcc09f10d0e0.md) | 92 | `declaration-track:70f627e151d4fcc09f10d0e05e42bdda1cfa5298f252c88fe360e8911ac570cd` |
| 5 | `def` | [evalInt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean/declarations/evalint--5048ae3b7e2f1bddce5065ef.md) | 95 | `declaration-track:5048ae3b7e2f1bddce5065ef1fcc0e8b21d8184a3248a49ea6f50ee5581e58b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
