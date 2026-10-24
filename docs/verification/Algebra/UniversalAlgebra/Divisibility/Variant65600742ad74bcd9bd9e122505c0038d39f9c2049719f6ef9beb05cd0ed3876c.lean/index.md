# Verification target: GRWTSK.Algebra.UniversalAlgebra.Divisibility.Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b3cc88f2b60a5afbfa37dadb1fe8054c1a65bbc",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b3cc88f2b60a5afbfa37dadb1fe8054c1a65bbc`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Divisibility.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_zero_of_zero_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/eq-zero-of-zero-dvd--880c1da036493c698e4d1429.md) | 26 | `result-track:880c1da036493c698e4d1429bcc25d0f5a474eeaeb3d67ab189329dea5e43c77` |
| 2 | `theorem` | [zero_dvd_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/zero-dvd-iff--376e9c3c387b514f40faa6dc.md) | 32 | `result-track:376e9c3c387b514f40faa6dc0d103b2f6c99ceb647670123fa205305109b0dd7` |
| 3 | `theorem` | [dvd_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/dvd-zero--ec6c8500d4e188cf46b89169.md) | 38 | `result-track:ec6c8500d4e188cf46b891693034b23f43b9e2e5ea012e0334446f6521103f34` |
| 4 | `theorem` | [mul_dvd_mul_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/mul-dvd-mul-iff-left--e4742b6eb83611c746aea43a.md) | 45 | `result-track:e4742b6eb83611c746aea43a881e44436a455971ee7a3f06ac58087a71b9f02f` |
| 5 | `theorem` | [mul_dvd_mul_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/mul-dvd-mul-iff-right--5bff393d40e01bde78daf9a8.md) | 51 | `result-track:5bff393d40e01bde78daf9a8808d2ba8573d8e46bb28a81dab4311d917c2d7f4` |
| 6 | `def` | [DvdNotUnit](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/dvdnotunit--fbaf234056966f2ebc4c6afd.md) | 61 | `declaration-track:fbaf234056966f2ebc4c6afdf0efc2725fe7b3220f027a27963c6b5ddf0b29b9` |
| 7 | `theorem` | [dvdNotUnit_of_dvd_of_not_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/dvdnotunit-of-dvd-of-not-dvd--c2b3f7073d3cfca85c9371bb.md) | 64 | `result-track:c2b3f7073d3cfca85c9371bbf722ab596df823f9dbfa7a88075f1d469cebaef4` |
| 8 | `theorem` | [isRelPrime_zero_left](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/isrelprime-zero-left--620961a61f210562604a2885.md) | 75 | `result-track:620961a61f210562604a2885960e81bfe8c5e8ad88eba660e4cbc52a86ba40e2` |
| 9 | `theorem` | [isRelPrime_zero_right](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/isrelprime-zero-right--b3d2e7674e1404595bf9e12c.md) | 78 | `result-track:b3d2e7674e1404595bf9e12cbd982ecaf5dac8324131e23711bdc35f8a7ca52b` |
| 10 | `theorem` | [not_isRelPrime_zero_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/not-isrelprime-zero-zero--34c84f31d665ac8b81184c09.md) | 81 | `result-track:34c84f31d665ac8b81184c094fb374afa1c771c97dc6fef3b47f1c459b0dbfc6` |
| 11 | `theorem` | [IsRelPrime.ne_zero_or_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/isrelprime-ne-zero-or-ne-zero--7155a8067137eeb5816a05bd.md) | 84 | `result-track:7155a8067137eeb5816a05bdb1f7d1e86b4b31ca9fd98a6cdff9e8ed5ff9ff9e` |
| 12 | `theorem` | [isRelPrime_of_no_nonunits_factors](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/isrelprime-of-no-nonunits-factors--3693a6607b9628fc0530085d.md) | 89 | `result-track:3693a6607b9628fc0530085d8dcc7b6bab8e2b7ac2359f8e75dd66f054c5a679` |
| 13 | `theorem` | [dvd_and_not_dvd_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/dvd-and-not-dvd-iff--0b14a7b293cf0cef1bd4b47c.md) | 94 | `result-track:0b14a7b293cf0cef1bd4b47c38c0066d841d220a836e0880b3134108287861ce` |
| 14 | `theorem` | [ne_zero_of_dvd_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/ne-zero-of-dvd-ne-zero--222cc0fa5573d4a1bdf194f7.md) | 113 | `result-track:222cc0fa5573d4a1bdf194f7c7357686db08ecf548810a625d6cffd7ef8ab0fc` |
| 15 | `theorem` | [isPrimal_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/isprimal-zero--e9c8402ea6525b1a88e19f75.md) | 117 | `result-track:e9c8402ea6525b1a88e19f757cef0cc701fe5b80d429a1db6f3368f818a19f29` |
| 16 | `theorem` | [IsPrimal.mul](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/isprimal-mul--8580d9a9a376887be11d03d2.md) | 120 | `result-track:8580d9a9a376887be11d03d25160c0e1524e55fb43988a432d4a72f86500de50` |
| 17 | `theorem` | [dvd_antisymm](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/dvd-antisymm--7d2c3a507f3bd3c92cbf25f7.md) | 138 | `result-track:7d2c3a507f3bd3c92cbf25f75852208b47b7d923605974d8cd4816065e2881b4` |
| 18 | `theorem` | [dvd_antisymm'](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/dvd-antisymm--f0ffc0025352f5ecb44b492f.md) | 143 | `result-track:f0ffc0025352f5ecb44b492f981e77dff201645d4339427c6e9bdc59453df225` |
| 19 | `theorem` | [eq_of_forall_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/eq-of-forall-dvd--256da7e4ef8d548a572a5b9e.md) | 150 | `result-track:256da7e4ef8d548a572a5b9e5e5636f2b8861b8de2a86b16e89f87062d998c3b` |
| 20 | `theorem` | [eq_of_forall_dvd'](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/eq-of-forall-dvd--6575c7bc85174da194d4fd5e.md) | 153 | `result-track:6575c7bc85174da194d4fd5ecbcafcb0b15176910963c3d6bf4a2250c1e43d47` |
| 21 | `lemma` | [pow_dvd_pow_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/pow-dvd-pow-iff--ed2c7c282b96ed54e2c11398.md) | 158 | `result-track:ed2c7c282b96ed54e2c11398c7a831505cee1b3f8d881cf54e260c2188800a96` |
| 22 | `lemma` | [GroupWithZero.dvd_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/declarations/groupwithzero-dvd-iff--a5e15a04479caab4b5c486e6.md) | 178 | `result-track:a5e15a04479caab4b5c486e6e66204762f62532774b3cd825e464fc0c92eed4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
