# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Irrational.Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39c4802d9fc069cb478269172f5807ef173cfbaf",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39c4802d9fc069cb478269172f5807ef173cfbaf`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.GCD` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Rify` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [irrational_rpow_rat_of_not_power](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/irrational-rpow-rat-of-not-power--5f3edf50d6088221d1f03496.md) | 35 | `result-track:5f3edf50d6088221d1f034965c620ba69f54f7d8ceb7fc3bb21e18967c16aeeb` |
| 2 | `theorem` | [not_power_nat_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/not-power-nat-pow--6924ecb48a32aacb3742e143.md) | 47 | `result-track:6924ecb48a32aacb3742e143d32afd9c5300ef9b5aab07e3ba014612c4016b9e` |
| 3 | `theorem` | [not_power_nat_of_bounds](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/not-power-nat-of-bounds--97ac1244103309d0eed66626.md) | 89 | `result-track:97ac1244103309d0eed66626900a650718fff8dfb57568ac4cd2929db2c3799b` |
| 4 | `theorem` | [not_power_nat_pow_of_bounds](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/not-power-nat-pow-of-bounds--7bd4290fb1a44d91dc6e9eb6.md) | 98 | `result-track:7bd4290fb1a44d91dc6e9eb62acd9a3ce0dfc0f252551f465a781b4d515f4cb6` |
| 5 | `lemma` | [eq_of_mul_eq_mul_of_coprime_aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/eq-of-mul-eq-mul-of-coprime-aux--775aff6e242ae25037c7ff0c.md) | 106 | `result-track:775aff6e242ae25037c7ff0cad902a01ea072bb45a6fe9bdb984b01fe7e55bc3` |
| 6 | `lemma` | [eq_of_mul_eq_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/eq-of-mul-eq-mul-of-coprime--1a20f8f4edb39b40711b3d6d.md) | 109 | `result-track:1a20f8f4edb39b40711b3d6dcefae6074f6b984c7a6c6329e9add24aec66cc82` |
| 7 | `theorem` | [not_power_rat_of_num_aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/not-power-rat-of-num-aux--8806e54719a2232784f51269.md) | 116 | `result-track:8806e54719a2232784f51269535d08c9bbcde9e5e1864fa21fb8b4a50f913e82` |
| 8 | `theorem` | [not_power_rat_of_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/not-power-rat-of-num--50f0ed2581c648a9a832b573.md) | 150 | `result-track:50f0ed2581c648a9a832b57320e2b95d496a464e3d91488333e135d750fdd7b6` |
| 9 | `theorem` | [irrational_rpow_rat_rat_of_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/irrational-rpow-rat-rat-of-num--112f52054127772006d9f977.md) | 162 | `result-track:112f52054127772006d9f97732c6922ede91b347d2030449f3257c5243964d08` |
| 10 | `theorem` | [irrational_rpow_rat_rat_of_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/irrational-rpow-rat-rat-of-den--b409e5e439fe1c5769ddb4e3.md) | 192 | `result-track:b409e5e439fe1c5769ddb4e3d0b72ea78f6be4676211c7acb53a9685514a5793` |
| 11 | `theorem` | [irrational_rpow_nat_rat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/irrational-rpow-nat-rat--21dfc051f0bb32360aada37c.md) | 208 | `result-track:21dfc051f0bb32360aada37c27619c5f020f0da3521a5562c5460f6c3327e0de` |
| 12 | `theorem` | [irrational_sqrt_rat_of_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/irrational-sqrt-rat-of-num--abff1b08cceea403a6e03124.md) | 217 | `result-track:abff1b08cceea403a6e03124de810f5b172f0fcdf54bc3bb5f685583664ef0b8` |
| 13 | `theorem` | [irrational_sqrt_rat_of_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/irrational-sqrt-rat-of-den--77f3b4929a25e8472d05d063.md) | 228 | `result-track:77f3b4929a25e8472d05d063f5f8bcb2cd5f6f34530d79f8fedbf4c2d5d5b5cb` |
| 14 | `theorem` | [irrational_sqrt_nat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/irrational-sqrt-nat--cead8c0897597837f1522137.md) | 239 | `result-track:cead8c0897597837f1522137037657367dd36c94408f15bbf8f32a1b5ce71302` |
| 15 | `structure` | [NotPowerCertificate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/notpowercertificate--850b2f614ed9f0d6464dbf75.md) | 250 | `declaration-track:850b2f614ed9f0d6464dbf754b333c76da7ae253bd6b5873a4616761746db3bd` |
| 16 | `def` | [findNotPowerCertificateCore](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/findnotpowercertificatecore--1a5afb12b36842e0b1da8286.md) | 259 | `declaration-track:1a5afb12b36842e0b1da8286e62eb8784bde3dabb3c4e6c99df20a8f8252c4ee` |
| 17 | `def` | [findNotPowerCertificate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/findnotpowercertificate--fb2f352aeedd1013dde4d10e.md) | 273 | `declaration-track:fb2f352aeedd1013dde4d10eee96b76d593a27e80cb99822d6c55651c2cc39fb` |
| 18 | `def` | [evalIrrationalRpow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/evalirrationalrpow--c3e9e81768b41968d21b3a88.md) | 286 | `declaration-track:c3e9e81768b41968d21b3a8870519e31520d9d2e0ef11684cb2038447db3a465` |
| 19 | `def` | [evalIrrationalSqrt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/declarations/evalirrationalsqrt--44669c4c5e11cca63372f88c.md) | 322 | `declaration-track:44669c4c5e11cca63372f88c88b3a2abb0d5e7fa318aca08afda98e10178161c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
