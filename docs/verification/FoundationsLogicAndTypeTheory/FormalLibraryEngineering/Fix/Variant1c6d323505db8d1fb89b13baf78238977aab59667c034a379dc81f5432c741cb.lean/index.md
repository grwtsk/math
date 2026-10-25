# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fix.Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0e0195ddc05657284d307a3f3c8d967e8e37de1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0e0195ddc05657284d307a3f3c8d967e8e37de1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Part` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Upto` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Stream.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb.lean/declarations/fix--8db6c83b3de811cf8e476d37.md) | 32 | `declaration-track:8db6c83b3de811cf8e476d376b7bc2c2572bc330622cbb71587bd709f7c4c362` |
| 2 | `def` | [Fix.approx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb.lean/declarations/fix-approx--a1f117a2bef1990c13c0bdd1.md) | 46 | `declaration-track:a1f117a2bef1990c13c0bdd1a63f8491d79a4478bfe85a7b4ee00c8a2206b256` |
| 3 | `def` | [fixAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb.lean/declarations/fixaux--ef66c52481c0cc5fd6efa494.md) | 51 | `declaration-track:ef66c52481c0cc5fd6efa494424c53043cb68a84e9aa1f3065dcbe88ba239ce1` |
| 4 | `def` | [fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb.lean/declarations/fix--d7089ec8e31cfe2b5826bd14.md) | 63 | `declaration-track:d7089ec8e31cfe2b5826bd14fda515d2c51bb16b7b3020f45c2a7616021a315b` |
| 5 | `theorem` | [fix_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb.lean/declarations/fix-def--af77e4d34d6371d62c5d2361.md) | 68 | `result-track:af77e4d34d6371d62c5d2361c486a1bb27d4cf08a2c505f3211b72d7b1f159bd` |
| 6 | `theorem` | [fix_def'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb.lean/declarations/fix-def--7375cd39c874ed4127903cc1.md) | 104 | `result-track:7375cd39c874ed4127903cc1558388d41da3f89eaa3d7a46f9e0b33c05dd914b` |
| 7 | `instance` | [hasFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb.lean/declarations/hasfix--5d21092b7baadde0f5f67f04.md) | 114 | `declaration-track:5d21092b7baadde0f5f67f0428e5cacaa212ecb1a7d97b38361621608747dacc` |
| 8 | `instance` | [Part.hasFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb.lean/declarations/part-hasfix--2915a58b87f53adcec744988.md) | 123 | `declaration-track:2915a58b87f53adcec744988b75246e8cc9700a66e11d36007a02ad85bd3d304` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
