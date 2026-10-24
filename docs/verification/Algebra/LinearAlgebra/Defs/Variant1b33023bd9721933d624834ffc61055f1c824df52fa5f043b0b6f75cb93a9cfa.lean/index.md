# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5e11dc60fa86eacb1d9e27c38ebef2c0e2d6006",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5e11dc60fa86eacb1d9e27c38ebef2c0e2d6006`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/isnoetherian--2e5981071fc92116dc3f91c4.md) | 58 | `declaration-track:2e5981071fc92116dc3f91c4d5a0efc54f51e8df49624c8b0170e61acd4fc9a4` |
| 2 | `theorem` | [isNoetherian_def](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/isnoetherian-def--f3c61707b8d3b802525d9f39.md) | 72 | `result-track:f3c61707b8d3b802525d9f390d6547c26a4136af525dd3e7e6bf6d1479c8696f` |
| 3 | `theorem` | [isNoetherian_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/isnoetherian-submodule--cd7ceb235622a0e433c92918.md) | 75 | `result-track:cd7ceb235622a0e433c929189e0ac247a5932191fed49ab9d919afe6d4287ee5` |
| 4 | `theorem` | [isNoetherian_submodule_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/isnoetherian-submodule-left--330fa4a988e2b17c16ce83aa.md) | 87 | `result-track:330fa4a988e2b17c16ce83aa687515d2fbab7196d32816b3d1e0a0d05daaa5e5` |
| 5 | `theorem` | [isNoetherian_submodule_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/isnoetherian-submodule-right--e48cb9b302ca42abc6f2b51d.md) | 91 | `result-track:e48cb9b302ca42abc6f2b51d824935cf629f96914c6dc00626e7f9362ab46c69` |
| 6 | `instance` | [isNoetherian_submodule'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/isnoetherian-submodule--6eecca89ec14a749d637015a.md) | 95 | `declaration-track:6eecca89ec14a749d637015a56aec3ca7ee3e4b126e739f54446f8c17501e181` |
| 7 | `theorem` | [isNoetherian_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/isnoetherian-of-le--0f2b8e63e7a3e22ecd97ce0b.md) | 98 | `result-track:0f2b8e63e7a3e22ecd97ce0bfe8f0e95153a9370ed458ed4dba5c6637530b5fd` |
| 8 | `theorem` | [isNoetherian_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/isnoetherian-iff--7abac5db3a24fb966ecc66a4.md) | 113 | `result-track:7abac5db3a24fb966ecc66a4b18f4027adcb0c2c4dcb355763dec2665e4dd4d3` |
| 9 | `theorem` | [isNoetherian_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/isnoetherian-iff--b4a6b76a99831201beaba508.md) | 121 | `result-track:b4a6b76a99831201beaba508f9fed4085c48abb87e551c8c8a782f349f4fe1d9` |
| 10 | `instance` | [wellFoundedGT](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/wellfoundedgt--b7ee4e1e456851bb9140ea9d.md) | 129 | `declaration-track:b7ee4e1e456851bb9140ea9db1a5143e89bcd158eb3b2a6b2fc182c63a6e75de` |
| 11 | `theorem` | [isNoetherian_iff_fg_wellFounded](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/isnoetherian-iff-fg-wellfounded--7214c2fd8f6928c4c6a69b01.md) | 132 | `result-track:7214c2fd8f6928c4c6a69b018afe52548e463ca115540884948ce27eb6835c55` |
| 12 | `theorem` | [set_has_maximal_iff_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/set-has-maximal-iff-noetherian--ff50bd2b4a04272db5877a7c.md) | 156 | `result-track:ff50bd2b4a04272db5877a7ca475ed959797ff7c3fd88c03737e494d897d0c76` |
| 13 | `theorem` | [monotone_stabilizes_iff_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/monotone-stabilizes-iff-noetherian--40bc4a347932275e56d61528.md) | 161 | `result-track:40bc4a347932275e56d615281126a5357889ef098b0124dcd56ec72037af87db` |
| 14 | `theorem` | [Module.End.eventually_disjoint_ker_pow_range_pow](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/module-end-eventually-disjoint-ker-pow-range-pow--b23d900b5f15be9c59edb85f.md) | 170 | `result-track:b23d900b5f15be9c59edb85f678b65ce01ec0c703c22def69c45485b110b4cb8` |
| 15 | `lemma` | [LinearMap.eventually_iSup_ker_pow_eq](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/linearmap-eventually-isup-ker-pow-eq--4e5266cc1b6fc0734a99e416.md) | 182 | `result-track:4e5266cc1b6fc0734a99e416d4df66231d160b4a211f7bee28321862a874b88e` |
| 16 | `abbrev` | [IsNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/isnoetherianring--789525e2f06d255f4e32cc13.md) | 196 | `declaration-track:789525e2f06d255f4e32cc13b3c80011543b878a9f4904474bacd6794a0f0876` |
| 17 | `theorem` | [isNoetherianRing_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/isnoetherianring-iff--a4c48ff22ab0a79abbbd0797.md) | 199 | `result-track:a4c48ff22ab0a79abbbd07976a89874a0ade6d64cc3e47a0674323d6629af61e` |
| 18 | `theorem` | [isNoetherianRing_iff_ideal_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/declarations/isnoetherianring-iff-ideal-fg--ff4c0950f12a113a46b5dfda.md) | 203 | `result-track:ff4c0950f12a113a46b5dfda49a63617f53a305f6372e25a97a769a1bd1e17be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
