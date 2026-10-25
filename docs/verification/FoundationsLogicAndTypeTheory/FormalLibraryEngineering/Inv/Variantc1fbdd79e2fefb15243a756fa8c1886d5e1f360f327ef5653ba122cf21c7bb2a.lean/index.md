# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inv.Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "636885c6cb6fdd8e3a240e2b0653414da77de4bf",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `636885c6cb6fdd8e3a240e2b0653414da77de4bf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.Arith.Poly` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a.lean/declarations/checkvars--b9ed94e1a437846951b19795.md) | 13 | `declaration-track:b9ed94e1a437846951b1979529266196f761c646e8949ff0a0622ef34fef7eb3` |
| 2 | `def` | [checkPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a.lean/declarations/checkpoly--8dc90aa00646d79367ea6395.md) | 25 | `declaration-track:8dc90aa00646d79367ea6395386dc195ab15b17947073c10903826dc75f97196` |
| 3 | `def` | [checkBasis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a.lean/declarations/checkbasis--3efadbd11ec84c6dc4e30d1a.md) | 31 | `declaration-track:3efadbd11ec84c6dc4e30d1ac6b77a2bb489f6e24058fde7a62d944f4bc73fdc` |
| 4 | `def` | [checkQueue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a.lean/declarations/checkqueue--5bc9e9ead6cbc1934162ea96.md) | 37 | `declaration-track:5bc9e9ead6cbc1934162ea96d5c4f4339fce4766549f41fe230e9abf2e8597c9` |
| 5 | `def` | [checkDiseqs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a.lean/declarations/checkdiseqs--fa0daefb28ba638c5cf5bbd7.md) | 41 | `declaration-track:fa0daefb28ba638c5cf5bbd7809b780f7d8c04cb3998910f4ae897155c1306e6` |
| 6 | `def` | [checkRingInvs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a.lean/declarations/checkringinvs--6717f4112ad2024ec24c63f4.md) | 45 | `declaration-track:6717f4112ad2024ec24c63f46c26c0e01d05b77e2d0c175097853d5f142db919` |
| 7 | `def` | [checkInvariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a.lean/declarations/checkinvariants--46d9ae9ff332991caeef21a9.md) | 51 | `declaration-track:46d9ae9ff332991caeef21a9cc8ea60ad3279d0692e2b40a301a78fc489b04f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
