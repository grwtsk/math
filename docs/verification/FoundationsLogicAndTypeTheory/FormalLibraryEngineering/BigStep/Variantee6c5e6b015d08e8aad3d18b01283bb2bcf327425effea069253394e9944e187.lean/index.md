# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BigStep.Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab2100605607491087f73494cdbae2be2d1289e6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab2100605607491087f73494cdbae2be2d1289e6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Variable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187.lean/declarations/variable--b0297e181e241be5a02f1bd0.md) | 11 | `declaration-track:b0297e181e241be5a02f1bd06e326b64a87390b6817c45fe40f76252f20f6f24` |
| 2 | `def` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187.lean/declarations/state--a597b4c23b985136e4600086.md) | 13 | `declaration-track:a597b4c23b985136e46000861d9a084c08cc8ad00b053dc1b61ea7692f63aee5` |
| 3 | `inductive` | [Stmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187.lean/declarations/stmt--5356e28e9e50c5356dc00fbe.md) | 15 | `declaration-track:5356e28e9e50c5356dc00fbe0a9a89dcdd5552f3052cfb8b710d4ef2fd818e89` |
| 4 | `inductive` | [BigStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187.lean/declarations/bigstep--db105568f2043a17d743943c.md) | 29 | `declaration-track:db105568f2043a17d743943c5bb0f37d9bb97d6b0665fe2679b1ee91bd54c689` |
| 5 | `theorem` | [cases_if_of_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187.lean/declarations/cases-if-of-true--daf17d357b22811fd84a59b9.md) | 54 | `result-track:daf17d357b22811fd84a59b96ec962f95aff31d9a6896951f41e7f3497a14668` |
| 6 | `theorem` | [cases_if_of_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187.lean/declarations/cases-if-of-false--bb426db31ca0333570918610.md) | 58 | `result-track:bb426db31ca0333570918610ec63fe3a1f228a2622b0eaa6f3972f139b862eb0` |
| 7 | `theorem` | [and_excluded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187.lean/declarations/and-excluded--afb0b692b23e63a1c6c44f8e.md) | 62 | `result-track:afb0b692b23e63a1c6c44f8ea23e76d009be146b41c832de11ee50ffb4481b7b` |
| 8 | `theorem` | [if_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BigStep/Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187.lean/declarations/if-iff--358a4a0b4ae58bce81c1ab2c.md) | 65 | `result-track:358a4a0b4ae58bce81c1ab2c9dc1f2babf64265983abeb40fc35abc34a0cbb43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
