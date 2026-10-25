# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithoutCDot.Variantca32e79c73568c274409dacdaf29426642f73627672410c241d519e481979d15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab67358f7cb847f2a339a08d2eca2b70ce5ae8dc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variantca32e79c73568c274409dacdaf29426642f73627672410c241d519e481979d15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variantca32e79c73568c274409dacdaf29426642f73627672410c241d519e481979d15.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variantca32e79c73568c274409dacdaf29426642f73627672410c241d519e481979d15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab67358f7cb847f2a339a08d2eca2b70ce5ae8dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variantca32e79c73568c274409dacdaf29426642f73627672410c241d519e481979d15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variantca32e79c73568c274409dacdaf29426642f73627672410c241d519e481979d15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.SyntheticMVars` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withoutCDotContents](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variantca32e79c73568c274409dacdaf29426642f73627672410c241d519e481979d15.lean/declarations/withoutcdotcontents--308b3f741e2bdbb3d2803825.md) | 25 | `declaration-track:308b3f741e2bdbb3d28038251c334ad72e40cce3220e1d1f3c75b087f991174c` |
| 2 | `def` | [withoutCDot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variantca32e79c73568c274409dacdaf29426642f73627672410c241d519e481979d15.lean/declarations/withoutcdot--6994a9fc4ac9105980122e39.md) | 34 | `declaration-track:6994a9fc4ac9105980122e3974ee5b9b3f55764cee04d546d38e8f28e516572b` |
| 3 | `def` | [withoutCDotImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variantca32e79c73568c274409dacdaf29426642f73627672410c241d519e481979d15.lean/declarations/withoutcdotimpl--6851e98b45fa6c13846e9d21.md) | 39 | `declaration-track:6851e98b45fa6c13846e9d216c001890086b58909ae6768d81219ed9432f4e3f` |
| 4 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variantca32e79c73568c274409dacdaf29426642f73627672410c241d519e481979d15.lean/declarations/macro-rules--8af2aaefec3435731d8e4e43.md) | 43 | `declaration-track:8af2aaefec3435731d8e4e434125288f2cd18e6c21a2fa539d529f11923ee592` |
| 5 | `def` | [elabWithoutCDot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variantca32e79c73568c274409dacdaf29426642f73627672410c241d519e481979d15.lean/declarations/elabwithoutcdot--09072d18f3218e7085b890fb.md) | 49 | `declaration-track:09072d18f3218e7085b890fbbef85827031afac8495e01445d5810544fa2f44f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
