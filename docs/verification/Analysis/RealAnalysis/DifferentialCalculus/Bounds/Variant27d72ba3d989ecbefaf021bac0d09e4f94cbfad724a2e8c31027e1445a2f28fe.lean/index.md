# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Bounds.Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10e1453c80023bba3a0e932f932ec02880f7331f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10e1453c80023bba3a0e932f932ec02880f7331f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.SpecificFunctions.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sin_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/sin-lt--697dff89b45b46d07fcea485.md) | 38 | `result-track:697dff89b45b46d07fcea48524f7c818f0c9004a27e011441e83cbf43821a4fc` |
| 2 | `lemma` | [sin_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/sin-le--24a83e027ee9d1ac2546361e.md) | 50 | `result-track:24a83e027ee9d1ac2546361ee8fdcc7ee2c8e97312948400e6ade6855a43ec06` |
| 3 | `lemma` | [lt_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/lt-sin--ba804f6f088c172fad864652.md) | 55 | `result-track:ba804f6f088c172fad864652e04024fa9ff3f1b7f8c231dc4410a73f5a50d166` |
| 4 | `lemma` | [le_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/le-sin--f20173413018509d34aa547d.md) | 56 | `result-track:f20173413018509d34aa547de714843b2e57ff95aeded781cac49c0611611ebd` |
| 5 | `theorem` | [lt_sin_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/lt-sin-mul--1e4dc5e69aeaf91eb7e73d8f.md) | 58 | `result-track:1e4dc5e69aeaf91eb7e73d8f27b4d172a6bb55fb6a0d89d13d907f4d260bb344` |
| 6 | `theorem` | [le_sin_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/le-sin-mul--16ff3e83134d26f7c87f0449.md) | 63 | `result-track:16ff3e83134d26f7c87f04499c3c3cb9b7157059a3f2007f6ade289b98e6abe8` |
| 7 | `theorem` | [mul_lt_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/mul-lt-sin--18afe042dab8fd3b0ee5f312.md) | 68 | `result-track:18afe042dab8fd3b0ee5f312b184520e654dc19f9d7cc0111aa1fe762a81bec0` |
| 8 | `theorem` | [mul_le_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/mul-le-sin--29651a8e56395c3dde521d58.md) | 78 | `result-track:29651a8e56395c3dde521d580ff65d8045eed5d6b3f2a8c8d3dd1b9a608a673f` |
| 9 | `lemma` | [sin_le_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/sin-le-mul--771e6c53c74d97b9101b1fb7.md) | 85 | `result-track:771e6c53c74d97b9101b1fb7806ffa6aa078c7db30baf16ff07a8ab8de6f2dae` |
| 10 | `lemma` | [mul_abs_le_abs_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/mul-abs-le-abs-sin--1eb6a0fe4f2446061bf04c70.md) | 89 | `result-track:1eb6a0fe4f2446061bf04c707fe106bd488f9a238a12c92214f82856b9b3de0d` |
| 11 | `lemma` | [sin_sq_lt_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/sin-sq-lt-sq--df8c1b80dca73a63636ab0d9.md) | 95 | `result-track:df8c1b80dca73a63636ab0d97e594bf20744aecaf5c680080f90891db84fc7b7` |
| 12 | `lemma` | [sin_sq_le_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/sin-sq-le-sq--eb8c3b0541d6ddf4e3e677df.md) | 106 | `result-track:eb8c3b0541d6ddf4e3e677dff625a61b953b3db4f88810bf96a3c72087fcb196` |
| 13 | `lemma` | [abs_sin_lt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/abs-sin-lt-abs--3306f1652377a4451e652f22.md) | 111 | `result-track:3306f1652377a4451e652f22203415c4dc53e3c42b6b4863003c40c360ae9516` |
| 14 | `lemma` | [abs_sin_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/abs-sin-le-abs--eb96e3bb2be0d7c1fbf89e8b.md) | 112 | `result-track:eb96e3bb2be0d7c1fbf89e8bab09f1e6e9069571b78de41e74cbd7312cf0e0e4` |
| 15 | `lemma` | [one_sub_sq_div_two_lt_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/one-sub-sq-div-two-lt-cos--f32bfe24173e8740c1b727e2.md) | 114 | `result-track:f32bfe24173e8740c1b727e25908a43e4353bbcef62607ffb981b54a1a3a4432` |
| 16 | `lemma` | [one_sub_sq_div_two_le_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/one-sub-sq-div-two-le-cos--bd03d081e8c30a7a0534a025.md) | 119 | `result-track:bd03d081e8c30a7a0534a02599d3d43c64a84b04a5e4c697e650bb740a15d8ae` |
| 17 | `lemma` | [one_sub_mul_le_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/one-sub-mul-le-cos--7e891fcc1a02d2f500eabe4e.md) | 125 | `result-track:7e891fcc1a02d2f500eabe4e1388b41899aaa1d1017a4f0aa8e622ff62fc2dcb` |
| 18 | `lemma` | [one_add_mul_le_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/one-add-mul-le-cos--f148d111074c761179ebf60e.md) | 130 | `result-track:f148d111074c761179ebf60e4ef6fa34a1deda401f82ee8ebccee244042f8047` |
| 19 | `lemma` | [cos_le_one_sub_mul_cos_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/cos-le-one-sub-mul-cos-sq--fb24ec49b11d6bd6399722d0.md) | 133 | `result-track:fb24ec49b11d6bd6399722d0c0415af8fa5caa5680394a08559a5bb40e26b3b9` |
| 20 | `theorem` | [sin_gt_sub_cube](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/sin-gt-sub-cube--dbc434c191e8dc188329ef6b.md) | 147 | `result-track:dbc434c191e8dc188329ef6bdb6ff25781f5726504ea788b99077fd662437de0` |
| 21 | `theorem` | [deriv_tan_sub_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/deriv-tan-sub-id--6d70e91453cc452a40b9b8ca.md) | 159 | `result-track:6d70e91453cc452a40b9b8caa110eebd050a088e2be1d44964eeb128759716f8` |
| 22 | `theorem` | [lt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/lt-tan--e5f791a4b6b640d31a88233b.md) | 167 | `result-track:e5f791a4b6b640d31a88233be272f947485cd9ec2f51cf2985f4d520e39941b9` |
| 23 | `theorem` | [le_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/le-tan--a5eb805573ec991c0a7b28ce.md) | 198 | `result-track:a5eb805573ec991c0a7b28ce953fda8171a06ab2c98f1a776f5d48b9ce8a0c47` |
| 24 | `theorem` | [cos_lt_one_div_sqrt_sq_add_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/cos-lt-one-div-sqrt-sq-add-one--d4fa7e23c2431abddc436229.md) | 203 | `result-track:d4fa7e23c2431abddc436229bf0a22c5a4b22e12c061a9c8d26023c24611d794` |
| 25 | `theorem` | [cos_le_one_div_sqrt_sq_add_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant27d72ba3d989ecbefaf021bac0d09e4f94cbfad724a2e8c31027e1445a2f28fe.lean/declarations/cos-le-one-div-sqrt-sq-add-one--4304df4cdc179b231f615313.md) | 226 | `result-track:4304df4cdc179b231f6153136c6019195b7efcc468ac6042badf73fc1922dd62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
