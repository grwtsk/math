# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripHeightDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d80b87f13bb16d263a5cd6aba5fc4e7d888dbe0",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d80b87f13bb16d263a5cd6aba5fc4e7d888dbe0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZetaCommutatorRoot`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RHOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/rhon--779afb4bd2e7de4bc81eeb36.md) | 32 | `declaration-track:779afb4bd2e7de4bc81eeb36fb68af10ff0d1b4b9f2448e71db059b57b03126f` |
| 2 | `theorem` | [rhOn_restrict](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/rhon-restrict--160359207404d0de7903b300.md) | 36 | `result-track:160359207404d0de7903b30037954882894db5952990adc7aea59f42e7ee9e84` |
| 3 | `theorem` | [rhOn_iff_on_zero_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/rhon-iff-on-zero-cover--5eac80d3826a4bb904f0d478.md) | 43 | `result-track:5eac80d3826a4bb904f0d4782bc513a570d0eb7de56f7ab941e5c68e63de2d84` |
| 4 | `theorem` | [rhOn_union_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/rhon-union-iff--9be93eebc18979168a005535.md) | 56 | `result-track:9be93eebc18979168a005535ee9082c0814f5afd4e6a579f5163d073a0a4d2c1` |
| 5 | `def` | [heightWindow](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/heightwindow--6b5b91ad6714443280c79d3a.md) | 67 | `declaration-track:6b5b91ad6714443280c79d3af5eafe35f76501727b0fda0d0f1a45d73eef6130` |
| 6 | `def` | [WindowRH](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/windowrh--95366ebec79e2d85b8661eea.md) | 71 | `declaration-track:95366ebec79e2d85b8661eeadd6c13194fde4c970199edde15d9aa6be71a585f` |
| 7 | `theorem` | [windowRH_iff_rhThrough](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/windowrh-iff-rhthrough--30f71b372847654d9b3a2b59.md) | 75 | `result-track:30f71b372847654d9b3a2b597e7f083805eb53d1a780ce8672e66a8b77020498` |
| 8 | `theorem` | [heightWindow_nonempty](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/heightwindow-nonempty--7758ba0275bd3dfd4af112d8.md) | 88 | `result-track:7758ba0275bd3dfd4af112d8c76f74e2d0a22a6c70f4155b52be5ce46ed4ea81` |
| 9 | `theorem` | [heightWindows_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/heightwindows-cover--32a089b7968f4d248bd036e9.md) | 95 | `result-track:32a089b7968f4d248bd036e9597c0bf545b51d1351ad89c8053b9daca10eb89e` |
| 10 | `theorem` | [windowRH_mono](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/windowrh-mono--82253312a0b1b47a9261a5f3.md) | 100 | `result-track:82253312a0b1b47a9261a5f321aa39a1a3facdbe729ec707acad233d304a5e82` |
| 11 | `theorem` | [all_windowRH_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/all-windowrh-iff-rh--9057c15a454dad8f6f6c1c97.md) | 109 | `result-track:9057c15a454dad8f6f6c1c97900ee182487ab558f3c75bc0fa9e77bfea3dd164` |
| 12 | `def` | [windowProfile](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/windowprofile--47cc1cea2ada59bf8b6e8557.md) | 122 | `declaration-track:47cc1cea2ada59bf8b6e85574bdd450efb5f1b736e7f552c636e596bb957ff03` |
| 13 | `theorem` | [windowProfile_status](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/windowprofile-status--b9df31c0e9ae9a100bf01f28.md) | 125 | `result-track:b9df31c0e9ae9a100bf01f289be84c6fc10ca33fece55894aa5cf81966543522` |
| 14 | `def` | [allWindowsProfile](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/allwindowsprofile--45bc3ba5cfe06bb386487d05.md) | 129 | `declaration-track:45bc3ba5cfe06bb386487d0591ee0b3245f46da88594bda877a43e681be0c6db` |
| 15 | `theorem` | [allWindowsProfile_status](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/allwindowsprofile-status--d81eb2ccf5c0ed6375ba6da7.md) | 132 | `result-track:d81eb2ccf5c0ed6375ba6da7cd7756adcade8e8673b8131e40aee45c3e271400` |
| 16 | `def` | [heightShell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/heightshell--7dad32cf7dd8b5d6a8eacd03.md) | 136 | `declaration-track:7dad32cf7dd8b5d6a8eacd0377cd53d43336d72c21032bc8ca2647d5f6342529` |
| 17 | `def` | [ShellRH](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/shellrh--ced01ca2ff2a29f57b98bc10.md) | 141 | `declaration-track:ced01ca2ff2a29f57b98bc109d0ab7da2f9fdd364061abb48fbdfce0ea18c643` |
| 18 | `theorem` | [window_succ_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/window-succ-iff--a386fbd1d4a381e1885d07d9.md) | 145 | `result-track:a386fbd1d4a381e1885d07d93af61d81962435563f5cb0aeca92270bad7b777c` |
| 19 | `theorem` | [rh_of_base_and_shell_extension](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/rh-of-base-and-shell-extension--288e718e4d027ffcecefae82.md) | 161 | `result-track:288e718e4d027ffcecefae8291c36b3feb9fdd017cf47e8aaa924554230f46b0` |
| 20 | `theorem` | [base_and_shells_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/base-and-shells-iff-rh--9980ceca43ee85dc4ae66e6b.md) | 172 | `result-track:9980ceca43ee85dc4ae66e6b9f26683e42546cfba0a86e49ed17f2605979ebb5` |
| 21 | `theorem` | [cofinal_windows_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/cofinal-windows-iff-rh--34476c79641816a6a85d5121.md) | 183 | `result-track:34476c79641816a6a85d512178d2f8ddc78d4d86012a1fd5c1241babc52b5cec` |
| 22 | `theorem` | [bounded_levels_not_cofinal](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/bounded-levels-not-cofinal--928c1681b3bf0ffce620f469.md) | 197 | `result-track:928c1681b3bf0ffce620f469eac27e82388dbeead7e9bce79a816376279d5235` |
| 23 | `theorem` | [bounded_windows_miss_point](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/bounded-windows-miss-point--96d94d8af4a4294c3093c5c0.md) | 207 | `result-track:96d94d8af4a4294c3093c5c017a2555e4bed89786581e56922dfd44d044467f7` |
| 24 | `theorem` | [root_height_not_injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/root-height-not-injective--a4a8feeb2b8acf7ef49d91ad.md) | 220 | `result-track:a4a8feeb2b8acf7ef49d91ad1b87705ca9d2d4bac77269102fd7296a29924a52` |
| 25 | `theorem` | [coordinateOperator_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/coordinateoperator-mul--2d7d14650ea80aa6d92c0480.md) | 231 | `result-track:2d7d14650ea80aa6d92c048091b1a1f199a13f5a9150606a82285bb989f70c6a` |
| 26 | `theorem` | [coordinateOperator_one_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/coordinateoperator-one-ne-zero--49774e726d7fbcc7a340e1b4.md) | 239 | `result-track:49774e726d7fbcc7a340e1b4b22431c8b48dbecf5601db9ebf830b74844078e8` |
| 27 | `theorem` | [coordinateOperator_not_multiplicative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/coordinateoperator-not-multiplicative--4dbb784c85ef5dbda56a0535.md) | 249 | `result-track:4dbb784c85ef5dbda56a0535a1bb55fc5f49e842711e4b3dfead7bb586a089a0` |
| 28 | `theorem` | [no_coordinate_ringHom](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/declarations/no-coordinate-ringhom--1efe4665a3ff0e2304670010.md) | 259 | `result-track:1efe4665a3ff0e2304670010a0cfa2c61bea1cda480952d3e0adbaa7ff4791ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
