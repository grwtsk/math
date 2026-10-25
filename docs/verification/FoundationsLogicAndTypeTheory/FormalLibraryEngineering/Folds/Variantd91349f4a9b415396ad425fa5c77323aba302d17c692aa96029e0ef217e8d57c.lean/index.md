# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Folds.Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f651d1eadbf66787eaa7909a1079a4c81a8feda",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f651d1eadbf66787eaa7909a1079a4c81a8feda`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.BitVec.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.Fin.Iterate` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iunfoldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c.lean/declarations/iunfoldr--ec3c3b003d3386c0ea0478c8.md) | 24 | `declaration-track:ec3c3b003d3386c0ea0478c878912911700b1be466eac1e2a5e0631731153f16` |
| 2 | `theorem` | [iunfoldr.fst_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c.lean/declarations/iunfoldr-fst-eq--7e8137e6cc3e398c8bd59eb7.md) | 28 | `result-track:7e8137e6cc3e398c8bd59eb7c21378a5ffba558a358b33616a37d3d3c2b77762` |
| 3 | `theorem` | [iunfoldr.eq_test](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c.lean/declarations/iunfoldr-eq-test--5b24aa2259b0fcc5c1317bb9.md) | 41 | `result-track:5b24aa2259b0fcc5c1317bb96a5cc65fdab74b2a2a8a1d3b48ecf772b0105e0c` |
| 4 | `theorem` | [iunfoldr_replace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c.lean/declarations/iunfoldr-replace--503d730849023329c71a9d34.md) | 56 | `result-track:503d730849023329c71a9d3437390fa099099461fcbb5d7b591ade78c2a3e097` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
