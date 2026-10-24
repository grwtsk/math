# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Konigsberg.Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90af94a6dd6ee27ee8750c76a8a5177ff59d86b4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90af94a6dd6ee27ee8750c76a8a5177ff59d86b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Trails` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Verts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean/declarations/verts--321bccbc60cf73914a3a82b4.md) | 30 | `declaration-track:321bccbc60cf73914a3a82b4fcea9d750e4e645a1e580497526d0bd4511dedf7` |
| 2 | `def` | [edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean/declarations/edges--d608b7d6c9128cb89061b240.md) | 41 | `declaration-track:d608b7d6c9128cb89061b2404c00f41995d12b57de0049affdaf1508b68ba700` |
| 3 | `def` | [adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean/declarations/adj--776936d06dc31101adcb3c53.md) | 48 | `declaration-track:776936d06dc31101adcb3c53cfbb9a32c8f4bb0cdc4824e8a4e19cf340a83e23` |
| 4 | `def` | [graph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean/declarations/graph--e38e1b6a6feaac21651b3fa9.md) | 58 | `declaration-track:e38e1b6a6feaac21651b3fa9b21f0d48dff022ff4ef50141083788d3ef8ea4b1` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean/declarations/instance--bff681d279de4053bd3087a5.md) | 67 | `declaration-track:bff681d279de4053bd3087a5a1e99792c26a956e7473173d37af3c8e15075b10` |
| 6 | `def` | [degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean/declarations/degree--177772b38a42a4ad10560e9c.md) | 71 | `declaration-track:177772b38a42a4ad10560e9c463b17c4a5e3d3593a023ef8df041023fe13712a` |
| 7 | `lemma` | [degree_eq_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean/declarations/degree-eq-degree--cb69a131ded3ff4cfef87f88.md) | 76 | `result-track:cb69a131ded3ff4cfef87f8811c64246ad6cc19b6b305c3e00ab79a7fc11545b` |
| 8 | `lemma` | [not_even_degree_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean/declarations/not-even-degree-iff--0d5dcae5228dcfe286410859.md) | 78 | `result-track:0d5dcae5228dcfe286410859236afa79869a8a2f8531c932fb953c82bba98981` |
| 9 | `lemma` | [setOf_odd_degree_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean/declarations/setof-odd-degree-eq--f020000177781204e548a4ce.md) | 81 | `result-track:f020000177781204e548a4cede8ebfb789b8ce3b20142513f36c47378fa2a6a8` |
| 10 | `theorem` | [not_isEulerian](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Varianta663398997d321a3961580cc883ac3e083f722365cff0b786a60cefcfad0fde0.lean/declarations/not-iseulerian--57f02e31ae5a54fbb15d699d.md) | 87 | `result-track:57f02e31ae5a54fbb15d699db9bd60af6b7c4b8357fa443bfdca7e3c9144cdbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
