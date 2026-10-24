# Verification target: GRWTSK.Algebra.Basic.Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fe875fca7bc93d00c101231a39ddc8f306e9041",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fe875fca7bc93d00c101231a39ddc8f306e9041`.

Source path: `GRWTSK/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Extension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Solvable` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.Construction` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Normal.exists_isSplittingField](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/normal-exists-issplittingfield--6ca769585c65415e8962ec8a.md) | 40 | `result-track:6ca769585c65415e8962ec8a2cb8b406c5118c693121271493f99187722a5a78` |
| 2 | `theorem` | [Normal.of_isSplittingField](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/normal-of-issplittingfield--7490b3d0199f91972efcd7d0.md) | 67 | `result-track:7490b3d0199f91972efcd7d0a71d000e13bb3a7dbff367c8535fcdfb0214a5ac` |
| 3 | `instance` | [Polynomial.SplittingField.instNormal](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/polynomial-splittingfield-instnormal--b9286174b363ed55c5a1c44e.md) | 91 | `declaration-track:b9286174b363ed55c5a1c44e1f24fbce1d1104c47ce320f2a583a5120083cf7d` |
| 4 | `instance` | [normal_iSup](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/normal-isup--f90a35bb8400c18c75defcdf.md) | 99 | `declaration-track:f90a35bb8400c18c75defcdffe453b72f5235d0b3edf78fe1bff0ace5afbe643` |
| 5 | `theorem` | [splits_of_mem_adjoin](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/splits-of-mem-adjoin--f07995a2215a95c239c9e2bd.md) | 122 | `result-track:f07995a2215a95c239c9e2bd05bc62c168f8947b9c83ae12aee4f9894a15acbe` |
| 6 | `instance` | [normal_sup](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/normal-sup--9d1474dec921fe8487c8ce9d.md) | 134 | `declaration-track:9d1474dec921fe8487c8ce9d4ba8d1959755534d22e96854c1511b902e7b28f7` |
| 7 | `instance` | [normal_iInf](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/normal-iinf--193458ed021a0dd6e907c62c.md) | 141 | `declaration-track:193458ed021a0dd6e907c62c201050a59b0d8405abe77be6cea2d83ff120f18b` |
| 8 | `instance` | [normal_inf](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/normal-inf--e0ea49bce5c73e3ba9a6a120.md) | 156 | `declaration-track:e0ea49bce5c73e3ba9a6a1203b2bc2f3735800e5bd621dcd543efa12bd368b80` |
| 9 | `theorem` | [AlgHom.fieldRange_of_normal](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/alghom-fieldrange-of-normal--9453f1ee3324673de95c2d34.md) | 173 | `result-track:9453f1ee3324673de95c2d34cf4a37b50bb768254175b2b9e1e0397da4d22ae8` |
| 10 | `def` | [AlgHom.liftNormal](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/alghom-liftnormal--5586a06b7c54e7b8360c5ebf.md) | 190 | `declaration-track:5586a06b7c54e7b8360c5ebf6db02235cbd095301d353d9c7dfcbbb24edc2792` |
| 11 | `theorem` | [AlgHom.liftNormal_commutes](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/alghom-liftnormal-commutes--98ec2bffed39aa4b175b1bbb.md) | 205 | `result-track:98ec2bffed39aa4b175b1bbbe78241042070ebea7d11cc99a71dffac439398fb` |
| 12 | `theorem` | [AlgHom.restrict_liftNormal](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/alghom-restrict-liftnormal--1845ab7c3bb7b8ec15914bff.md) | 212 | `result-track:1845ab7c3bb7b8ec15914bffaf556cf26fb28745ca58c195a7919365f78a7504` |
| 13 | `def` | [AlgEquiv.liftNormal](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/algequiv-liftnormal--5eaba4c829e0b6a3fa443481.md) | 220 | `declaration-track:5eaba4c829e0b6a3fa4434816c75755af84cccfde0c20aef72ecfcee4fa12573` |
| 14 | `theorem` | [AlgEquiv.liftNormal_commutes](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/algequiv-liftnormal-commutes--bfefb88ec337780f583b0d95.md) | 224 | `result-track:bfefb88ec337780f583b0d9526451a946db7fde01e13dbb1252120844b0869a8` |
| 15 | `theorem` | [AlgEquiv.restrict_liftNormal](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/algequiv-restrict-liftnormal--27e2ec5758216a22ed0653b3.md) | 229 | `result-track:27e2ec5758216a22ed0653b36532670ad47a957d54dc87f0081456cd21b3abff` |
| 16 | `theorem` | [AlgEquiv.restrictNormalHom_surjective](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/algequiv-restrictnormalhom-surjective--43ef195c09ceec00f292e34b.md) | 237 | `result-track:43ef195c09ceec00f292e34bba71ac13cc7857bb8ade8144ba291f1c9cc33d4a` |
| 17 | `theorem` | [Normal.minpoly_eq_iff_mem_orbit](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/normal-minpoly-eq-iff-mem-orbit--4edcc176a4b9fb4ed910bf8b.md) | 242 | `result-track:4edcc176a4b9fb4ed910bf8bbcd441952f079ec266dc91cff325251e1b3e43f3` |
| 18 | `theorem` | [isSolvable_of_isScalarTower](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/issolvable-of-isscalartower--1496b10610c73b16e3191208.md) | 250 | `result-track:1496b10610c73b16e3191208c204244d19d7367dadb922614e793f1707a1f3d7` |
| 19 | `theorem` | [exists_algEquiv_of_root](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/exists-algequiv-of-root--2469ea8c74bcc910bd42b2fe.md) | 273 | `result-track:2469ea8c74bcc910bd42b2fe4badfe21b8885776d700a8879c36bc1bf3b2db04` |
| 20 | `theorem` | [exists_algEquiv_of_root'](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/exists-algequiv-of-root--bb201ed9a9ad842bd2dac071.md) | 283 | `result-track:bb201ed9a9ad842bd2dac0712489eef4195571fd432fe81d74ddd4cbaebe2b05` |
| 21 | `instance` | [Algebra.IsQuadraticExtension.normal](../../../../mathematics/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/declarations/algebra-isquadraticextension-normal--0855664888d1b4f281664778.md) | 294 | `declaration-track:0855664888d1b4f281664778694b021b7fabb7a591689dda178fd7ba348a629f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
