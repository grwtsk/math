# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Subfield.Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37f45168df1dd9d3feb00f776dd540f3e1e9868f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37f45168df1dd9d3feb00f776dd540f3e1e9868f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Subfield.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.W.Cardinal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Operands](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean/declarations/operands--ae10b682c6236e059f240e91.md) | 28 | `declaration-track:ae10b682c6236e059f240e911e0cc5daf22689314e378ad7fb3c5a933764c371` |
| 2 | `def` | [operate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean/declarations/operate--4a2103bfe1595be1e23a8094.md) | 39 | `declaration-track:4a2103bfe1595be1e23a8094a4cd7d7bc5196ab5567ad28ea34d4225d08b674f` |
| 3 | `def` | [rangeOfWType](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean/declarations/rangeofwtype--5b995f1ff000686a318bcf19.md) | 48 | `declaration-track:5b995f1ff000686a318bcf19ac65af590e30a459a761c64772a174c723dae14d` |
| 4 | `lemma` | [rangeOfWType_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean/declarations/rangeofwtype-eq-top--f71be2708b937abcb5e62496.md) | 57 | `result-track:f71be2708b937abcb5e624968877df2131744a661ef9b5637fde81d995f95631` |
| 5 | `lemma` | [surjective_ofWType](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean/declarations/surjective-ofwtype--8d77494da63ad1840dcae2dd.md) | 63 | `result-track:8d77494da63ad1840dcae2dd759a19c4fc1de21408746d952d9a9aeb2ee64376` |
| 6 | `lemma` | [cardinalMk_closure_le_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean/declarations/cardinalmk-closure-le-max--3b3482d5613849ccbcae6887.md) | 69 | `result-track:3b3482d5613849ccbcae68871dbb9d671a9956ec30f826495eb6a761b728c646` |
| 7 | `lemma` | [cardinalMk_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Varianta59dd79af1d9247999e11936c9e9a1c5b23c58d20a2213afc49045d9dedb63d6.lean/declarations/cardinalmk-closure--8881dc9599dd7cdaf72e7b54.md) | 84 | `result-track:8881dc9599dd7cdaf72e7b541fbe43c15145d87897f570c9b19103c610d48e77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
