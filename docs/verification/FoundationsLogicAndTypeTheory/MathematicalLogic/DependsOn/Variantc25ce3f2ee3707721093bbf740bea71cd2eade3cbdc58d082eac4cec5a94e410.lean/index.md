# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DependsOn.Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d2959d3b77154e1191a94ac377bfca4711c249f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DependsOn/Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DependsOn/Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DependsOn/Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d2959d3b77154e1191a94ac377bfca4711c249f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DependsOn/Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/DependsOn/Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Restrict` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DependsOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DependsOn/Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410.lean/declarations/dependson--970969e74b99da4914bc4933.md) | 67 | `declaration-track:970969e74b99da4914bc49335ed6f9f1520051093fa5966869f02feedf395c28` |
| 2 | `lemma` | [dependsOn_iff_factorsThrough](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DependsOn/Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410.lean/declarations/dependson-iff-factorsthrough--a9ad764712951f3a60baa180.md) | 70 | `result-track:a9ad764712951f3a60baa180446955591df3deb2511a3881aa818aa5bfa28dce` |
| 3 | `lemma` | [dependsOn_iff_exists_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DependsOn/Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410.lean/declarations/dependson-iff-exists-comp--01e5363ac5164fefafb7b655.md) | 75 | `result-track:01e5363ac5164fefafb7b6553079be84ef14df3f1fd358605c71c8179b2c7691` |
| 4 | `lemma` | [dependsOn_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DependsOn/Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410.lean/declarations/dependson-univ--fa08af1c24fba053c8d7fc3e.md) | 79 | `result-track:fa08af1c24fba053c8d7fc3ebe48d77ebd9614188fb9df20d289e7214200a863` |
| 5 | `lemma` | [dependsOn_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DependsOn/Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410.lean/declarations/dependson-const--8da06a9182e8d0db41b765d3.md) | 85 | `result-track:8da06a9182e8d0db41b765d3aae9ac3128531854595b7c84133009c2934e36b6` |
| 6 | `lemma` | [DependsOn.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DependsOn/Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410.lean/declarations/dependson-mono--eb1ca0a1824d7579d0547a74.md) | 87 | `result-track:eb1ca0a1824d7579d0547a74b5a5391e44b47ced1f832c67944877a93afa080e` |
| 7 | `lemma` | [DependsOn.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DependsOn/Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410.lean/declarations/dependson-empty--eef0fc46ca93dbf34d3f9814.md) | 91 | `result-track:eef0fc46ca93dbf34d3f9814964fa3ec6482567bbb9d7ced960d1b93955f4359` |
| 8 | `lemma` | [Set.dependsOn_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DependsOn/Variantc25ce3f2ee3707721093bbf740bea71cd2eade3cbdc58d082eac4cec5a94e410.lean/declarations/set-dependson-restrict--82a72e1b9dea262fc2bc693f.md) | 93 | `result-track:82a72e1b9dea262fc2bc693fbae6370dab29178cdf0574641e853dc565377720` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
