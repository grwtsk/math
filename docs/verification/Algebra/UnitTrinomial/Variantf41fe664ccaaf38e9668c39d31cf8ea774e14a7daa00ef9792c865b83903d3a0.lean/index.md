# Verification target: GRWTSK.Algebra.UnitTrinomial.Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ad620313a2ee061f89528985279cb87dcf52f78",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/index.md) · [Full source](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ad620313a2ee061f89528985279cb87dcf52f78`.

Source path: `GRWTSK/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Mirror` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trinomial](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/trinomial--083e6d35549d176a47a0eb5b.md) | 48 | `declaration-track:083e6d35549d176a47a0eb5b3010a9016bcbdb35692ed159ae9cbcd7e2493b44` |
| 2 | `theorem` | [trinomial_def](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/trinomial-def--d3798eeb2838131959724a23.md) | 51 | `result-track:d3798eeb2838131959724a232ed5e648728327e5324d56b03d62b762be7c2cb0` |
| 3 | `theorem` | [trinomial_leading_coeff'](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/trinomial-leading-coeff--b3cc34e591008ed5a0911e42.md) | 56 | `result-track:b3cc34e591008ed5a0911e42be9dcae236c57440b362799710191aaa3bbbc97b` |
| 4 | `theorem` | [trinomial_middle_coeff](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/trinomial-middle-coeff--c9b83743f63e9ed64680e93f.md) | 61 | `result-track:c9b83743f63e9ed64680e93fee2b6bc51419eccaf1ac5cf5d7101fe4c8967d30` |
| 5 | `theorem` | [trinomial_trailing_coeff'](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/trinomial-trailing-coeff--79e4a349f4fb23b0844ec6be.md) | 66 | `result-track:79e4a349f4fb23b0844ec6be99667e0204d9a38e652f695ce21e2ef7f0797cd8` |
| 6 | `theorem` | [trinomial_natDegree](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/trinomial-natdegree--9c810165f160b5cce1e967eb.md) | 71 | `result-track:9c810165f160b5cce1e967eb13bde9109385ae49695fa265e811d9a6e355b7d5` |
| 7 | `theorem` | [trinomial_natTrailingDegree](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/trinomial-nattrailingdegree--ada43b70b6608010672d4016.md) | 84 | `result-track:ada43b70b6608010672d4016b6fcbb1931caa0b5360a6c4a1812d396a67866ad` |
| 8 | `theorem` | [trinomial_leadingCoeff](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/trinomial-leadingcoeff--6b83c8300c1995fa43d57b50.md) | 97 | `result-track:6b83c8300c1995fa43d57b5048622ea621f19f2b9d2f136f2662b6aeb4b2ce54` |
| 9 | `theorem` | [trinomial_trailingCoeff](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/trinomial-trailingcoeff--e69bd4122cb24dbda05ac55a.md) | 101 | `result-track:e69bd4122cb24dbda05ac55afc8ffbc9aa2792c8c06de1762cd0bca6c13db44c` |
| 10 | `theorem` | [trinomial_monic](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/trinomial-monic--ba0d277a8827bcc0133aad97.md) | 105 | `result-track:ba0d277a8827bcc0133aad9771a3500df26077ad4926aac5048b6675d6e85020` |
| 11 | `theorem` | [trinomial_mirror](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/trinomial-mirror--ab0f7a7c51c24b9b29234cea.md) | 109 | `result-track:ab0f7a7c51c24b9b29234cea3420fffc49513df0b56c7c49c9362c4b7fe29dac` |
| 12 | `theorem` | [trinomial_support](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/trinomial-support--095697877c777709dfa7857f.md) | 118 | `result-track:095697877c777709dfa7857f0d0b84f2129abd28797efa6aafae83f17ce1c7c1` |
| 13 | `def` | [IsUnitTrinomial](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/isunittrinomial--7a54aa08cdc9e1ab294a887a.md) | 127 | `declaration-track:7a54aa08cdc9e1ab294a887a1419874f981e3ebe668a8d6e8e275d4fd5f00d1b` |
| 14 | `theorem` | [not_isUnit](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/not-isunit--b2a0984e0f27e97fcf54cdeb.md) | 134 | `result-track:b2a0984e0f27e97fcf54cdebb89ef9c364980ef0986bda38583681def9921ba9` |
| 15 | `theorem` | [card_support_eq_three](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/card-support-eq-three--5e7e7c85d3560714d39c4957.md) | 141 | `result-track:5e7e7c85d3560714d39c4957f30e138c7cf0a0f6398bddc2c2cc654532a3f306` |
| 16 | `theorem` | [ne_zero](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/ne-zero--386379ff45d64d2fb5152904.md) | 145 | `result-track:386379ff45d64d2fb5152904a0e8550c107ad5e9afd7528778707d8ebc4f9b2c` |
| 17 | `theorem` | [coeff_isUnit](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/coeff-isunit--6fafbbf65ed9ec876f4abb1e.md) | 149 | `result-track:6fafbbf65ed9ec876f4abb1ec79bd1378e908b1d882c54b52dd205c4b680d864` |
| 18 | `theorem` | [leadingCoeff_isUnit](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/leadingcoeff-isunit--8277f21d174c253323a30346.md) | 159 | `result-track:8277f21d174c253323a30346e6ce9d8fc5ffb54e61cb6983f4f344d5264c0226` |
| 19 | `theorem` | [trailingCoeff_isUnit](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/trailingcoeff-isunit--9fd4663f1099090b79bb817d.md) | 162 | `result-track:9fd4663f1099090b79bb817dcf22ce63f2f150c393e8e38e15a80f2d75838ecc` |
| 20 | `theorem` | [isUnitTrinomial_iff](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/isunittrinomial-iff--3a8974120b1bd8498bfa202d.md) | 167 | `result-track:3a8974120b1bd8498bfa202d07f4c2989baddb1cb7bb5fe550eb812f0b9fc348` |
| 21 | `theorem` | [isUnitTrinomial_iff'](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/isunittrinomial-iff--73db5248611d65532f25598a.md) | 182 | `result-track:73db5248611d65532f25598a7189adc7303b394a898d93924b3c04f7704c06ae` |
| 22 | `theorem` | [isUnitTrinomial_iff''](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/isunittrinomial-iff--6a579b869ccccb56aa3b98f0.md) | 203 | `result-track:6a579b869ccccb56aa3b98f01d611e946b8eea53fc4a05401867bc6b5486e535` |
| 23 | `theorem` | [irreducible_aux1](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/irreducible-aux1--950e575b027d5a3dc5299656.md) | 209 | `result-track:950e575b027d5a3dc52996564cb6fd720902709fcad2f14c36bcf95ef383febf` |
| 24 | `theorem` | [irreducible_aux2](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/irreducible-aux2--bc095be9cbbdf7e0947408fc.md) | 243 | `result-track:bc095be9cbbdf7e0947408fce99aee210ab245ac15446b9cb1baf25bb3b16ff6` |
| 25 | `theorem` | [irreducible_aux3](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/irreducible-aux3--557f64dbe78da0fb7ec4d02d.md) | 261 | `result-track:557f64dbe78da0fb7ec4d02dcad888ba7b692761aac53dd4590b89940b7c12c2` |
| 26 | `theorem` | [irreducible_of_coprime](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/irreducible-of-coprime--44cc2caf9d3cb1a6b0bfad70.md) | 289 | `result-track:44cc2caf9d3cb1a6b0bfad70d6e6e2c27a091068124bd90a7f539f846427d037` |
| 27 | `theorem` | [irreducible_of_isCoprime](../../../../mathematics/Algebra/UnitTrinomial/Variantf41fe664ccaaf38e9668c39d31cf8ea774e14a7daa00ef9792c865b83903d3a0.lean/declarations/irreducible-of-iscoprime--f1b8af2c1fe4794dfecf63d1.md) | 322 | `result-track:f1b8af2c1fe4794dfecf63d103b31ec3453aecc50674559383db31b5ffff2c02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
