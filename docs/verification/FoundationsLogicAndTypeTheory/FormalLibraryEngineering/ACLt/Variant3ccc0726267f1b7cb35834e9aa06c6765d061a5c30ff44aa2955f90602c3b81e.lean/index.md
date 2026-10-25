# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ACLt.Variant3ccc0726267f1b7cb35834e9aa06c6765d061a5c30ff44aa2955f90602c3b81e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1720d9ddec370696ff24743f2774200d798ce8c2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant3ccc0726267f1b7cb35834e9aa06c6765d061a5c30ff44aa2955f90602c3b81e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant3ccc0726267f1b7cb35834e9aa06c6765d061a5c30ff44aa2955f90602c3b81e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant3ccc0726267f1b7cb35834e9aa06c6765d061a5c30ff44aa2955f90602c3b81e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1720d9ddec370696ff24743f2774200d798ce8c2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant3ccc0726267f1b7cb35834e9aa06c6765d061a5c30ff44aa2955f90602c3b81e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant3ccc0726267f1b7cb35834e9aa06c6765d061a5c30ff44aa2955f90602c3b81e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.FunInfo` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Expr.ctorWeight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant3ccc0726267f1b7cb35834e9aa06c6765d061a5c30ff44aa2955f90602c3b81e.lean/declarations/expr-ctorweight--f818b11fce1cdaf3392d4e77.md) | 22 | `declaration-track:f818b11fce1cdaf3392d4e776637cd07b526d64ab88df9741dd8033ca0da15a2` |
| 2 | `inductive` | [ReduceMode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant3ccc0726267f1b7cb35834e9aa06c6765d061a5c30ff44aa2955f90602c3b81e.lean/declarations/reducemode--f594d368b0e0295014aeb422.md) | 39 | `declaration-track:f594d368b0e0295014aeb42263dce6bde91e4113ad2acc171ddcc73a9d3f7181` |
| 3 | `def` | [config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant3ccc0726267f1b7cb35834e9aa06c6765d061a5c30ff44aa2955f90602c3b81e.lean/declarations/config--a717e49153faf41e2c643832.md) | 44 | `declaration-track:a717e49153faf41e2c6438321b050e57a8ef01af4c52288ab7d82714b0373a60` |
| 4 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant3ccc0726267f1b7cb35834e9aa06c6765d061a5c30ff44aa2955f90602c3b81e.lean/declarations/main--ccdc7c900c251ebfe5593e18.md) | 65 | `declaration-track:ccdc7c900c251ebfe5593e1805363663fef8ad4bce822d1b592aeb9c56f5861f` |
| 5 | `def` | [acLt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACLt/Variant3ccc0726267f1b7cb35834e9aa06c6765d061a5c30ff44aa2955f90602c3b81e.lean/declarations/aclt--47c8769d55a4f9b1e42b7138.md) | 208 | `declaration-track:47c8769d55a4f9b1e42b7138b6201154e76be2c3c1e15d5cbf3aae91a43ea77c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
