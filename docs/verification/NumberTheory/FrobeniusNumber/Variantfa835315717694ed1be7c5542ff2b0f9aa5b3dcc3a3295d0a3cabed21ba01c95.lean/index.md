# Verification target: GRWTSK.NumberTheory.FrobeniusNumber.Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "333e457154c528d910040538b3b8327e2cf2cd5d",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `333e457154c528d910040538b3b8327e2cf2cd5d`.

Source path: `GRWTSK/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.ModEq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FrobeniusNumber](../../../../mathematics/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean/declarations/frobeniusnumber--6b59d81d3dfc77a6379ce878.md) | 48 | `declaration-track:6b59d81d3dfc77a6379ce878f6e180e875fe90d38986ed4920bc2269e60e221f` |
| 2 | `theorem` | [frobeniusNumber_pair](../../../../mathematics/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean/declarations/frobeniusnumber-pair--c92168ce587ca22c1eeb3ebd.md) | 56 | `result-track:c92168ce587ca22c1eeb3ebd30f10568f4bee36bcdb3463a3a9189e1e6d8eabc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
