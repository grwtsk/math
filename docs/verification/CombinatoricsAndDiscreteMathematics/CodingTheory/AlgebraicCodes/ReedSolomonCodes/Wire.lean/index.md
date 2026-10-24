# Verification target: GRWTSK.InformationTheory.ReedSolomon.Wire

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6909eabfef71ec98640030d785e0fcf36f555c55",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/ReedSolomon/Wire.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6909eabfef71ec98640030d785e0fcf36f555c55`.

Source path: `GRWTSK/InformationTheory/ReedSolomon/Wire.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/ReedSolomon/Wire.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [packNatLE](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/packnatle--a71a4c805f459aae07f30c08.md) | 13 | `declaration-track:a71a4c805f459aae07f30c085694967c0520df429f58f08bba1e1e124a8d9f4c` |
| 2 | `def` | [unpackNatLE](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/unpacknatle--343b977e1468a7c4ac0b5d83.md) | 17 | `declaration-track:343b977e1468a7c4ac0b5d8398cd1b6359a7a649b959c53ad5386db91eceace7` |
| 3 | `theorem` | [unpackNatLE_packNatLE](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/unpacknatle-packnatle--35e09355163a3d6c8ca905df.md) | 21 | `result-track:35e09355163a3d6c8ca905df16de0c446e80fe480d838a682e8dc6056b1c148b` |
| 4 | `theorem` | [packNatLE_bound](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/packnatle-bound--ed1735c8ee726a7628524083.md) | 31 | `result-track:ed1735c8ee726a76285240832b1f9032b8edb4fa912248255c01e2cb974ea638` |
| 5 | `theorem` | [packNatLE_append_zero](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/packnatle-append-zero--be10a607b3d4927b6734e68b.md) | 39 | `result-track:be10a607b3d4927b6734e68b2cd229ae570348059645d88ab45a1d9818838433` |
| 6 | `def` | [pad](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/pad--091b61f93c6b6a110d93013c.md) | 50 | `declaration-track:091b61f93c6b6a110d93013c7fc502f9c7c127db266092e60c10f3545250384b` |
| 7 | `theorem` | [pad_length](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/pad-length--120924752545730a022b3581.md) | 53 | `result-track:120924752545730a022b35818205cbd97fe74d0dd8caa184434fedf65e23117c` |
| 8 | `theorem` | [take_pad](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/take-pad--9463d4b6e864f6fae16b1fa7.md) | 57 | `result-track:9463d4b6e864f6fae16b1fa73ba01df36046d7bec36f3237a276b8469dde9920` |
| 9 | `theorem` | [pad_nil](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/pad-nil--e3bae0f6d87752cbf2cbeea5.md) | 61 | `result-track:e3bae0f6d87752cbf2cbeea54150b8e2d08c01960cc111d95cf0ed23a5d25d74` |
| 10 | `theorem` | [pad_cons](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/pad-cons--4ab46d3218e3995eed8fe3af.md) | 64 | `result-track:4ab46d3218e3995eed8fe3afbfdbb3f81279ca69b5ee0291d280d706a0ade977` |
| 11 | `theorem` | [pad_add](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/pad-add--eeb5181a0860555c2ae526db.md) | 69 | `result-track:eeb5181a0860555c2ae526dbcc8c46fad2f139d8ad8b7d8ab525ca1da6aa0b13` |
| 12 | `def` | [packWord](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/packword--7f224f15072dac3d26546ee3.md) | 80 | `declaration-track:7f224f15072dac3d26546ee34548ab7cd08710019fa9e4eec3edb781c9daf2ad` |
| 13 | `def` | [unpackWord](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/unpackword--3096cd3da484f1aeb4bbce1a.md) | 83 | `declaration-track:3096cd3da484f1aeb4bbce1a8726559e39df3094d81fdce5ad96254c10c27b9e` |
| 14 | `theorem` | [unpackWord_packWord](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/unpackword-packword--585c06e738712ef1e0b0347d.md) | 86 | `result-track:585c06e738712ef1e0b0347d2659a4697b907cf7642e7a16ff80b56901e37f59` |
| 15 | `theorem` | [unpackWord_packWord_take](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/unpackword-packword-take--071e01315984a92f279a3313.md) | 96 | `result-track:071e01315984a92f279a33139edd782a7fe939abf1b7d2f5a671cc6df3fc9349` |
| 16 | `def` | [packStripe](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/packstripe--d0a3842e81c82f63dccf615b.md) | 101 | `declaration-track:d0a3842e81c82f63dccf615b5dc7ed0b30a23b71aee7853d33cf6388f139df12` |
| 17 | `def` | [unpackStripe](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/unpackstripe--10ba1d627d7d3b61bf6717ec.md) | 105 | `declaration-track:10ba1d627d7d3b61bf6717ec54b2da983ead6ccdd95e55d028c65f8026ff365f` |
| 18 | `theorem` | [packStripe_length](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/packstripe-length--b39ac639f5b4ef0efa43f298.md) | 107 | `result-track:b39ac639f5b4ef0efa43f298d3cb3432ccd82ad594b27240f221f5b90d5142d3` |
| 19 | `theorem` | [unpackStripe_packStripe](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/unpackstripe-packstripe--8492e89caa64720da414bb67.md) | 110 | `result-track:8492e89caa64720da414bb67d6d7f49216e05019f0fab3ce2f6c22577c14f424` |
| 20 | `theorem` | [unpackStripe_packStripe_take](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/unpackstripe-packstripe-take--631725bffa5dc935bea9323c.md) | 120 | `result-track:631725bffa5dc935bea9323c77858788fc31775c54d523b0b4531f1794d26cc0` |
| 21 | `def` | [packStripes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/packstripes--51aeef9be6a95872b60881ba.md) | 125 | `declaration-track:51aeef9be6a95872b60881ba0209c66193cdd07a51f2c1bb47ec0c5a0bb04be8` |
| 22 | `def` | [unpackStripes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/unpackstripes--64631b2a5b9e4e3d6c44409a.md) | 129 | `declaration-track:64631b2a5b9e4e3d6c44409adfd5ab5acc2ca04374b3bc17a12f7b14c859c054` |
| 23 | `theorem` | [packStripes_length](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/packstripes-length--da16c6edf631dfa0505e99d9.md) | 132 | `result-track:da16c6edf631dfa0505e99d94e1c5ec7fb9c67c6c2f7292f2f6c99221807045d` |
| 24 | `theorem` | [packStripes_shape](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/packstripes-shape--1fb2bb7a15e15c275cf39794.md) | 138 | `result-track:1fb2bb7a15e15c275cf39794474b948baeb9523d406e39e135ca0e56bbdbe8c5` |
| 25 | `theorem` | [unpackStripes_packStripes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/unpackstripes-packstripes--00ece2f1222c3d1d92446882.md) | 150 | `result-track:00ece2f1222c3d1d924468829446ab8afd98aa8d5079c306568ba774c842e6a4` |
| 26 | `def` | [stripeCount](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/stripecount--53abc5d6754f6df622bf2e40.md) | 160 | `declaration-track:53abc5d6754f6df622bf2e406a460f782c902e486fa2ca4d8c1b82ec2aaa277c` |
| 27 | `def` | [packPayload](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/packpayload--951849d168db73044fee7ec7.md) | 162 | `declaration-track:951849d168db73044fee7ec7114d941b895dd59f89cac50f270e47b9c0c9cb90` |
| 28 | `def` | [unpackPayload](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/unpackpayload--54e23c352f0477165b550437.md) | 165 | `declaration-track:54e23c352f0477165b55043734159759e5e458d8d72a4c3d40df198f5d2a2339` |
| 29 | `theorem` | [stripeCount_capacity](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/stripecount-capacity--a39cd98091f8197a94531fc0.md) | 168 | `result-track:a39cd98091f8197a94531fc02aa0530e8162243c129a1c205eeccb159d1d2d99` |
| 30 | `theorem` | [unpackPayload_packPayload](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/declarations/unpackpayload-packpayload--225f19e021a5aa72032422e9.md) | 175 | `result-track:225f19e021a5aa72032422e9c19ec010746d95bc5fb64a499ce2f4ce1d155f83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
