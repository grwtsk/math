# Verification target: GRWTSK.Algebra.Frobenius.Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6f000f8e646860bad85d1a8ca0d9e80d8c2b1a9",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6f000f8e646860bad85d1a8ca0d9e80d8c2b1a9`.

Source path: `GRWTSK/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Invariant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Locus` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AlgHom.IsArithFrobAt](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/alghom-isarithfrobat--ae566b1e6a2d2cfd8fd44ad8.md) | 50 | `declaration-track:ae566b1e6a2d2cfd8fd44ad8d314a621ad2b0bcde27cc2da73ffaac9e9fdf38b` |
| 2 | `lemma` | [mk_apply](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/mk-apply--5554047766eaabf81d1ef3aa.md) | 59 | `result-track:5554047766eaabf81d1ef3aafb884ddb02f2018a72d535cc8353eb007794adab` |
| 3 | `lemma` | [finite_quotient](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/finite-quotient--e2e81824ad043fc6ff7e8594.md) | 63 | `result-track:e2e81824ad043fc6ff7e85945b927c95d2449f3126cbb98408954a9e0086d6de` |
| 4 | `lemma` | [card_pos](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/card-pos--5974c6036f2d3fc9f4ca1cbc.md) | 70 | `result-track:5974c6036f2d3fc9f4ca1cbcb3d52421934dae74a35442f55f5c3f0c992483b4` |
| 5 | `lemma` | [le_comap](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/le-comap--fdf7faf938ca7b5644dbc0e1.md) | 74 | `result-track:fdf7faf938ca7b5644dbc0e1eb3e792ac4a96f6c8f1c8b74136b1cd083f28976` |
| 6 | `def` | [restrict](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/restrict--a5104c973123680d964c8e03.md) | 80 | `declaration-track:a5104c973123680d964c8e03da160912f83e074eb8c6b3794bcd5adf109f2950` |
| 7 | `lemma` | [restrict_apply](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/restrict-apply--a5ba50a093e667fed59ea7b7.md) | 86 | `result-track:a5ba50a093e667fed59ea7b7fa1cd3613a1604947fa70a1ab8795a0ffb8763e8` |
| 8 | `lemma` | [restrict_mk](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/restrict-mk--ad098ac34056c9d96db7fc2d.md) | 91 | `result-track:ad098ac34056c9d96db7fc2d2c24e031c0a051628f5b687fe5bf7fd7ecd2c990` |
| 9 | `lemma` | [restrict_injective](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/restrict-injective--481da0406bcfea92fe7a1410.md) | 93 | `result-track:481da0406bcfea92fe7a14101836e98c2e1c164c0e4a3e93a5c34ff67aca2202` |
| 10 | `lemma` | [comap_eq](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/comap-eq--90aa2f82a64faaf1394e3365.md) | 99 | `result-track:90aa2f82a64faaf1394e336512d1ea8e433e16d9eac0847cb7ef61552231acbb` |
| 11 | `lemma` | [apply_of_pow_eq_one](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/apply-of-pow-eq-one--3cae07235b053680cf7621be.md) | 106 | `result-track:3cae07235b053680cf7621be133c2229108e4878488f5c3e87caef33fe2c9c78` |
| 12 | `def` | [localize](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/localize--11399c52de71e7836f986e70.md) | 130 | `declaration-track:11399c52de71e7836f986e70608400a9babb07ac0885d76c02f5f77df11843e6` |
| 13 | `lemma` | [localize_algebraMap](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/localize-algebramap--65eae96fd9a1442b0b8d9cb1.md) | 137 | `result-track:65eae96fd9a1442b0b8d9cb14bc436a618e9b6ad4b9df6b75f36be1710dfa628` |
| 14 | `lemma` | [isArithFrobAt_localize](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/isarithfrobat-localize--e3c4ac348630e87da656f144.md) | 143 | `result-track:e3c4ac348630e87da656f1447cc97de46e275c9c09b45492ede1604385cb5164` |
| 15 | `lemma` | [eq_of_isUnramifiedAt](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/eq-of-isunramifiedat--701028c305fc9c7d7622181d.md) | 160 | `result-track:701028c305fc9c7d7622181d017dd8fb0b495576a8f5f3556e509f8508ffb62d` |
| 16 | `abbrev` | [IsArithFrobAt](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/isarithfrobat--1136a624e4eec150734d3268.md) | 181 | `declaration-track:1136a624e4eec150734d32686167b3538edeff0ffd2f06d9238a2c60de05dcff` |
| 17 | `lemma` | [mul_inv_mem_inertia](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/mul-inv-mem-inertia--978d254fb1d9347b2e485ebc.md) | 192 | `result-track:978d254fb1d9347b2e485ebcf690903484d38c67e083941e099898a8962ce27d` |
| 18 | `lemma` | [conj](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/conj--3623d659511dbba44cad8958.md) | 197 | `result-track:3623d659511dbba44cad895859913233e0a62e7284729b3098cb0fbeea375d2a` |
| 19 | `lemma` | [exists_of_isInvariant](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/exists-of-isinvariant--6fbb853cce1b7d999ff0f494.md) | 213 | `result-track:6fbb853cce1b7d999ff0f494a9c13f13e7cbdae7bd2e77032566aa0fb68251cb` |
| 20 | `lemma` | [exists_primesOver_isConj](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/exists-primesover-isconj--1c3660a3e02b56fba7cd7c26.md) | 235 | `result-track:1c3660a3e02b56fba7cd7c2664a529584293df5f1c49d1978538e91bd87b05fa` |
| 21 | `def` | [_root_.arithFrobAt](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/root-arithfrobat--bf2e50ddb08d06f9bed940f6.md) | 253 | `declaration-track:bf2e50ddb08d06f9bed940f6531334760539388667918ac226cbaab1505104e2` |
| 22 | `lemma` | [arithFrobAt](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/arithfrobat--bc695141042246e5df39c73b.md) | 257 | `result-track:bc695141042246e5df39c73b100541d20759f6622aa3d70510e69ff17a77637f` |
| 23 | `lemma` | [_root_.isConj_arithFrobAt](../../../../mathematics/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/declarations/root-isconj-arithfrobat--bc3f5f41ace166f64ac7478f.md) | 261 | `result-track:bc3f5f41ace166f64ac7478fd71af75af33417776d4a34c5625c9b1bb4bd1daa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
