# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalNum.Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1fd546cde47a225af03da8031bc18a4f6830a8c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1fd546cde47a225af03da8031bc18a4f6830a8c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.IntInstTesters` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatInstTesters` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean/declarations/checkexp--fb549cd0c52015ae08abf7ed.md) | 31 | `declaration-track:fb549cd0c52015ae08abf7ed57a6509ebb2b1eb76f02f8b152888666cc93ffa4` |
| 2 | `def` | [evalNatCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean/declarations/evalnatcore--fab07532fa2f7df0b4abddbd.md) | 41 | `declaration-track:fab07532fa2f7df0b4abddbdd928555d11f8b050cbd130e672a7ad8c5d98afaf` |
| 3 | `def` | [evalIntCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean/declarations/evalintcore--6990490720cfd79d98158068.md) | 69 | `declaration-track:6990490720cfd79d981580689ee55c5f9d66922f311bc4700586187c001ce6b9` |
| 4 | `def` | [evalNat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean/declarations/evalnat--0e52faef357784a2632882d1.md) | 97 | `declaration-track:0e52faef357784a2632882d17f7ad90e7ddc39bf7b6a7b862b91b9e96e3d6a1e` |
| 5 | `def` | [evalInt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean/declarations/evalint--6e3ba475c152f8c12df4bea2.md) | 100 | `declaration-track:6e3ba475c152f8c12df4bea2948849ee7639f571804aaea70d78efcb4b50281f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
