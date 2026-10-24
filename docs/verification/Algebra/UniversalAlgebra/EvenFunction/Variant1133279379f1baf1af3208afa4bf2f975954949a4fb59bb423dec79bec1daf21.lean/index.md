# Verification target: GRWTSK.Algebra.UniversalAlgebra.EvenFunction.Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb0598d7906837f7aea0559b61a4c07e93747f73",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb0598d7906837f7aea0559b61a4c07e93747f73`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Even](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/even--d1843a91351e7d5b4fec2bbd.md) | 26 | `declaration-track:d1843a91351e7d5b4fec2bbd10adf5d5938df919b702911d88fbb875eb14f9d1` |
| 2 | `def` | [Odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/odd--15769ef66aeca83ce87fc93d.md) | 29 | `declaration-track:15769ef66aeca83ce87fc93d8a1e74a102fb15d488ee09a06c4d063161dddd9a` |
| 3 | `lemma` | [Even.const](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/even-const--4c1f218d9d498c4649d274a0.md) | 32 | `result-track:4c1f218d9d498c4649d274a0d4d12fdccaeaded80cc09421f96dafa7b817bc8d` |
| 4 | `lemma` | [Even.zero](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/even-zero--af830b719b91b0732c8ae74b.md) | 35 | `result-track:af830b719b91b0732c8ae74bffacab733054c01d7ce97ddc42c300a6c9710161` |
| 5 | `lemma` | [Odd.zero](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/odd-zero--91c7cc77780ef503bd3dcfb2.md) | 38 | `result-track:91c7cc77780ef503bd3dcfb2ea19325bf7e5b8814b5c45400e24f5d8c2be23b5` |
| 6 | `lemma` | [Even.left_comp](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/even-left-comp--b77da31a72b1cab8d04e1f27.md) | 45 | `result-track:b77da31a72b1cab8d04e1f271cc4251e07f05eb7350b28d8d5dd029c44c0b16b` |
| 7 | `lemma` | [Even.comp_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/even-comp-odd--c4cbe2e09c64b4176c63faea.md) | 49 | `result-track:c4cbe2e09c64b4176c63faea1446420e16e8fd4f2fba255074ce513077f67c08` |
| 8 | `lemma` | [Odd.comp_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/odd-comp-odd--af564babb866b6d7a59c1b2c.md) | 55 | `result-track:af564babb866b6d7a59c1b2c4092fd3f0c4e5edca64669dae6508f830b07fd6a` |
| 9 | `lemma` | [Even.add](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/even-add--7a11b790a8da374c5db4fda2.md) | 62 | `result-track:7a11b790a8da374c5db4fda25a4ad407da66c71cf753423b697f1284a739c457` |
| 10 | `lemma` | [Odd.add](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/odd-add--c0c6e24a153dfbc7e435a157.md) | 66 | `result-track:c0c6e24a153dfbc7e435a15784e9cce924fcecc5710ce151dfe8105fd2c658d1` |
| 11 | `lemma` | [Even.smul_even](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/even-smul-even--a7d98884ea2cf0cc06e6f52c.md) | 74 | `result-track:a7d98884ea2cf0cc06e6f52c2ead8f5bed5d12e1090a281100ef1b91b7a164b1` |
| 12 | `lemma` | [Even.smul_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/even-smul-odd--9d4729b3620df2634a6bdeb2.md) | 78 | `result-track:9d4729b3620df2634a6bdeb2649e3cd005e0606b02ee9e809e553b2e76393a02` |
| 13 | `lemma` | [Odd.smul_even](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/odd-smul-even--a5a1bd3e7d6c67dfcbc3f026.md) | 83 | `result-track:a5a1bd3e7d6c67dfcbc3f0260fc78a94f6502d51d11b14cbcebd249923f688eb` |
| 14 | `lemma` | [Odd.smul_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/odd-smul-odd--d17b853e0d1fbc23ded12d8f.md) | 88 | `result-track:d17b853e0d1fbc23ded12d8f85f826fc658f24fd0aad414769fb7e7b43fa2a7e` |
| 15 | `lemma` | [Even.const_smul](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/even-const-smul--bd17653e1118de1e4c5372f3.md) | 93 | `result-track:bd17653e1118de1e4c5372f3f62e9c847ab77c85950c46952562db58513e6dee` |
| 16 | `lemma` | [Odd.const_smul](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/odd-const-smul--7ca7a9f2a248afe19c329edc.md) | 97 | `result-track:7ca7a9f2a248afe19c329edc4d2eb202ef5e5303b7e92b232d3162b886d632be` |
| 17 | `lemma` | [Even.mul_even](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/even-mul-even--e0e0ad54442ce92e00095713.md) | 108 | `result-track:e0e0ad54442ce92e00095713f5838b72bc6b6cc5754fba690e52eba879a92f9d` |
| 18 | `lemma` | [Even.mul_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/even-mul-odd--31b3347162b498794426af7d.md) | 112 | `result-track:31b3347162b498794426af7d7d6c3bcb2b9a249c9a43139e2bae1cbf42d2029a` |
| 19 | `lemma` | [Odd.mul_even](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/odd-mul-even--ee55c99b141debd3ace6cdae.md) | 116 | `result-track:ee55c99b141debd3ace6cdaeaf15490b76c538abff2a4e100a202db7b4b6e38b` |
| 20 | `lemma` | [Odd.mul_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/odd-mul-odd--cb514506a2d94c055f90b44e.md) | 120 | `result-track:cb514506a2d94c055f90b44ec4479ae7c523267eb6b613ab831832db93fbaa21` |
| 21 | `lemma` | [zero_of_even_and_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/zero-of-even-and-odd--e909271b46c0f7e05196d607.md) | 135 | `result-track:e909271b46c0f7e05196d6074fb29d345f74e87752d6c8eb4322367092731818` |
| 22 | `lemma` | [Odd.sum_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/odd-sum-eq-zero--e9db458855304a29e5ae6313.md) | 140 | `result-track:e9db458855304a29e5ae6313db6b3346a903a247a0330168a55c60ed02d2a85f` |
| 23 | `lemma` | [Odd.map_zero](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant1133279379f1baf1af3208afa4bf2f975954949a4fb59bb423dec79bec1daf21.lean/declarations/odd-map-zero--bcd23f5661f78329da6e52e8.md) | 145 | `result-track:bcd23f5661f78329da6e52e85e06d4232c6e0044e0697b1cdb021af94fd6958d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
