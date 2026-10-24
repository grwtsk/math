# Verification target: GRWTSK.Algebra.GaloisField.Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68033f3da6a40fd4478032c5b67a5700e34749f8",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68033f3da6a40fd4478032c5b67a5700e34749f8`.

Source path: `GRWTSK/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.ZMod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [FiniteField.isSplittingField_sub](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/finitefield-issplittingfield-sub--0c6e9b32b5be60a5d6a2d5aa.md) | 46 | `declaration-track:0c6e9b32b5be60a5d6a2d5aafa564d89639c5b7c26ab45e3f51be48b9f587b8b` |
| 2 | `theorem` | [galois_poly_separable](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/galois-poly-separable--ce90ee836dbac5426d029370.md) | 59 | `result-track:ce90ee836dbac5426d029370fb8f115d70e8e1c2fa14e65f6d8fd75ea648c9aa` |
| 3 | `def` | [GaloisField](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/galoisfield--5153a9a83612426e303bfe4d.md) | 71 | `declaration-track:5153a9a83612426e303bfe4d4b18ced2528fa22f0606bafc5a9ab14edc1e8975` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/instance--dc25f921a761db9e8add0261.md) | 75 | `declaration-track:dc25f921a761db9e8add02611063f9ad1fb7bfa6e9c46e86ec0209a11691f691` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/instance--d14ce15006a1c3d7ba646874.md) | 78 | `declaration-track:d14ce15006a1c3d7ba646874af5d8f77de3aacf8dc7bb865e89fc3048108a4ca` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/instance--9a1b6aa23d2dd17724de368f.md) | 84 | `declaration-track:9a1b6aa23d2dd17724de368f5b3cc7d698beb52568ae05aa8c7608f4ce51df8c` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/instance--1fe5d1d2563717be9f2dee95.md) | 86 | `declaration-track:1fe5d1d2563717be9f2dee95b250150f1357898c1ef9ca075854fc01a03517ce` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/instance--3cbeaf24a033074486304aad.md) | 89 | `declaration-track:3cbeaf24a033074486304aad4150843ce97a5dcc0ccfa4c5be624e012e10e772` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/instance--d1c264402d71715144de2e50.md) | 92 | `declaration-track:d1c264402d71715144de2e50a658ea51d970a0cb72005aa52aa0e3a65580d64e` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/instance--4ef67b7127b9723b8e66b975.md) | 95 | `declaration-track:4ef67b7127b9723b8e66b97531d2fc45daf3d49539795896ddc64f0d0b864af4` |
| 11 | `theorem` | [finrank](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/finrank--a8f54ccf9075788452426893.md) | 98 | `result-track:a8f54ccf907578845242689350ad6f10a661d508584bbc2ab45f8f7b37126797` |
| 12 | `theorem` | [card](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/card--4f4f1346a88d73b8abb13a36.md) | 148 | `result-track:4f4f1346a88d73b8abb13a360dfc75ef1738e5a131e86f054211ecd9e2ad1f46` |
| 13 | `theorem` | [splits_zmod_X_pow_sub_X](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/splits-zmod-x-pow-sub-x--ec622dd178011d8374e165bf.md) | 154 | `result-track:ec622dd178011d8374e165bf6ad5ff68e45aafe5dae726db1555a64484652105` |
| 14 | `def` | [equivZmodP](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/equivzmodp--6e60be33ac504f39a57b0ad6.md) | 165 | `declaration-track:6e60be33ac504f39a57b0ad69839f32fa47e8798f8e0048686227c68cf9f50d4` |
| 15 | `theorem` | [_root_.GRWTSK.Algebra.GaloisPolySeparable.Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.FiniteField.splits_X_pow_card_sub_X](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/root-grwtsk-algebra-galoispolyseparable-varianta3bfff74ac408ce3721653619--c6206d0aa5774a2dd0a1e62c.md) | 174 | `result-track:c6206d0aa5774a2dd0a1e62c7ddc93ef91de380ef812c64309b0973eef6f5686` |
| 16 | `theorem` | [_root_.GRWTSK.Algebra.GaloisPolySeparable.Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.FiniteField.isSplittingField_of_card_eq](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/root-grwtsk-algebra-galoispolyseparable-varianta3bfff74ac408ce3721653619--2317ca4be0d7e9d3b992466f.md) | 181 | `result-track:2317ca4be0d7e9d3b992466fde32d25a62162753d856d3ca926aa29b32ef6f20` |
| 17 | `def` | [algEquivGaloisFieldOfFintype](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/algequivgaloisfieldoffintype--0c5e745b43169d21625b68c8.md) | 189 | `declaration-track:0c5e745b43169d21625b68c83d776b9da2eb2d3e2084a3f0b151c19b4c965889` |
| 18 | `theorem` | [_root_.GRWTSK.Algebra.GaloisPolySeparable.Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.FiniteField.splits_X_pow_nat_card_sub_X](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/root-grwtsk-algebra-galoispolyseparable-varianta3bfff74ac408ce3721653619--a5c86bcb81afff86d8499fc6.md) | 199 | `result-track:a5c86bcb81afff86d8499fc6e1fc56337c21b50fc37079b59fced831c45b67ae` |
| 19 | `theorem` | [_root_.GRWTSK.Algebra.GaloisPolySeparable.Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.FiniteField.isSplittingField_of_nat_card_eq](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/root-grwtsk-algebra-galoispolyseparable-varianta3bfff74ac408ce3721653619--3a914fcb6943da4ef72e54b3.md) | 205 | `result-track:3a914fcb6943da4ef72e54b39b575885181cadb6855feff542c16e4a5a4dc473` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/instance--219a9eec40ee769e99af13ec.md) | 212 | `declaration-track:219a9eec40ee769e99af13ec3080f5d433bc1bbd0fba741573d757eefcbcb953` |
| 21 | `def` | [algEquivGaloisField](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/algequivgaloisfield--ea6924df3bb9983806a391c4.md) | 224 | `declaration-track:ea6924df3bb9983806a391c48147f89722bba313ab3c2a30e9715f24c0b0ceb8` |
| 22 | `theorem` | [algebraMap_norm_eq_pow](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/algebramap-norm-eq-pow--921ebb1611ea041c21cb657c.md) | 240 | `result-track:921ebb1611ea041c21cb657ce687f933412ff32d01b50d4234ac617bd46daa98` |
| 23 | `theorem` | [unitsMap_norm_surjective](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/unitsmap-norm-surjective--414d0d15d31463ad4f5191f4.md) | 252 | `result-track:414d0d15d31463ad4f5191f41657b4583a134bbd51eea78868a8f83461f50ab7` |
| 24 | `theorem` | [norm_surjective](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/norm-surjective--aaf735c4702d8a6d4ea23702.md) | 264 | `result-track:aaf735c4702d8a6d4ea2370293f95bfa404b19b1513e5b379b0362be6d0dd69d` |
| 25 | `def` | [algEquivOfCardEq](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/algequivofcardeq--353bf8aceafc4298a3f70dad.md) | 276 | `declaration-track:353bf8aceafc4298a3f70dad6f129379f016e5d42c075aa95e3dbc89aecae882` |
| 26 | `def` | [ringEquivOfCardEq](../../../../mathematics/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/declarations/ringequivofcardeq--8742c3297f0351993958be47.md) | 290 | `declaration-track:8742c3297f0351993958be47c81a98db9e22dc140043c3e502dcf8861a167d89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
