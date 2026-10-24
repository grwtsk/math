# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.KQHContactGeometry.Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d93bb3a482f974ec836a049014c1fbcfe4e3324c",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d93bb3a482f974ec836a049014c1fbcfe4e3324c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Trigonometric` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Norm` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Push` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Point](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/point--9da579cebd77b337c4d25ef3.md) | 29 | `declaration-track:9da579cebd77b337c4d25ef34f2d0338e238638579ad9d9bf9fa43d5ca9822a3` |
| 2 | `def` | [flow0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/flow0--a5e530d3b714dafb23e372ed.md) | 32 | `declaration-track:a5e530d3b714dafb23e372ed3b685f1e6d50fbcb1ce132c7396dd069e6f95faf` |
| 3 | `def` | [flow1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/flow1--6e8050961043bcf77a16db24.md) | 35 | `declaration-track:6e8050961043bcf77a16db24fd2c6becd9108f71025dd637e08f67238eb1da7f` |
| 4 | `def` | [central](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/central--ff1c1208f77b560773372441.md) | 38 | `declaration-track:ff1c1208f77b560773372441af59457f8ba36f53c5d005b29e97475a2c191ca3` |
| 5 | `theorem` | [flow0_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/flow0-add--bcc102bcd7c6d538f0a9356b.md) | 40 | `result-track:bcc102bcd7c6d538f0a9356b8366c670ac8d3bcf734ae7e9d4be7d9193aa7a9a` |
| 6 | `theorem` | [flow1_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/flow1-add--a926202eaa12b0a02c0585dd.md) | 43 | `result-track:a926202eaa12b0a02c0585dd1fe3b98d866ac0b169a06139aeefd0c2d63db4b4` |
| 7 | `theorem` | [flow0_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/flow0-inverse--6d373fada9565fe08be6c277.md) | 46 | `result-track:6d373fada9565fe08be6c2770f87f79a9c7655932e014125ca6cce80f26cb990` |
| 8 | `theorem` | [flow1_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/flow1-inverse--be1dbef56824420b2aef72cf.md) | 49 | `result-track:be1dbef56824420b2aef72cfe1ccb2c7ad538c36d9b9d01708d96d5e15413a21` |
| 9 | `theorem` | [contact_loop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/contact-loop--22673a12c365fffd4768acc9.md) | 53 | `result-track:22673a12c365fffd4768acc9a7130ee3a3f5663441546e0833e405f6be963549` |
| 10 | `def` | [field0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/field0--6075c359bf1209e4c674108d.md) | 59 | `declaration-track:6075c359bf1209e4c674108dba8498088ca1cf22a754afd2775315b40cf7e8ed` |
| 11 | `def` | [field1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/field1--fed5af33660023e394bc2131.md) | 62 | `declaration-track:fed5af33660023e394bc213174444af40c053956a147375ea56ac0b9fef568ea` |
| 12 | `theorem` | [flow0_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/flow0-derivative--c71994a826d353b2084fb72e.md) | 64 | `result-track:c71994a826d353b2084fb72e983a9ca4ad6221d71991a243a25b2c13732facea` |
| 13 | `theorem` | [flow1_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/flow1-derivative--71afd08fd3ea657a1401c32d.md) | 71 | `result-track:71afd08fd3ea657a1401c32dbf6155d4785ec5d4fe5b93f8327790cfcd5e2c7e` |
| 14 | `theorem` | [field0_directional_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/field0-directional-derivative--4c9f934f0dfd266833c55e97.md) | 79 | `result-track:4c9f934f0dfd266833c55e97640e865b4de4bcaef9eb81882fab56546f7f11a0` |
| 15 | `theorem` | [field1_directional_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/field1-directional-derivative--42275a05edfa6d22d31f9819.md) | 86 | `result-track:42275a05edfa6d22d31f9819a1eeb077d992563b35696b7d0c29fd9c0ea66877` |
| 16 | `def` | [bracket](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/bracket--ec5b7e7120031c823a4aaaaf.md) | 93 | `declaration-track:ec5b7e7120031c823a4aaaaf58f731c05df705f19efad0388093fd63322a97fe` |
| 17 | `theorem` | [contact_bracket](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/contact-bracket--fc4e46599116e7db5ec184b9.md) | 95 | `result-track:fc4e46599116e7db5ec184b9c985bfcc63aa21ec5997b47a3d33136fa592a0cb` |
| 18 | `def` | [segment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/segment--59ddc61ea2caccbda8485ea4.md) | 99 | `declaration-track:59ddc61ea2caccbda8485ea42399e332336d6d5f59a3fcbb63c452b144061293` |
| 19 | `theorem` | [segment_horizontal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/segment-horizontal--71c995bb1dfca7552b319aac.md) | 102 | `result-track:71c995bb1dfca7552b319aac8f9e560eba85145bff53f38deea9acab27d953ef` |
| 20 | `def` | [endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/endpoint--28ecc91346db7038bdc8375f.md) | 108 | `declaration-track:28ecc91346db7038bdc8375f3c4a5dae8723a4d607b55d2ce148b03683a1c0d2` |
| 21 | `theorem` | [endpoint_formula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/endpoint-formula--90612525335d8c0da85f03b9.md) | 112 | `result-track:90612525335d8c0da85f03b918ba332ca8db27794766d67aa2920bff58510e24` |
| 22 | `def` | [endpointJacobian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/endpointjacobian--bbb49b24b441ce5808e592f0.md) | 121 | `declaration-track:bbb49b24b441ce5808e592f0f8e415cd150beedf308bf2a071c9cd56a4e0ea3a` |
| 23 | `theorem` | [endpoint_Y_partial1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/endpoint-y-partial1--6658129dc4d0c07374708f9d.md) | 127 | `result-track:6658129dc4d0c07374708f9d3275e10a08e9a915d7c8584f11267261b25b6090` |
| 24 | `theorem` | [endpoint_Y_partial2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/endpoint-y-partial2--2e4c787be332a56f0061b792.md) | 139 | `result-track:2e4c787be332a56f0061b792149277d556a4c7e2417e181d1c6f9ee0b757b3f2` |
| 25 | `theorem` | [endpoint_Y_partial3](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/endpoint-y-partial3--4414a7aac16216336b308daf.md) | 150 | `result-track:4414a7aac16216336b308dafd0be62e23a4e86222ea9a78895611120c257a785` |
| 26 | `theorem` | [endpoint_jacobian_det](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/endpoint-jacobian-det--a93df9d702f4bc5ddec2680c.md) | 160 | `result-track:a93df9d702f4bc5ddec2680cb66b8418d951e803e8fd78a5e5cd5a7399d2c110` |
| 27 | `theorem` | [endpoint_fiber_moments](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/endpoint-fiber-moments--6266304b2ece506b99d46985.md) | 168 | `result-track:6266304b2ece506b99d46985340e2988448aca991220e9df9371b6790386f065` |
| 28 | `theorem` | [centered_residual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/centered-residual--84ad486434152c570034c8e6.md) | 184 | `result-track:84ad486434152c570034c8e639a792f689159832bbe9cc88c125a190f5f2ef2b` |
| 29 | `theorem` | [centered_residual_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/centered-residual-bound--ca208283ac966dad74020770.md) | 189 | `result-track:ca208283ac966dad740207704b1457edbbc0ea182e3c066ad789d3d485d76696` |
| 30 | `def` | [phase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/phase--5a1d57cdef7844e25b15e0d4.md) | 196 | `declaration-track:5a1d57cdef7844e25b15e0d432853270465630e65aef8ad0c33480133479edcf` |
| 31 | `theorem` | [phase_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/phase-add--30ba7e8cd875848e650d49c5.md) | 198 | `result-track:30ba7e8cd875848e650d49c5ba084302e8421d1460845c2cf631def2cc499b63` |
| 32 | `theorem` | [phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/phase-norm--b8853165ac8910362abbed5b.md) | 205 | `result-track:b8853165ac8910362abbed5b1055dfe3a622ab195f9196d1023bc1d72dc52f34` |
| 33 | `def` | [U](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/u--53f209aa566e65585142b39c.md) | 209 | `declaration-track:53f209aa566e65585142b39c79bb3c4f438c78bc74bc218feb650da6971de7f1` |
| 34 | `def` | [V](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/v--1f53092848e8c7bc6bccd13d.md) | 213 | `declaration-track:1f53092848e8c7bc6bccd13d1a9ce8e4f55db29ddd60b5bd6bf33b19736b14e7` |
| 35 | `def` | [centralMode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/centralmode--058ce8609ed2a5396a4162f6.md) | 217 | `declaration-track:058ce8609ed2a5396a4162f641fdbd8de2f89712c359c27a3c360d2b20af1eaf` |
| 36 | `theorem` | [pullback_flow0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/pullback-flow0--461194b23e4ed886fd17c062.md) | 220 | `result-track:461194b23e4ed886fd17c062c61b0945742eeb2341644ac95fd613ee09f71dda` |
| 37 | `theorem` | [pullback_flow1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/pullback-flow1--7b6d537af802043e4cd2652c.md) | 226 | `result-track:7b6d537af802043e4cd2652c08daa5b66f5da198730ecf4e2fea222cb3dba47a` |
| 38 | `theorem` | [fiber_weyl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/fiber-weyl--8e9fad8c25482e3d961b45b4.md) | 232 | `result-track:8e9fad8c25482e3d961b45b4ba80735e156f760562370d9f53cc2b79155b9490` |
| 39 | `theorem` | [U_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/u-comp--70ff69483084211e69331bcd.md) | 238 | `result-track:70ff69483084211e69331bcde61f0c53fa8ad751805687b9727a2c63d4a59ab8` |
| 40 | `theorem` | [V_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/v-comp--353e3ba10651621bc66b78e3.md) | 243 | `result-track:353e3ba10651621bc66b78e3749a9cb1e5a1ce93383b192cd662ac78dc13cb3d` |
| 41 | `theorem` | [U_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/u-inverse--38e04e948e59e4299a9c128b.md) | 248 | `result-track:38e04e948e59e4299a9c128b7bb81dfec5518665537c6dbfc64a9c47fa9a0b70` |
| 42 | `theorem` | [V_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/v-inverse--0e1ab3fe117cce64c1ea6dd8.md) | 253 | `result-track:0e1ab3fe117cce64c1ea6dd88507bc6c804a45f83440cd6149961cc0c7c101ea` |
| 43 | `theorem` | [U_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/u-norm--7989e05332246ac57fe5e301.md) | 258 | `result-track:7989e05332246ac57fe5e301590ad7824b3d5bc21ac6592415b201763c96d6e0` |
| 44 | `theorem` | [V_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean/declarations/v-norm--e64341b151fdba251cc2c188.md) | 262 | `result-track:e64341b151fdba251cc2c18872bfa7f139d5f3bd8cc0fe0cbf81ce01c8a60bf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
