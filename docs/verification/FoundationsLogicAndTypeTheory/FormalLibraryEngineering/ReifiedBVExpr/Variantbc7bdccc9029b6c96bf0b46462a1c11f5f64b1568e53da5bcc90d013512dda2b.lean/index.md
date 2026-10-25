# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReifiedBVExpr.Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13f22ef35a654bc476ee2b1b57a79c9bd7763000",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13f22ef35a654bc476ee2b1b57a79c9bd7763000`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.LitValues` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkEvalExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b.lean/declarations/mkevalexpr--ac289bdb41eaa3815c105dcd.md) | 26 | `declaration-track:ac289bdb41eaa3815c105dcd7c53a65eda634ae8ecf4ece437f98403c499d4cc` |
| 2 | `def` | [mkBVRefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b.lean/declarations/mkbvrefl--2fafb7257ec0647e150f8bae.md) | 29 | `declaration-track:2fafb7257ec0647e150f8baec779810dd2dbf4f5dca1bd778a8a9e6b3194679c` |
| 3 | `def` | [mkAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b.lean/declarations/mkatom--dcb77ea1a4405d13d241edc7.md) | 38 | `declaration-track:dcb77ea1a4405d13d241edc7e136ef22643ddf93ad3f4d51ce93cfdf9acaf9da` |
| 4 | `def` | [getNatOrBvValue?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b.lean/declarations/getnatorbvvalue--5e3aeadf2bcdd22a737d803b.md) | 48 | `declaration-track:5e3aeadf2bcdd22a737d803b0fa4ed04f7240d6c1750a9e0c65f9b4dc62f39bf` |
| 5 | `def` | [bitVecAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b.lean/declarations/bitvecatom--2214e0ee2383a9da77b60454.md) | 60 | `declaration-track:2214e0ee2383a9da77b604546b32a4ee459118945b8b207c0a61898c7390fc4e` |
| 6 | `def` | [mkBVConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVExpr/Variantbc7bdccc9029b6c96bf0b46462a1c11f5f64b1568e53da5bcc90d013512dda2b.lean/declarations/mkbvconst--f8b2c275a3ef2227307bac0d.md) | 70 | `declaration-track:f8b2c275a3ef2227307bac0d4c921aba208051efaf4b8d3fe2f4e2b4a469fa91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
