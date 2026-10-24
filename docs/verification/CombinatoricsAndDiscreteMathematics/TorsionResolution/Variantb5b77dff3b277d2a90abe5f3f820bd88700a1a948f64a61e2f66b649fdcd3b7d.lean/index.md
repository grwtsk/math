# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TorsionResolution.Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ddd19ec720e22428f08148296786010d5a6850e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ddd19ec720e22428f08148296786010d5a6850e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CycleTorsionModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/declarations/cycletorsionmodel--d29a71483b0992c6989995e5.md) | 18 | `declaration-track:d29a71483b0992c6989995e5c2d01b0862fc46bff9b79be85e87d704995bc178` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/declarations/instance--332b08efde1832288b70cf60.md) | 38 | `declaration-track:332b08efde1832288b70cf60120109d7e0ec02d6e91a56870a2f51936e861070` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/declarations/instance--ff50a0cd6f6b4d0a3f99d949.md) | 41 | `declaration-track:ff50a0cd6f6b4d0a3f99d94940988972a4ae4d8764dc653bd86659b1cda819a5` |
| 4 | `def` | [energy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/declarations/energy--0910ca7c2b5ad23460b4135b.md) | 45 | `declaration-track:0910ca7c2b5ad23460b4135b993f7c89d39a2d4887ab2aa25c6521e4012e2825` |
| 5 | `def` | [Resolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/declarations/resolved--6c5e9b5aefa1e4dd5249ced6.md) | 49 | `declaration-track:6c5e9b5aefa1e4dd5249ced67af3e88f13686b9fdc85a878e1496b029e84f1ad` |
| 6 | `theorem` | [defect_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/declarations/defect-apply--7e238f42a247e3cffc95c602.md) | 54 | `result-track:7e238f42a247e3cffc95c60250c001ef3c3cd2ff680c15d0c79e2561537f6fed` |
| 7 | `theorem` | [defect_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/declarations/defect-eq-zero-iff--195bedc0d2bfef8915a8e63c.md) | 63 | `result-track:195bedc0d2bfef8915a8e63cd5b6ff53ce62769fcb64b674d91c16fc53806e24` |
| 8 | `theorem` | [energy_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/declarations/energy-nonnegative--fa33cd5d382483a5b1842e19.md) | 73 | `result-track:fa33cd5d382483a5b1842e19dd6d6383404c6715eda23838f0cf0ca841d3509c` |
| 9 | `theorem` | [reference_is_resolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/declarations/reference-is-resolved--642a197b4b0496bf0824a4f0.md) | 81 | `result-track:642a197b4b0496bf0824a4f0bf58c20777aa69fc215e9c97ff8531bd550442d0` |
| 10 | `theorem` | [energy_eq_zero_of_resolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/declarations/energy-eq-zero-of-resolved--e9c6fa493bf4f7cbad4fc457.md) | 87 | `result-track:e9c6fa493bf4f7cbad4fc4577609b4b0bb427e8fb33b1fb5fd7a0eb2a455967a` |
| 11 | `inductive` | [TorsionResolutionStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/declarations/torsionresolutionstatus--53b068140dc4dfe88453a8b3.md) | 100 | `declaration-track:53b068140dc4dfe88453a8b362b9fd67751d1ed99846e9f3a9d10b700a298758` |
| 12 | `structure` | [TorsionResolutionFlow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/declarations/torsionresolutionflow--d0323b308f2a85a5f3ca19c3.md) | 111 | `declaration-track:d0323b308f2a85a5f3ca19c32b337b7f12371db1917ba3d731e27c6c0b45e36d` |
| 13 | `structure` | [CycleTorsionObstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d.lean/declarations/cycletorsionobstruction--f9c2f397d80f46df75a5f15b.md) | 124 | `declaration-track:f9c2f397d80f46df75a5f15bad021e0d570b1cb4a6ceaad41eac456f0245451c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
