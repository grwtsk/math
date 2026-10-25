# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Squarefree.Variant81b31d929f8aed324b6415452e76336722f3646af515c26eeae169ac1e05a4f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f092da34eea04b835fba166d7fb81909de81189",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Squarefree/Variant81b31d929f8aed324b6415452e76336722f3646af515c26eeae169ac1e05a4f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Squarefree/Variant81b31d929f8aed324b6415452e76336722f3646af515c26eeae169ac1e05a4f0.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Squarefree/Variant81b31d929f8aed324b6415452e76336722f3646af515c26eeae169ac1e05a4f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f092da34eea04b835fba166d7fb81909de81189`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Squarefree/Variant81b31d929f8aed324b6415452e76336722f3646af515c26eeae169ac1e05a4f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Squarefree/Variant81b31d929f8aed324b6415452e76336722f3646af515c26eeae169ac1e05a4f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.FactorizationRebuild` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SquarefreeByFactorization](../../../../mathematics/FoundationsLogicAndTypeTheory/Squarefree/Variant81b31d929f8aed324b6415452e76336722f3646af515c26eeae169ac1e05a4f0.lean/declarations/squarefreebyfactorization--0123a205dc9521e1ee2f5fcb.md) | 24 | `declaration-track:0123a205dc9521e1ee2f5fcbf6ad9c63f93ec0aa23233bedd25158bd98f43222` |
| 2 | `theorem` | [squarefree_iff_factorization_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Squarefree/Variant81b31d929f8aed324b6415452e76336722f3646af515c26eeae169ac1e05a4f0.lean/declarations/squarefree-iff-factorization-le-one--4601fd250ab32959db44fc13.md) | 31 | `result-track:4601fd250ab32959db44fc13ffbc427fbbfd2e233b9c892f3899222aa2297beb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
