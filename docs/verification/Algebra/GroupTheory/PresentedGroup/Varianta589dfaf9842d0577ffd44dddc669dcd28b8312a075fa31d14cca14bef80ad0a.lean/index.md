# Verification target: GRWTSK.Algebra.GroupTheory.PresentedGroup.Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c37a70eb0fba7f9d22d55b05b8f6c541284df06e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c37a70eb0fba7f9d22d55b05b8f6c541284df06e`.

Source path: `GRWTSK/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.FreeGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PresentedGroup](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean/declarations/presentedgroup--d3b09e5b247d9d20df852ef0.md) | 43 | `declaration-track:d3b09e5b247d9d20df852ef08d0446fd859c544ba4ec598b198072e7375da4e3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean/declarations/instance--255786efb19b930d692505fd.md) | 49 | `declaration-track:255786efb19b930d692505fd4d54c2e60c60d9b9b2f72f25ee505d8c31fca256` |
| 3 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean/declarations/of--b728e99ae280a5a95e269a92.md) | 54 | `declaration-track:b728e99ae280a5a95e269a92cc5d336f8f181bf79dbdd2ed7fe119a1fcfbf71f` |
| 4 | `theorem` | [closure_rels_subset_ker](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean/declarations/closure-rels-subset-ker--850705dbfc7895192182bcfb.md) | 73 | `result-track:850705dbfc7895192182bcfbc0b2063a2d2db6fe2573a6ad64a6508f1f93e4f3` |
| 5 | `theorem` | [to_group_eq_one_of_mem_closure](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean/declarations/to-group-eq-one-of-mem-closure--0b1a5fb678f21a6750e4b435.md) | 77 | `result-track:0b1a5fb678f21a6750e4b435f36766fd7c734584eb3675ad1d2e641e9fae46fe` |
| 6 | `def` | [toGroup](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean/declarations/togroup--257969003a641444f9b13296.md) | 83 | `declaration-track:257969003a641444f9b13296bcc812f25342b4ecb69bb8027472f2455f9c9584` |
| 7 | `theorem` | [toGroup.of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean/declarations/togroup-of--3fb4d5072aeba5a4d7adee9b.md) | 88 | `result-track:3fb4d5072aeba5a4d7adee9b816cdd19f51717d99549a8931401eba9524570ed` |
| 8 | `theorem` | [toGroup.unique](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean/declarations/togroup-unique--c6e11062d1a8acb69e69ae6c.md) | 92 | `result-track:c6e11062d1a8acb69e69ae6cfc8784e8d3f7f2b65fef84fd5309294509207c77` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Varianta589dfaf9842d0577ffd44dddc669dcd28b8312a075fa31d14cca14bef80ad0a.lean/declarations/instance--84618dda45014ab406e605e3.md) | 101 | `declaration-track:84618dda45014ab406e605e334a7d60d678fc04d31fd9dbc5b95e244b03ac544` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
