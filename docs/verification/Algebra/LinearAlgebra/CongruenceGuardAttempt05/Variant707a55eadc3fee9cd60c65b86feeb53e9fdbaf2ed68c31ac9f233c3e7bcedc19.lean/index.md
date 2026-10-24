# Verification target: GRWTSK.Algebra.LinearAlgebra.CongruenceGuardAttempt05.Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29e23eb7d5c71e720b5f7a6cd7793858057a15e1",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29e23eb7d5c71e720b5f7a6cd7793858057a15e1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/quadratic--e4537c588c31f44db9c0e3fa.md) | 16 | `declaration-track:e4537c588c31f44db9c0e3fa0199011e5e2014ef9f290e718c40aaa8d57ce774` |
| 2 | `def` | [HasNegativeDirection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/hasnegativedirection--a6f1914501c3eefebda21032.md) | 19 | `declaration-track:a6f1914501c3eefebda210323c2e84413e5a0b797a40a8b9065e49cfa0e99d07` |
| 3 | `def` | [pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/pullback--d16cd7ab30bb98e3f7a7fb98.md) | 22 | `declaration-track:d16cd7ab30bb98e3f7a7fb983ea2203a6c4e5aae998f8530ccffab24e724e326` |
| 4 | `theorem` | [quadratic_pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/quadratic-pullback--11606b6c39cfa734401aae24.md) | 25 | `result-track:11606b6c39cfa734401aae24a3bdaf2710c9ab880654832467adf0eb21cbaac7` |
| 5 | `theorem` | [pullback_isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/pullback-ishermitian--9cc65db412223d5610631a42.md) | 31 | `result-track:9cc65db412223d5610631a42de870dce3b16e01085e2aae7a63314852f6d757b` |
| 6 | `theorem` | [invertible_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/invertible-psd-iff--8064f5404fb8c5ec90a6e3a9.md) | 35 | `result-track:8064f5404fb8c5ec90a6e3a93c385c9191dfd4ca3091b4a5df4a30a8eb44eda6` |
| 7 | `theorem` | [unitary_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/unitary-psd-iff--227a17c7cba80bbb8406d05e.md) | 39 | `result-track:227a17c7cba80bbb8406d05ed89dd9a93fadded880aa83251f4d033d779e6926` |
| 8 | `theorem` | [inverse_negative_witness](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/inverse-negative-witness--b98449e071e0e26014ac6c17.md) | 44 | `result-track:b98449e071e0e26014ac6c179a3aa3c7103715c2f9ae454c2327116d6e364558` |
| 9 | `theorem` | [invertible_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/invertible-negative-iff--b622c9f8de2fa9cb1ad5c351.md) | 50 | `result-track:b622c9f8de2fa9cb1ad5c351138f4fb4720653f44249dd3a1844bb5f05bad53e` |
| 10 | `theorem` | [negative_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/negative-not-psd--ccef7f19d8d0b0f2c040070b.md) | 59 | `result-track:ccef7f19d8d0b0f2c040070bafadd5ba84b1a4c4222bdfc36f7150adec4e9f11` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/hermitian-negative-iff-not-psd--b1a83eea442250907cd9b90e.md) | 66 | `result-track:b1a83eea442250907cd9b90ec8290042e0d83376cf0e1bebd2f24b2a58bdb8e7` |
| 12 | `theorem` | [pullback_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/pullback-one--73b19854183a7c67c60486a3.md) | 78 | `result-track:73b19854183a7c67c60486a33a717e9ace61175d6aede5e8bb9d7fa9b7f0c597` |
| 13 | `theorem` | [pullback_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/pullback-mul--186a6e2b325f2b310269828b.md) | 82 | `result-track:186a6e2b325f2b310269828b10110d894efadbd7102f155b93634fd9cd802ac7` |
| 14 | `def` | [groupTransport](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/grouptransport--58f9f43330e7708cdff4a492.md) | 87 | `declaration-track:58f9f43330e7708cdff4a4928b9a63b990296213d2f5577818cbf8a97e3d7788` |
| 15 | `theorem` | [groupTransport_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/grouptransport-one--7ae11c6609e72b996b9c49e1.md) | 90 | `result-track:7ae11c6609e72b996b9c49e16d787522599002f218910a4f9120c6d9a78091e7` |
| 16 | `theorem` | [groupTransport_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/grouptransport-mul--93eca7b2a7e30a1f406d8091.md) | 94 | `result-track:93eca7b2a7e30a1f406d80918cb604d190b970c56a1a8c80c1b15a5f6aaf50c8` |
| 17 | `def` | [congruenceAction](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/congruenceaction--eb817df938882d6154210ffa.md) | 101 | `declaration-track:eb817df938882d6154210ffa5ad297c18ea44e9321c9e2a4df9c28774caf49c0` |
| 18 | `theorem` | [group_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/group-negative-iff--1a563a0f582980ee166ab72a.md) | 107 | `result-track:1a563a0f582980ee166ab72ab877275d8ee755379b8f7b1e1697e9cdca84d58b` |
| 19 | `theorem` | [group_orbit_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/group-orbit-not-psd--3ee7add8f2fdfff03602f6c3.md) | 112 | `result-track:3ee7add8f2fdfff03602f6c3aa21dfc737bb16611d447fb6ed281f1693e574d2` |
| 20 | `structure` | [SourcePreserving](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/sourcepreserving--f7d4995fc4dcfac9b29fd76e.md) | 118 | `declaration-track:f7d4995fc4dcfac9b29fd76e9a8f376e4d1d626e1be013244f10c0d201f6b426` |
| 21 | `structure` | [CorrectedSource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/correctedsource--7e5e5bd44ce8ebc164aca768.md) | 123 | `declaration-track:7e5e5bd44ce8ebc164aca768eaafc7c7c86bed05d956bbc2d2c9f6596035ac63` |
| 22 | `structure` | [LossySource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/lossysource--bbae462ec12dd35b76c9a300.md) | 129 | `declaration-track:bbae462ec12dd35b76c9a30004bc184ed6cd9694b4468f4c299ea81a3cbb1284` |
| 23 | `theorem` | [LossySource.coordinates_not_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/lossysource-coordinates-not-isunit--8fa933ec9a8858606fd6663a.md) | 134 | `result-track:8fa933ec9a8858606fd6663ad84e1461e05f3cba3caa6dd25d43195b642a6654` |
| 24 | `theorem` | [SourcePreserving.psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/sourcepreserving-psd-iff--b0b66908d233d00f97368efe.md) | 140 | `result-track:b0b66908d233d00f97368efedd1269e6b12f36f6f003835da2339857c14255a3` |
| 25 | `theorem` | [SourcePreserving.negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/sourcepreserving-negative-iff--f15eaf9434d792e3bc1a11ad.md) | 145 | `result-track:f15eaf9434d792e3bc1a11ad7e72260795d691b6b49d77fdbfedbb641f6c1833` |
| 26 | `theorem` | [CorrectedSource.quadratic_defect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/correctedsource-quadratic-defect--e3beffa6b3c10e241a640b17.md) | 150 | `result-track:e3beffa6b3c10e241a640b1734a2d9ac7c4e8b80418ca587c05ac17c5c48313e` |
| 27 | `def` | [indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/indefinite--9c16383e2e10f152507088f6.md) | 160 | `declaration-track:9c16383e2e10f152507088f60ecc39179e99efa30f73a73a0079bfd9b4190c6f` |
| 28 | `def` | [swap](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/swap--74de08d7c466a1fd9864eb1c.md) | 161 | `declaration-track:74de08d7c466a1fd9864eb1cf950e1024c89655d0eea0e63f93272e03a2aff7b` |
| 29 | `def` | [imaginaryShear](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/imaginaryshear--09d0540eaf105885840563eb.md) | 166 | `declaration-track:09d0540eaf105885840563ebc0eb741861b6dc2c9dc619bc2467cf2153980f03` |
| 30 | `def` | [projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/projection--0ea332413cb94496fed35aa4.md) | 172 | `declaration-track:0ea332413cb94496fed35aa4a2b8a5c47fc3f0b44ca314293447680f5ef393a3` |
| 31 | `theorem` | [indefinite_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/indefinite-hermitian--a42adfd3a52eea469d34bff0.md) | 174 | `result-track:a42adfd3a52eea469d34bff0a3ae363f6dda1917f6ec0f158b039bd3435691d7` |
| 32 | `theorem` | [indefinite_actual_values](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/indefinite-actual-values--50b777ef50a7d20907c83792.md) | 177 | `result-track:50b777ef50a7d20907c83792fcbcec8195853b1e9c283d1fcea3901ca0476d88` |
| 33 | `theorem` | [indefinite_negative](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/indefinite-negative--6c2ab7414b9a698f1e77fbc1.md) | 181 | `result-track:6c2ab7414b9a698f1e77fbc1e48ef1230aa84fee2321a8dca9a8acd0a46f92a0` |
| 34 | `theorem` | [swap_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/swap-still-indefinite--fcc12b56e08f89c2a79c0a9a.md) | 185 | `result-track:fcc12b56e08f89c2a79c0a9a954a4b6fd8e7e89647b0ee2d20d2555bafa9a9d1` |
| 35 | `theorem` | [swap_actual_values](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/swap-actual-values--aafbd4293e5ba5e7843c173a.md) | 190 | `result-track:aafbd4293e5ba5e7843c173ac3d3c4ed9c8de6b38a50d41b70a1978a51f0b85f` |
| 36 | `theorem` | [shear_actual_negative_value](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/shear-actual-negative-value--a7e8a3589d1a0f21d68eccc1.md) | 196 | `result-track:a7e8a3589d1a0f21d68eccc1b1711c9d185d4f09da8a0fffecd8917fcc5fbbf0` |
| 37 | `theorem` | [shear_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/shear-still-indefinite--9937d14bb9955c2490f1bed4.md) | 201 | `result-track:9937d14bb9955c2490f1bed46dfeefe5f6cced69551c6a493465ebc20b36e55f` |
| 38 | `theorem` | [projected_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/projected-indefinite--5ef13d966816b39b7f9b38db.md) | 207 | `result-track:5ef13d966816b39b7f9b38db89c12eed30de61cc3e356afb7baf9c540deba8fe` |
| 39 | `theorem` | [projection_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/projection-psd--e17f262e9ef98f1926e13e01.md) | 211 | `result-track:e17f262e9ef98f1926e13e01a5eef6411cb68311bbf686f5908fdcd82f59b88b` |
| 40 | `def` | [lossy_projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/lossy-projection--37dd075fa4c81d8b208e2e71.md) | 218 | `declaration-track:37dd075fa4c81d8b208e2e7131038d0576766a007ba5aca862bdf613c3e1188b` |
| 41 | `theorem` | [singular_psd_does_not_reflect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/singular-psd-does-not-reflect--6ddcf8f5e74a4515f4d1a71a.md) | 223 | `result-track:6ddcf8f5e74a4515f4d1a71a3c2e5388d391433d09ada4e318d7b222071a2513` |
| 42 | `theorem` | [correction_changes_sign](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/correction-changes-sign--5fb5ef9c7e36c6dfef561a41.md) | 227 | `result-track:5fb5ef9c7e36c6dfef561a413a352eb5bfebeace297337d523352aaff66e4d16` |
| 43 | `def` | [signCorrected](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/signcorrected--da2d94180c6b3a78dc1f93c2.md) | 240 | `declaration-track:da2d94180c6b3a78dc1f93c274763674885ebd7771a871f0e00c042ae2548903` |
| 44 | `theorem` | [lossy_not_source_preserving](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/lossy-not-source-preserving--050dc9df679139ab7ff7d048.md) | 246 | `result-track:050dc9df679139ab7ff7d0484fc4f4a6baa76d3ff426dce551e76ae2d95b069a` |
| 45 | `theorem` | [correction_not_source_preserving](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/declarations/correction-not-source-preserving--0bd1a0f6f3440c86ec2236c4.md) | 250 | `result-track:0bd1a0f6f3440c86ec2236c4b272df5766bafdaf63093cee6f7c31e57e7a23be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
