# Verification target: GRWTSK.Analysis.ErrorBounds.RationalLogEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dabc4dd637ed635c34990e9512bcf27c7c7ae78",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalLogEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dabc4dd637ed635c34990e9512bcf27c7c7ae78`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalLogEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalLogEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.DyadicLogEnclosure`](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Rat.Cast.Order` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gridNode](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/gridnode--b0965abc50c45503b3c64e9a.md) | 26 | `declaration-track:b0965abc50c45503b3c64e9a9fefc6d880ea600b580794c3e139830aad8be927` |
| 2 | `def` | [lowerGrid](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/lowergrid--d24f6894071aa9a4dedb673d.md) | 28 | `declaration-track:d24f6894071aa9a4dedb673dae4e1677de79e81bded4bb27e89eacc80e06ffb5` |
| 3 | `def` | [upperGrid](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/uppergrid--179fb23b7efb577f3c88e778.md) | 31 | `declaration-track:179fb23b7efb577f3c88e778065b9b3ac5802f1495995fddcdfbc09b6edf848d` |
| 4 | `def` | [gridCenter](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/gridcenter--f18a2fb9f1e00be045d0571a.md) | 34 | `declaration-track:f18a2fb9f1e00be045d0571ae1f721857b566c5dcaf4f1259273d9c72b4f1b78` |
| 5 | `def` | [gridRadius](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/gridradius--a954f7a3bf766c628b408875.md) | 35 | `declaration-track:a954f7a3bf766c628b408875c0867a722ff06a010df8ff94245167d65cb005a5` |
| 6 | `def` | [mantissa](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/mantissa--73fbbe81ee7560f1a06a91b9.md) | 37 | `declaration-track:73fbbe81ee7560f1a06a91b98307c7325bce5d8d6e4c8c3c0cac6dff49de9237` |
| 7 | `def` | [center](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/center--d825683fd8a394e57c08d10d.md) | 39 | `declaration-track:d825683fd8a394e57c08d10dccbaa1d0d2bec9cad3dfaf768d0346227d8eb0a8` |
| 8 | `def` | [radius](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/radius--669d75ba5753b17c1f7d87ef.md) | 42 | `declaration-track:669d75ba5753b17c1f7d87ef0b5187a95396eca07dbec0b71177757e0764bf13` |
| 9 | `def` | [validScale](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/validscale--4e23e4da1a4a66aae2a1cf75.md) | 46 | `declaration-track:4e23e4da1a4a66aae2a1cf75b63e041600722cdc4cc9e396851706eb6b5a3c05` |
| 10 | `def` | [checkWithin](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/checkwithin--02fe01b1cb77de85694d5cc1.md) | 50 | `declaration-track:02fe01b1cb77de85694d5cc1d314f12a6872cea9bd97f99ffd4627094513558d` |
| 11 | `theorem` | [cast_gridNode](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/cast-gridnode--00e5518993f3ccfd04069583.md) | 53 | `result-track:00e5518993f3ccfd0406958379db97c9976952e421aac3fb2d62c22b730c991a` |
| 12 | `theorem` | [cast_lowerGrid](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/cast-lowergrid--1706f1fb0150b2503f32d726.md) | 57 | `result-track:1706f1fb0150b2503f32d7261c310b1d821ebb86dcc979231f9da20ed61a94f7` |
| 13 | `theorem` | [cast_upperGrid](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/cast-uppergrid--30809d47244f9a72ceaaead5.md) | 61 | `result-track:30809d47244f9a72ceaaead53cfff740e843d45b935fb7136e5e9168b109ee97` |
| 14 | `theorem` | [cast_gridCenter](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/cast-gridcenter--6a4bbc225d23f119552d4772.md) | 65 | `result-track:6a4bbc225d23f119552d477278f8125d5623806bc32831bdb6a30b5d34e5fb4f` |
| 15 | `theorem` | [cast_gridRadius](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/cast-gridradius--3129dbccf9923b94860dfdf4.md) | 69 | `result-track:3129dbccf9923b94860dfdf4a510396d2614bf6064d6b7537a08f35658a4ab6f` |
| 16 | `theorem` | [cast_mantissa](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/cast-mantissa--04ee67730686a01d34a7cfda.md) | 73 | `result-track:04ee67730686a01d34a7cfda1e2312309efb609d3a41a8c6a8aa9d616d1801cd` |
| 17 | `theorem` | [cast_center](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/cast-center--f53e5ec518e030fdb600e581.md) | 77 | `result-track:f53e5ec518e030fdb600e581e7fdd356dd0eaf892f6938d66ce6f0c0bd513ba8` |
| 18 | `theorem` | [cast_radius](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/cast-radius--db1d78b02b6f23e86171439c.md) | 81 | `result-track:db1d78b02b6f23e86171439c69b1191685dd660858ae1fbc1343ee247acff071` |
| 19 | `theorem` | [validScale_iff](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/validscale-iff--80752c3e4ed812cf62b435de.md) | 85 | `result-track:80752c3e4ed812cf62b435de8772492bcf0ca03cc21f040f19ad8cf9449d544f` |
| 20 | `theorem` | [log_error](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/log-error--7f916e3540016b4e432d2ad5.md) | 91 | `result-track:7f916e3540016b4e432d2ad5eafa41709a7764789326aaaf4c332885642bd324` |
| 21 | `theorem` | [center_nonneg](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/center-nonneg--bfff61eca1068cb856e7f964.md) | 98 | `result-track:bfff61eca1068cb856e7f964941aaf8ad940abe87e6d3577ddae8d7b67cc3dd7` |
| 22 | `theorem` | [radius_nonneg](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/radius-nonneg--8b5f5ad9b2a82300e2c78965.md) | 107 | `result-track:8b5f5ad9b2a82300e2c78965a98223d1532ff91daf973087cc4a1cec16823568` |
| 23 | `theorem` | [radius_formula](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/radius-formula--b20d113f35ad781faf457f6c.md) | 113 | `result-track:b20d113f35ad781faf457f6cff9d8ac223af6a667d8d1a0d9a36dd04044d1159` |
| 24 | `theorem` | [radius_le](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/radius-le--2b44a18803522fe73bdd9cac.md) | 124 | `result-track:2b44a18803522fe73bdd9cacab664d28458c15bff74bcfff6b723b6a449ca25c` |
| 25 | `theorem` | [checkWithin_sound](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/checkwithin-sound--b251670c5969b2c1698de20e.md) | 134 | `result-track:b251670c5969b2c1698de20ee377eb164d941ac82220d95b31b2185c2d50ae57` |
| 26 | `theorem` | [common_precision_checked](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/common-precision-checked--0dd9df9064e1e67f786776a7.md) | 142 | `result-track:0dd9df9064e1e67f786776a75e6d51baa9b4273edee36e7f1a4116d82fd990f1` |
| 27 | `theorem` | [admissible_checked](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/admissible-checked--bd653360dcf061e22ceb6e54.md) | 157 | `result-track:bd653360dcf061e22ceb6e542d544d9ad11288d9bcc7c811994bb259864cf7bd` |
| 28 | `theorem` | [boundary_consistent](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/boundary-consistent--33e4c5acf1772acb51ed6b53.md) | 163 | `result-track:33e4c5acf1772acb51ed6b537614072d2c0b7ec4b68a8f14e92a89639743fda0` |
| 29 | `theorem` | [log_two_control](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/log-two-control--1382b1bbfe94eb00dad8ebc6.md) | 176 | `result-track:1382b1bbfe94eb00dad8ebc695982f110bb1c381d61da0b07151e287e1dccc81` |
| 30 | `theorem` | [shared_error_control](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/shared-error-control--9e7d6eae8d56c179470d69ca.md) | 179 | `result-track:9e7d6eae8d56c179470d69cade0b8264e802ac430b0e0736879072359fb1afac` |
| 31 | `theorem` | [invalid_scale_controls](../../../../mathematics/Analysis/ErrorBounds/RationalLogEnclosure.lean/declarations/invalid-scale-controls--5e77f55496dfa90727cc1125.md) | 182 | `result-track:5e77f55496dfa90727cc11259160aa6d048b6c0deac60b45b4f96cf04d0e255a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
