# Verification target: GRWTSK.Algebra.UniversalAlgebra.Free.Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fd7972f084fcb5714fe6552a4e09ed90709781d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fd7972f084fcb5714fe6552a4e09ed90709781d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Colimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Sheaf.Colimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [free](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean/declarations/free--98bebb0bc523e0906e01b182.md) | 43 | `declaration-track:98bebb0bc523e0906e01b18270bfa3f176bf6ec105227d30ad8de10db86d13c2` |
| 2 | `def` | [freeHomEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean/declarations/freehomequiv--1ff1b55d6b478d64ec504abb.md) | 47 | `declaration-track:1ff1b55d6b478d64ec504abb41c039c2e7bd1ef8f91ed354795f1124564805ce` |
| 3 | `lemma` | [freeHomEquiv_comp_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean/declarations/freehomequiv-comp-apply--71f37571ba2214363d06d060.md) | 54 | `result-track:71f37571ba2214363d06d060d7ea7649e300359b7efb913ddfc2255eecef761f` |
| 4 | `lemma` | [freeHomEquiv_symm_comp](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean/declarations/freehomequiv-symm-comp--5fc510d56894f730a9803706.md) | 58 | `result-track:5fc510d56894f730a98037064e43a072106d48975031ee3d8cf0bb2c2f4d0e67` |
| 5 | `abbrev` | [freeSection](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean/declarations/freesection--00ca605e8a927c243d1d20e8.md) | 64 | `declaration-track:00ca605e8a927c243d1d20e8bb136b52d6d41b0aa2c986b299ea63af6c72b513` |
| 6 | `def` | [freeMap](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean/declarations/freemap--55237705acae5770ca3ff4c0.md) | 73 | `declaration-track:55237705acae5770ca3ff4c05e45d1f95220e8f3900742aa6ca4b7352e6b6d42` |
| 7 | `lemma` | [freeHomEquiv_freeMap](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean/declarations/freehomequiv-freemap--421e9bdcd8a18b528ee1a2c9.md) | 77 | `result-track:421e9bdcd8a18b528ee1a2c9dd1c2c56786b763bab3cc1651d81e572cc1686e7` |
| 8 | `lemma` | [sectionMap_freeMap_freeSection](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean/declarations/sectionmap-freemap-freesection--fc4f0b39e91a4f5c17a3a6d1.md) | 82 | `result-track:fc4f0b39e91a4f5c17a3a6d193ce2bb61272e9fda425705506dbf4abc5ffbe72` |
| 9 | `def` | [freeFunctor](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variante31c1f47a09e76fdf3d14f5a75a8cb9ee2c831c269dd9c8af5c91b4c7cbf90aa.lean/declarations/freefunctor--beab7d0075491a7390f63ccc.md) | 91 | `declaration-track:beab7d0075491a7390f63ccc6be180e8390442eb26bed1ad472571247436a177` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
