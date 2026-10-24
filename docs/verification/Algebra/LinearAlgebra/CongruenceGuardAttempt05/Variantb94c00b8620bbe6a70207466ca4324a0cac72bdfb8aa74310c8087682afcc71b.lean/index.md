# Verification target: GRWTSK.Algebra.LinearAlgebra.CongruenceGuardAttempt05.Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78cb21db6d764dd2526d622b381d535460eda083",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78cb21db6d764dd2526d622b381d535460eda083`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/quadratic--806a93068749487b21b27d49.md) | 24 | `declaration-track:806a93068749487b21b27d49f1b7f1a2440489886d85748bf396ac9557118106` |
| 2 | `def` | [HasNegativeDirection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/hasnegativedirection--fc8c5984dcaef72f91d2878d.md) | 27 | `declaration-track:fc8c5984dcaef72f91d2878d36ebbc9d1c136eb34fb4a371c40a83b3fa536820` |
| 3 | `def` | [pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/pullback--20b00fbab69f5ca534f92bfa.md) | 30 | `declaration-track:20b00fbab69f5ca534f92bfac20b2c5e94e4df62f8567637a6723647cf27f0bc` |
| 4 | `theorem` | [quadratic_pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/quadratic-pullback--196f083f2245dfe4f1b3b3ac.md) | 33 | `result-track:196f083f2245dfe4f1b3b3ac3886f7d0463ea19fc3e2226c24abb716a88c6813` |
| 5 | `theorem` | [pullback_isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/pullback-ishermitian--cc51b62ea36db76f1cde6c36.md) | 39 | `result-track:cc51b62ea36db76f1cde6c36a65fe29d4cf89e7194b2c753e752ae01c432b1aa` |
| 6 | `theorem` | [invertible_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/invertible-psd-iff--0ae15046b99c00a3d31d8e04.md) | 43 | `result-track:0ae15046b99c00a3d31d8e04d7741f87642409bc088409baa69f28dcd1997e20` |
| 7 | `theorem` | [unitary_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/unitary-psd-iff--ab3ae385c078cad09326594d.md) | 47 | `result-track:ab3ae385c078cad09326594de028ef53ebccba20edf861b7ba8ecd7a55ab9061` |
| 8 | `theorem` | [inverse_negative_witness](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/inverse-negative-witness--fbd9d58016385785f16902b8.md) | 52 | `result-track:fbd9d58016385785f16902b8aae3b47bcb9721161c47d9942031aede9e01707a` |
| 9 | `theorem` | [invertible_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/invertible-negative-iff--116e76f4b0b96ff8380ff5df.md) | 58 | `result-track:116e76f4b0b96ff8380ff5dfcd51597ada19a570b44de3f93ce264dec78fa12c` |
| 10 | `theorem` | [negative_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/negative-not-psd--75008c04001ee5517fe1d615.md) | 67 | `result-track:75008c04001ee5517fe1d615ce085684ef09dec83cbc966e187aa4cea8c889af` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/hermitian-negative-iff-not-psd--4f90b3781b9d85f48002973d.md) | 74 | `result-track:4f90b3781b9d85f48002973d5deb16c33e3a47c04aeb8738e7ed4eae9d24e194` |
| 12 | `theorem` | [pullback_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/pullback-one--8349aba94aa7ba274c7d7cc0.md) | 86 | `result-track:8349aba94aa7ba274c7d7cc02832747c35f2d22927b6a9c09d1d07f2143489d1` |
| 13 | `theorem` | [pullback_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/pullback-mul--c3bc5c3dbfc094394ac48505.md) | 90 | `result-track:c3bc5c3dbfc094394ac485053a061851b0367fd90a24a2f4ba1212b81ba30f57` |
| 14 | `def` | [groupTransport](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/grouptransport--cc5edc6a014650fb332aa92a.md) | 95 | `declaration-track:cc5edc6a014650fb332aa92a0e060694db93825615a3bcfbbf2d0e6744fcdb01` |
| 15 | `theorem` | [groupTransport_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/grouptransport-one--97c19e6fac9f6b1be4468180.md) | 98 | `result-track:97c19e6fac9f6b1be4468180eb2df68a36cf227c6d43cd7f1510d7f2b7d506db` |
| 16 | `theorem` | [groupTransport_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/grouptransport-mul--659991f9bd45d05fd04457f7.md) | 102 | `result-track:659991f9bd45d05fd04457f7d96cc98b7fc227338a007fedb782cfad4cb95422` |
| 17 | `def` | [congruenceAction](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/congruenceaction--8d2c1c4921911eb5afcc6e48.md) | 109 | `declaration-track:8d2c1c4921911eb5afcc6e48f3f75b00f242612db284cd8b412815a24a85aee4` |
| 18 | `theorem` | [group_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/group-negative-iff--08202270f84332835ed69ffe.md) | 115 | `result-track:08202270f84332835ed69ffef08cbd8585773fa1a5e36b3702ba84893c632e42` |
| 19 | `theorem` | [group_orbit_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/group-orbit-not-psd--74bea483b1e066e11877e251.md) | 120 | `result-track:74bea483b1e066e11877e25116c5bad5d5ffc4834cff925f839d9201110fe3c3` |
| 20 | `structure` | [SourcePreserving](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/sourcepreserving--e670928f484ae0eb9362bc57.md) | 126 | `declaration-track:e670928f484ae0eb9362bc57c2720635323b83337f50fd6cf9b20d28cb5fe0be` |
| 21 | `structure` | [CorrectedSource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/correctedsource--4e655b9569db0df5e25cf693.md) | 131 | `declaration-track:4e655b9569db0df5e25cf6936e259d7fae0774a192ec34c79321531a2237a51f` |
| 22 | `structure` | [LossySource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/lossysource--fd25778f4a73f13cd74e09ed.md) | 137 | `declaration-track:fd25778f4a73f13cd74e09ed7da8f1c0abc7b3c5b8dcdf932637bdeae908fc10` |
| 23 | `theorem` | [LossySource.coordinates_not_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/lossysource-coordinates-not-isunit--bb9b564cb1e269c2093164b4.md) | 142 | `result-track:bb9b564cb1e269c2093164b482f592b37ff6ddd6a06415e87f9aff559e619bf0` |
| 24 | `theorem` | [SourcePreserving.psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/sourcepreserving-psd-iff--a9036a4c8e9d2b6893f77018.md) | 148 | `result-track:a9036a4c8e9d2b6893f77018c84113ff2c687c47bb2e05f574fc26e56fdb9311` |
| 25 | `theorem` | [SourcePreserving.negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/sourcepreserving-negative-iff--d4ae6da1af3d81aff5a39e00.md) | 153 | `result-track:d4ae6da1af3d81aff5a39e009ae7d63cdda3094387135f57cea8fd12bd0f0265` |
| 26 | `theorem` | [CorrectedSource.quadratic_defect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/correctedsource-quadratic-defect--c589bfb4dae1ac5775e76de9.md) | 158 | `result-track:c589bfb4dae1ac5775e76de990be07647124493762b2281f201de2a6e808664d` |
| 27 | `def` | [indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/indefinite--1a1592439eaf68e7ffe5c1f2.md) | 168 | `declaration-track:1a1592439eaf68e7ffe5c1f2cdcd830caac4e292abe4f611af8df42cde69bb5d` |
| 28 | `def` | [swap](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/swap--c88c71fb95fc39b8bdc2e56b.md) | 169 | `declaration-track:c88c71fb95fc39b8bdc2e56b1e8a3c40fcadd61d7769b9c363240a143eb6ae62` |
| 29 | `def` | [imaginaryShear](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/imaginaryshear--87931fb3ee7c28be3c8bf0dc.md) | 174 | `declaration-track:87931fb3ee7c28be3c8bf0dc08f098b0005d648442ea4382dd74e46019acd092` |
| 30 | `def` | [projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/projection--ceccd0f6cbce7e7a9d5b996b.md) | 180 | `declaration-track:ceccd0f6cbce7e7a9d5b996b6b6e1110344c484988582bd649e6f00da3e19afc` |
| 31 | `theorem` | [indefinite_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/indefinite-hermitian--121d3d3114afaa9e5f4f6453.md) | 182 | `result-track:121d3d3114afaa9e5f4f64537585b4ed4aefc8a156c675c725fd91bb1ad26183` |
| 32 | `theorem` | [indefinite_actual_values](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/indefinite-actual-values--9c53388a35a1aef6805f713c.md) | 185 | `result-track:9c53388a35a1aef6805f713c8d630a71245558cf19a89f442bcab519361fd45e` |
| 33 | `theorem` | [indefinite_negative](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/indefinite-negative--4ca2a3054c1c4438dc03883a.md) | 189 | `result-track:4ca2a3054c1c4438dc03883af14c128bb6dbe4fd833ce29ccb85fae36ef6a938` |
| 34 | `theorem` | [swap_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/swap-still-indefinite--ad325b9646bc8d7a8245f468.md) | 193 | `result-track:ad325b9646bc8d7a8245f468912c2630245824ff4ad4965afa60fc32d4a31bad` |
| 35 | `theorem` | [swap_actual_values](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/swap-actual-values--07ee58d9d9e292eacfb5a727.md) | 198 | `result-track:07ee58d9d9e292eacfb5a727c94a39f5e181ad54dfb0b2176044ab29f0758f6e` |
| 36 | `theorem` | [shear_actual_negative_value](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/shear-actual-negative-value--bdc4b92a4fabe65bdddbef1d.md) | 204 | `result-track:bdc4b92a4fabe65bdddbef1d85a8b4b5fb743c993781eaec8edbaa94ab75795e` |
| 37 | `theorem` | [shear_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/shear-still-indefinite--c9d4e990a049fb3759a9349b.md) | 209 | `result-track:c9d4e990a049fb3759a9349b1f2b21b8eedfb6196c8718be3ba05c20a62cfbb4` |
| 38 | `theorem` | [projected_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/projected-indefinite--5a033b28d84e6e8e0e076527.md) | 215 | `result-track:5a033b28d84e6e8e0e076527f87faa5b03511db9e090f116b94201493fa44750` |
| 39 | `theorem` | [projection_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/projection-psd--abf851a963090ae549b28e5f.md) | 219 | `result-track:abf851a963090ae549b28e5fc51b18fef4d63c3a5f9508940ee5934703894ad6` |
| 40 | `def` | [lossy_projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/lossy-projection--748c5e69a023f4a5a8fa9b7e.md) | 226 | `declaration-track:748c5e69a023f4a5a8fa9b7e3e6b4d255912e4fddad43342ad2e472e79d3108b` |
| 41 | `theorem` | [singular_psd_does_not_reflect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/singular-psd-does-not-reflect--e4f11cc1c6b07aa89d0ac1ee.md) | 231 | `result-track:e4f11cc1c6b07aa89d0ac1eeb9d335da216d59ab53104618c8bcaab2262bc941` |
| 42 | `theorem` | [correction_changes_sign](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/correction-changes-sign--1fe64959635e7fc1fc404fa9.md) | 235 | `result-track:1fe64959635e7fc1fc404fa9c080a6948457d1883d0401cc15a2f2e3137ca943` |
| 43 | `def` | [signCorrected](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/signcorrected--41b53f62640122f0e2e74c3a.md) | 248 | `declaration-track:41b53f62640122f0e2e74c3ab7b80894b68d735e8f725dc5f56b78443c3f68b5` |
| 44 | `theorem` | [lossy_not_source_preserving](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/lossy-not-source-preserving--49e6e2aa4e53db6c530ee257.md) | 254 | `result-track:49e6e2aa4e53db6c530ee257e654d364cda56eaedbe34793a1bb80de2f93a9d9` |
| 45 | `theorem` | [correction_not_source_preserving](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variantb94c00b8620bbe6a70207466ca4324a0cac72bdfb8aa74310c8087682afcc71b.lean/declarations/correction-not-source-preserving--9af61e44d29684cc3d458b7d.md) | 258 | `result-track:9af61e44d29684cc3d458b7dc9ad4aa390b7b08f38322ee7d21172827f043134` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
