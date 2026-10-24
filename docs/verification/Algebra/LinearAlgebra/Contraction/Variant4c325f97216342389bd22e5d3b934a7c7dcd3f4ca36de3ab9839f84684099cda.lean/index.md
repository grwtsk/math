# Verification target: GRWTSK.Algebra.LinearAlgebra.Contraction.Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "965d155bef25f4160989b036aa2e99aeef378675",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `965d155bef25f4160989b036aa2e99aeef378675`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [contractLeft](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/contractleft--69d884c8fc84355ae4877144.md) | 50 | `declaration-track:69d884c8fc84355ae4877144008a0372c5e5fdea8f59c46cc6ba862d2eb44588` |
| 2 | `def` | [contractRight](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/contractright--fce8d4e8d4911a02e1caeb1f.md) | 54 | `declaration-track:fce8d4e8d4911a02e1caeb1fe910bb107a214f426c106b4f33fc386a84a940fb` |
| 3 | `def` | [dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/dualtensorhom--24328b22e7322ad1116db854.md) | 58 | `declaration-track:24328b22e7322ad1116db8545a4bad14a86423ca56fff80cc040e37a9f5505a6` |
| 4 | `theorem` | [contractLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/contractleft-apply--ba72b3844c10e9aef49a6270.md) | 65 | `result-track:ba72b3844c10e9aef49a62705b45c6125e3973baa810066d21549066974bcd37` |
| 5 | `theorem` | [contractRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/contractright-apply--95dc1f71b41cadeddfd56798.md) | 69 | `result-track:95dc1f71b41cadeddfd567989b2c44727ce2e38a2c07f10ec7fde61bee8939f4` |
| 6 | `theorem` | [dualTensorHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/dualtensorhom-apply--036d232effe206e7799d718a.md) | 73 | `result-track:036d232effe206e7799d718aabd4d82e293bda5f80edc4748fee3f0732d5e784` |
| 7 | `theorem` | [transpose_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/transpose-dualtensorhom--c4f30fd2aac6df1c75192023.md) | 78 | `result-track:c4f30fd2aac6df1c75192023dccf5e0b71d83462b500772f2187bdcfa2713929` |
| 8 | `theorem` | [dualTensorHom_prodMap_zero](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/dualtensorhom-prodmap-zero--61d190932c3b432b2afa9f8e.md) | 88 | `result-track:61d190932c3b432b2afa9f8e0fffe76ab5a50eae055863c77d11577f077a5d83` |
| 9 | `theorem` | [zero_prodMap_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/zero-prodmap-dualtensorhom--81dd4c214e81133e78516c9e.md) | 96 | `result-track:81dd4c214e81133e78516c9ee7df3aac9e93da9f36392eb50fe6a776e34bd954` |
| 10 | `theorem` | [map_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/map-dualtensorhom--5e8bb2519142491b603f85de.md) | 103 | `result-track:5e8bb2519142491b603f85de546a5018b30587b47691be76fa15fb64435ba6ec` |
| 11 | `theorem` | [comp_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/comp-dualtensorhom--85a57f3b24f604e538d1ed9e.md) | 111 | `result-track:85a57f3b24f604e538d1ed9eca9da7761e99c463633df258488bf35310b58fbc` |
| 12 | `theorem` | [toMatrix_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/tomatrix-dualtensorhom--d19a17f76c085dbcaf974498.md) | 121 | `result-track:d19a17f76c085dbcaf9744984e5e06609ec4c13e608f1ba503dec07eb4c1fd58` |
| 13 | `def` | [dualTensorHomEquivOfBasis](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/dualtensorhomequivofbasis--b89e2493842863ed1ababcc9.md) | 143 | `declaration-track:b89e2493842863ed1ababcc96817ba4597a5e73bba759321b446df0d90b0aa7d` |
| 14 | `theorem` | [dualTensorHomEquivOfBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/dualtensorhomequivofbasis-apply--7f3c813617d70f255cc00793.md) | 158 | `result-track:7f3c813617d70f255cc0079379f43e757c9fceaed2399f77be6953340b5cdbd2` |
| 15 | `theorem` | [dualTensorHomEquivOfBasis_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/dualtensorhomequivofbasis-tolinearmap--b0fd3789f7ac3d41d8e38974.md) | 163 | `result-track:b0fd3789f7ac3d41d8e38974ffc2655697396854245fb07ddba9ce2fe95b22d6` |
| 16 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_left](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/dualtensorhomequivofbasis-symm-cancel-left--9e569d2588193d1efe344cb0.md) | 168 | `result-track:9e569d2588193d1efe344cb08500eb1a3842a2d9fce66fe609e8fe472078e0dd` |
| 17 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_right](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/dualtensorhomequivofbasis-symm-cancel-right--16035ed591c46457fba10694.md) | 174 | `result-track:16035ed591c46457fba10694a705c8bd08ad75a4d4cf1a00bc7a1f65eda34b68` |
| 18 | `def` | [dualTensorHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/dualtensorhomequiv--1dd7ef96d10c44c1c7d70402.md) | 184 | `declaration-track:1dd7ef96d10c44c1c7d70402793b2b9eb438b9e3bc22d76401b149150f5d9c7d` |
| 19 | `def` | [lTensorHomEquivHomLTensor](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/ltensorhomequivhomltensor--3ce51654ac39fa3ef4ba0841.md) | 208 | `declaration-track:3ce51654ac39fa3ef4ba0841aaa2cd40052f24b03f8ac0aaeb874b8150d70a5a` |
| 20 | `def` | [rTensorHomEquivHomRTensor](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/rtensorhomequivhomrtensor--e43ad7a43ea53f7e8dee2a35.md) | 217 | `declaration-track:e43ad7a43ea53f7e8dee2a35f08e5b693223e03a781f5d35e456dff33bae848d` |
| 21 | `theorem` | [lTensorHomEquivHomLTensor_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/ltensorhomequivhomltensor-tolinearmap--8cf4dc5303dbc318a2d11c50.md) | 222 | `result-track:8cf4dc5303dbc318a2d11c50294b0764d127d2aef4ffc837b5a58d62e2cf3718` |
| 22 | `theorem` | [rTensorHomEquivHomRTensor_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/rtensorhomequivhomrtensor-tolinearmap--c0d8c99aaa622338577b4dea.md) | 234 | `result-track:c0d8c99aaa622338577b4dea64310f2676087a7f00ed809079c0f3132bf871f9` |
| 23 | `theorem` | [lTensorHomEquivHomLTensor_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/ltensorhomequivhomltensor-apply--fafcab98c5cd25d4a9bb8661.md) | 249 | `result-track:fafcab98c5cd25d4a9bb866139bce2edc7b9397aca9b9ef6c2e9b0e1763ad164` |
| 24 | `theorem` | [rTensorHomEquivHomRTensor_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/rtensorhomequivhomrtensor-apply--f4f6c8cc7ac3338e954bff27.md) | 254 | `result-track:f4f6c8cc7ac3338e954bff27685af9142583431a384a11210c40406bc1b0dad6` |
| 25 | `def` | [homTensorHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/homtensorhomequiv--dd23015d0d7cdae0bc81c90c.md) | 264 | `declaration-track:dd23015d0d7cdae0bc81c90c15ab3c37ee3f35bf18981e1c5239988bea45fc73` |
| 26 | `theorem` | [homTensorHomEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/homtensorhomequiv-tolinearmap--9914a4ac0884f929fdbb9e11.md) | 270 | `result-track:9914a4ac0884f929fdbb9e111e5cf03be483dd50f0fd6ddda7e017a501bbd86c` |
| 27 | `theorem` | [homTensorHomEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/declarations/homtensorhomequiv-apply--bde44f1d571ba5fa28d335d0.md) | 282 | `result-track:bde44f1d571ba5fa28d335d0990e863845164c6822c47412bb3e52b237e9d0aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
