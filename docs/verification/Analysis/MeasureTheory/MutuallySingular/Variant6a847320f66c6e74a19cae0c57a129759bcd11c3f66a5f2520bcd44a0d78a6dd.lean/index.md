# Verification target: GRWTSK.Analysis.MeasureTheory.MutuallySingular.Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1ca447f91e643dd8984e572aba6abeb6c886250",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1ca447f91e643dd8984e572aba6abeb6c886250`.

Source path: `GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Restrict` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/mutuallysingular--40b56691431e8bafe5cb77b4.md) | 37 | `declaration-track:40b56691431e8bafe5cb77b4b5d11e003446c83348dc85b4c7c1ae4860916167` |
| 2 | `theorem` | [mk](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/mk--540481f1c963f890f4a5fa66.md) | 45 | `result-track:540481f1c963f890f4a5fa66b3efdb5b59abb8ddf625e2286989a294580d76f4` |
| 3 | `def` | [nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/nullset--2db1f411d53b9c852d202db5.md) | 52 | `declaration-track:2db1f411d53b9c852d202db5351cfe18400e5413f270d292d5d8822d9773d630` |
| 4 | `lemma` | [measurableSet_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/measurableset-nullset--b9b34c989e95f476a3fd8575.md) | 54 | `result-track:b9b34c989e95f476a3fd8575986fe050f1b622503197573c4407561bb74b002f` |
| 5 | `lemma` | [measure_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/measure-nullset--f7144e9f75bf0ca8be3c1e0b.md) | 57 | `result-track:f7144e9f75bf0ca8be3c1e0b9bae1fd7ac0d4e063842d297fa8d094daf6d7c69` |
| 6 | `lemma` | [measure_compl_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/measure-compl-nullset--d01633230a2768233570571d.md) | 60 | `result-track:d01633230a2768233570571d13c773f312687aed42a9f512fb00d6492ae68e61` |
| 7 | `lemma` | [restrict_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/restrict-nullset--ffd7335f693464688e96a410.md) | 65 | `result-track:ffd7335f693464688e96a410e904b9bc1f28d730f1459ae289b4ec092332ea76` |
| 8 | `lemma` | [restrict_compl_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/restrict-compl-nullset--f3d94244a6c410a9c5c1837a.md) | 70 | `result-track:f3d94244a6c410a9c5c1837ad40c936d96dc8ee806c81bedb235443c28db1b02` |
| 9 | `theorem` | [zero_right](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/zero-right--905c1fc467603fb5bcaa44b2.md) | 73 | `result-track:905c1fc467603fb5bcaa44b29f042292bbd64a7a2bb134d7e40d4da83fad75e5` |
| 10 | `theorem` | [symm](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/symm--2175edbf0001998691e9d401.md) | 77 | `result-track:2175edbf0001998691e9d4013986b0162fcf095f7204f576ef32db57f22d5221` |
| 11 | `theorem` | [comm](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/comm--62a3f53b0e9d763e229132f7.md) | 81 | `result-track:62a3f53b0e9d763e229132f73b619a73b8ecd8728219fc3f00f2b45ec5334064` |
| 12 | `theorem` | [zero_left](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/zero-left--cf249eae373fd24b609ecc69.md) | 85 | `result-track:cf249eae373fd24b609ecc698691aaa5ce70ac7e665401bd058e0496cbdc292f` |
| 13 | `theorem` | [mono_ac](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/mono-ac--46a48bdc3d0af8d46fa37124.md) | 88 | `result-track:46a48bdc3d0af8d46fa37124dcd411edb9474aba4e098e087df04e2fc566c750` |
| 14 | `lemma` | [congr_ac](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/congr-ac--8fc7a0af77d577d7654f7bcc.md) | 92 | `result-track:8fc7a0af77d577d7654f7bcc54a36a43249c33c0919b78791c1d385bc09471fc` |
| 15 | `theorem` | [mono](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/mono--67f5edfd122008a97a1a2f23.md) | 96 | `result-track:67f5edfd122008a97a1a2f23fe2ebb7cb2690f382a7922588b29024abac554aa` |
| 16 | `lemma` | [self_iff](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/self-iff--2e913c103e7a736a2115795b.md) | 100 | `result-track:2e913c103e7a736a2115795ba546d54f8da0f9922958b8a65d88b2bf5745179a` |
| 17 | `theorem` | [sum_left](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/sum-left--e930337a15fb242bfc018f42.md) | 108 | `result-track:e930337a15fb242bfc018f425fe9e4a736e4600fd788dffb1bbda58857cb6aa7` |
| 18 | `theorem` | [sum_right](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/sum-right--cb1553777f3e04c6439aa5e5.md) | 117 | `result-track:cb1553777f3e04c6439aa5e5459b72d647843b79a0bed9c0f886699e1c6ea09d` |
| 19 | `theorem` | [add_left_iff](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/add-left-iff--07e583a60b9dfa0ffb1fd7d7.md) | 121 | `result-track:07e583a60b9dfa0ffb1fd7d768b758ee104bde0301cf6df64cd1cd958a273b61` |
| 20 | `theorem` | [add_right_iff](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/add-right-iff--e9ccefd5a1aab0974c46b4c4.md) | 125 | `result-track:e9ccefd5a1aab0974c46b4c4afefbe087550f7916c93b656297df6df09f32934` |
| 21 | `theorem` | [add_left](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/add-left--7a0ec6446fbc1a48a916cf47.md) | 128 | `result-track:7a0ec6446fbc1a48a916cf4770a4a6061010fb4914c38392bf889bae0e45953b` |
| 22 | `theorem` | [add_right](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/add-right--6800a7d12ab37a21ce3410ea.md) | 131 | `result-track:6800a7d12ab37a21ce3410eabeb5a14bc0691db9c0d4d3c0b73718cf528b6d00` |
| 23 | `theorem` | [smul](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/smul--9c0a2c25d4d8deff2d41d53f.md) | 134 | `result-track:9c0a2c25d4d8deff2d41d53f88422b1ea0e1926f5ff746698823286e01da6acb` |
| 24 | `theorem` | [smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/smul-nnreal--431d7400f272f6b3e008629d.md) | 137 | `result-track:431d7400f272f6b3e008629d7edb62823f19e7859716f340038179421edd1277` |
| 25 | `lemma` | [restrict](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/restrict--a21be3ed9f26d35790cc002d.md) | 140 | `result-track:a21be3ed9f26d35790cc002d86ca5ac8661f250454d3d265ae2fbbf59ea2eaa2` |
| 26 | `lemma` | [eq_zero_of_absolutelyContinuous_of_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/eq-zero-of-absolutelycontinuous-of-mutuallysingular--edfb3490140ecc4b993ea269.md) | 147 | `result-track:edfb3490140ecc4b993ea269549d9a83fb6c1c686089f6f195915f22f2a90d7f` |
| 27 | `lemma` | [absolutelyContinuous_of_add_of_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/absolutelycontinuous-of-add-of-mutuallysingular--e3f4c478464db700cec08060.md) | 153 | `result-track:e3f4c478464db700cec0806087f152c6e68c0aa115f2ce1c8bdc07158fc4eb77` |
| 28 | `lemma` | [_root_.MeasurableEmbedding.mutuallySingular_map](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/root-measurableembedding-mutuallysingular-map--6e47b8b65bb503d1b230c870.md) | 170 | `result-track:6e47b8b65bb503d1b230c870a1e3e06f1fdf57912ee6bedd83c9a262c2b5001b` |
| 29 | `lemma` | [exists_null_set_measure_lt_of_disjoint](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/exists-null-set-measure-lt-of-disjoint--f861886e7d22c297db4f6d80.md) | 177 | `result-track:f861886e7d22c297db4f6d805dec643c44ef8ede9a81cb37f2bdedc3444de292` |
| 30 | `lemma` | [mutuallySingular_of_disjoint](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/mutuallysingular-of-disjoint--8f2fbb339db59b843b5999e1.md) | 200 | `result-track:8f2fbb339db59b843b5999e191e4255fb4a71268841a6ca87bbd78bbe134dbfb` |
| 31 | `lemma` | [MutuallySingular.disjoint](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/mutuallysingular-disjoint--90cdb01c25c88f1186ef0b88.md) | 219 | `result-track:90cdb01c25c88f1186ef0b8816f4f2dfc2e74ae299a5b15985b1e27f69f46319` |
| 32 | `lemma` | [MutuallySingular.disjoint_ae](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/mutuallysingular-disjoint-ae--884c6ef625fa31f499e09cf3.md) | 233 | `result-track:884c6ef625fa31f499e09cf3844a5f5b46389ad8be0678988b934cb8549c619b` |
| 33 | `lemma` | [disjoint_of_disjoint_ae](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/disjoint-of-disjoint-ae--a1ce44aa92cce9f001196f92.md) | 244 | `result-track:a1ce44aa92cce9f001196f92fea22cb107ae473195c16e23b583a6b66f725b82` |
| 34 | `lemma` | [mutuallySingular_tfae](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/mutuallysingular-tfae--5ce3143c1bd1be1698de226f.md) | 269 | `result-track:5ce3143c1bd1be1698de226f0ffcbdcefe3eaa1d28ff256a42d48f482695a5ae` |
| 35 | `lemma` | [mutuallySingular_iff_disjoint](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/mutuallysingular-iff-disjoint--60b7fab2750928d6e0ff6f84.md) | 283 | `result-track:60b7fab2750928d6e0ff6f84436b8d95a20da792e3e0cc4e3079e533c05e50bc` |
| 36 | `lemma` | [mutuallySingular_iff_disjoint_ae](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant6a847320f66c6e74a19cae0c57a129759bcd11c3f66a5f2520bcd44a0d78a6dd.lean/declarations/mutuallysingular-iff-disjoint-ae--3210f906de198e5711c183a1.md) | 286 | `result-track:3210f906de198e5711c183a1680b1f49449720fe6421dfe77fde4d12d9cb9157` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
