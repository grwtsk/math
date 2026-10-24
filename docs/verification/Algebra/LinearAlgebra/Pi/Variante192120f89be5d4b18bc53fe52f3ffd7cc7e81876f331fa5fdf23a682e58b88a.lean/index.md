# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "458086242cd2554dd43f2bc0b969409aae5de442",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `458086242cd2554dd43f2bc0b969409aae5de442`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piRightHomBil](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/pirighthombil--576fb2994c50730a56dfba12.md) | 50 | `declaration-track:576fb2994c50730a56dfba128eeb97fb74b55ab554c1017d2a444276ab8c1907` |
| 2 | `def` | [piRightHom](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/pirighthom--0cd759808e510170a0fba918.md) | 59 | `declaration-track:0cd759808e510170a0fba9185bb269b9fdfda20be491dc3c7c0db5e648181c95` |
| 3 | `lemma` | [piRightHom_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/pirighthom-tmul--2dd0f0e17bf78dc18b23ae93.md) | 63 | `result-track:2dd0f0e17bf78dc18b23ae939b266823f9e52e41a9a3c487b74de1324a7983e6` |
| 4 | `def` | [piRightInv](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/pirightinv--be454782749b1b03c75454e3.md) | 70 | `declaration-track:be454782749b1b03c75454e32da34462c65f5d049e5d95de77047e17c496203a` |
| 5 | `lemma` | [piRightInv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/pirightinv-apply--0b734f54adf667a0f0a48bed.md) | 75 | `result-track:0b734f54adf667a0f0a48bedf4bb4cf07d314e7b3686e21f94a80aa1273b8952` |
| 6 | `lemma` | [piRightInv_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/pirightinv-single--bfc6736e971b4563b0842428.md) | 85 | `result-track:bfc6736e971b4563b0842428ea81f078be46e0fe15c6432b1fd65d4e739d79e7` |
| 7 | `def` | [piRight](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/piright--0ca04ef5313edd0dd6759278.md) | 94 | `declaration-track:0ca04ef5313edd0dd675927838841d4b567af2ceed245de4782553de252b85e1` |
| 8 | `lemma` | [piRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/piright-apply--22ae8333c5185cb2afc29783.md) | 102 | `result-track:22ae8333c5185cb2afc2978351bc71273eee40fadcbddf49c33b8eee0107b743` |
| 9 | `lemma` | [piRight_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/piright-symm-apply--0d565ad7fafb64df33ecae9e.md) | 107 | `result-track:0d565ad7fafb64df33ecae9e00bceece6f9ea359751dd87db74beeffb5805c5a` |
| 10 | `lemma` | [piRight_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/piright-symm-single--bfb1bad74d41d5fa1047f62c.md) | 112 | `result-track:bfb1bad74d41d5fa1047f62cd48beb80f5a4b622860ed8972e7f7ccf8ce46729` |
| 11 | `def` | [piScalarRightHomBil](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/piscalarrighthombil--8c107bf4897f8e69166374ef.md) | 118 | `declaration-track:8c107bf4897f8e69166374ef641767fb6b3e82d738c68c7519f7b715a8138d63` |
| 12 | `def` | [piScalarRightHom](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/piscalarrighthom--e1aaf0afe3d3416e2904c39d.md) | 132 | `declaration-track:e1aaf0afe3d3416e2904c39d9b7c55c940f1a5547299bc5d780001fbb883d3d8` |
| 13 | `lemma` | [piScalarRightHom_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/piscalarrighthom-tmul--e9451226ba635753b946d4e5.md) | 136 | `result-track:e9451226ba635753b946d4e5bd4871bed037270e4fc72a567cee44f15df15ff5` |
| 14 | `def` | [piScalarRightInv](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/piscalarrightinv--b266928c9f8d7304d1f60db8.md) | 144 | `declaration-track:b266928c9f8d7304d1f60db813515cab2ddcbdfd10eaa40e821f1111377a8fb3` |
| 15 | `lemma` | [piScalarRightInv_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/piscalarrightinv-single--280979200a7b3eda012de28e.md) | 152 | `result-track:280979200a7b3eda012de28e204877a59dbb12f3a1703022629cad4f7f6817a9` |
| 16 | `def` | [piScalarRight](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/piscalarright--30c13bd5cc9db61e2d170ce1.md) | 158 | `declaration-track:30c13bd5cc9db61e2d170ce1f2a7c76dd0b2c8551051c9cc571b346cdb0640c3` |
| 17 | `lemma` | [piScalarRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/piscalarright-apply--b3910f7593dbd61d43aa5f12.md) | 166 | `result-track:b3910f7593dbd61d43aa5f1271f5272fced9797a95e90cfdf0fcbcd98666c4da` |
| 18 | `lemma` | [piScalarRight_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variante192120f89be5d4b18bc53fe52f3ffd7cc7e81876f331fa5fdf23a682e58b88a.lean/declarations/piscalarright-symm-single--abb7d94bd296707d891affe8.md) | 171 | `result-track:abb7d94bd296707d891affe85e2eb3300e54d4e4931d36b505b9b88b14f3eb51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
