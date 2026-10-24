# Verification target: GRWTSK.Algebra.CommutativeAlgebra.StructurePolynomial.Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b8a6c9ab00fe89bee2fc93a17fb24dce838c7b3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b8a6c9ab00fe89bee2fc93a17fb24dce838c7b3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Polynomial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.WittPolynomial` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wittStructureRat](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/wittstructurerat--3c12114caea6b4650c521712.md) | 143 | `declaration-track:3c12114caea6b4650c521712bea6f6bc6041d7c2c2b9efd1f4d112bdb2d96fb3` |
| 2 | `theorem` | [wittStructureRat_prop](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/wittstructurerat-prop--9d8ee3bfcb491b9f234660b8.md) | 146 | `result-track:9d8ee3bfcb491b9f234660b8dd613c80842b5532b52b30d7db423c0e58e3734f` |
| 3 | `theorem` | [wittStructureRat_existsUnique](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/wittstructurerat-existsunique--5d3ad9e3f87ecec71fb26cd5.md) | 156 | `result-track:5d3ad9e3f87ecec71fb26cd5157ff4278fe1076769bc50e0cf6a306defb0dd4c` |
| 4 | `theorem` | [wittStructureRat_rec_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/wittstructurerat-rec-aux--f80e53c2b42dadfe05836ecd.md) | 168 | `result-track:f80e53c2b42dadfe05836ecd3cf4418eca51e7357378cb46eb405588ad1f797a` |
| 5 | `theorem` | [wittStructureRat_rec](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/wittstructurerat-rec--29f04a1439cb56778ab7bed1.md) | 182 | `result-track:29f04a1439cb56778ab7bed1cf455cc6c95a4c324e311631b8b68539c439b996` |
| 6 | `def` | [wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/wittstructureint--c5b49d0b01c3e3a6be1cd8f4.md) | 205 | `declaration-track:c5b49d0b01c3e3a6be1cd8f49bdc2a24b6b880f8b2f6799c3e06ef828439233e` |
| 7 | `theorem` | [bind₁_rename_expand_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/bind-rename-expand-wittpolynomial--834f773f71dff253493f2536.md) | 210 | `result-track:834f773f71dff253493f25366960c68c845da99c1eda5088e6b01db62e2910c9` |
| 8 | `theorem` | [C_p_pow_dvd_bind₁_rename_wittPolynomial_sub_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/c-p-pow-dvd-bind-rename-wittpolynomial-sub-sum--cb40edaf9ac9b11d6c2855fa.md) | 229 | `result-track:cb40edaf9ac9b11d6c2855fa4bcf88c93324413a158ef6c47b0bc7c50f224b2a` |
| 9 | `theorem` | [map_wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/map-wittstructureint--d0333d4b3e8a61e78d21eeb1.md) | 272 | `result-track:d0333d4b3e8a61e78d21eeb1777b6d64af15b31f731e71c070954db73330cbce` |
| 10 | `theorem` | [wittStructureInt_prop](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/wittstructureint-prop--ebd4da98c1bac45eddc4be37.md) | 298 | `result-track:ebd4da98c1bac45eddc4be3752ab91e08028a6722b68bb9b6d0b459d533bbc30` |
| 11 | `theorem` | [eq_wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/eq-wittstructureint--df57737214e96484c0ed46a0.md) | 306 | `result-track:df57737214e96484c0ed46a06ddc222567460b7c7f0d2b378c0e388ef1bce85c` |
| 12 | `theorem` | [wittStructureInt_existsUnique](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/wittstructureint-existsunique--3fb066504491f980a0379f3e.md) | 323 | `result-track:3fb066504491f980a0379f3e3303d0591d7354e5d8cbe0c859503bbadc731cf9` |
| 13 | `theorem` | [witt_structure_prop](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/witt-structure-prop--1573e830d26d1741431002e3.md) | 329 | `result-track:1573e830d26d1741431002e3133a2313ab83315f30759968ebd6215c1ffbe5f5` |
| 14 | `theorem` | [wittStructureInt_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/wittstructureint-rename--b3d3c7a53cbbb43a1f01ec60.md) | 338 | `result-track:b3d3c7a53cbbb43a1f01ec60f114b90369c015e9948880bc26706d0a2fe1b1cd` |
| 15 | `theorem` | [constantCoeff_wittStructureRat_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/constantcoeff-wittstructurerat-zero--4e2d9663d3a1b5c8ee244a2c.md) | 346 | `result-track:4e2d9663d3a1b5c8ee244a2ce7f12242f30bb8b15cc114fe67ceab209bceabd2` |
| 16 | `theorem` | [constantCoeff_wittStructureRat](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/constantcoeff-wittstructurerat--422785895052f9a76c3869d8.md) | 352 | `result-track:422785895052f9a76c3869d8d3655be55f89674007bf4c5242f459a77db3d423` |
| 17 | `theorem` | [constantCoeff_wittStructureInt_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/constantcoeff-wittstructureint-zero--6a9cda74ccef12ddc691cd10.md) | 359 | `result-track:6a9cda74ccef12ddc691cd102db7c5871134bec928755adbd03ed34642658d51` |
| 18 | `theorem` | [constantCoeff_wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/constantcoeff-wittstructureint--ddc40d7bffc4da886889bbde.md) | 366 | `result-track:ddc40d7bffc4da886889bbdeaf2580c24b3dbe82cf3e8c2dc1731254f7b3b1fe` |
| 19 | `theorem` | [wittStructureRat_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/wittstructurerat-vars--2b8265554b53051cb7b25f73.md) | 377 | `result-track:2b8265554b53051cb7b25f731da6e2dab7ef22e9c1d791646de294715c614477` |
| 20 | `theorem` | [wittStructureInt_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantd3648cf861a2346f7ca95d42dbb520976df19710acef6e76d994f422bdba0d06.lean/declarations/wittstructureint-vars--102231b0c48de1ba0e4c1a28.md) | 392 | `result-track:102231b0c48de1ba0e4c1a28869e27bd2d650075ed38c70fb0808dcf2c02264d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
