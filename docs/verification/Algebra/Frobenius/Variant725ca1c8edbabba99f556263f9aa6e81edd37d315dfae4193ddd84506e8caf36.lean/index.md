# Verification target: GRWTSK.Algebra.Frobenius.Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bb04111113b37a40f991b981a834305d3e1e25f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/index.md) · [Full source](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bb04111113b37a40f991b981a834305d3e1e25f`.

Source path: `GRWTSK/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Invariant.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Locus` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AlgHom.IsArithFrobAt](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/alghom-isarithfrobat--2bb61be20d7c687f659931cc.md) | 58 | `declaration-track:2bb61be20d7c687f659931ccfccdb3a0e46d6935223dc0a8d41aa30ae9af48ec` |
| 2 | `lemma` | [mk_apply](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/mk-apply--bd5e754c85da5106bf8fd54f.md) | 67 | `result-track:bd5e754c85da5106bf8fd54fe9a8a0f9ae39a41914f0f12cbf811d0e060cd59f` |
| 3 | `lemma` | [finite_quotient](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/finite-quotient--8763b25b1c46273178d96c07.md) | 71 | `result-track:8763b25b1c46273178d96c07850dc58fd66a1cc305e22fb02748df986004630c` |
| 4 | `lemma` | [card_pos](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/card-pos--20390516832fd6a8616d1fa0.md) | 78 | `result-track:20390516832fd6a8616d1fa0c36ef218dcbc07c77afc51bbae7a72faba246763` |
| 5 | `lemma` | [le_comap](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/le-comap--cd81ce0dc533a6899f4aeacf.md) | 82 | `result-track:cd81ce0dc533a6899f4aeacfae6cefa80af8357021d34c6f1de070a67fb59a93` |
| 6 | `def` | [restrict](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/restrict--8759e4a5ebdf888ad14aefe2.md) | 88 | `declaration-track:8759e4a5ebdf888ad14aefe2c84fca2158b782dade9e359a103d456cfb82fca6` |
| 7 | `lemma` | [restrict_apply](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/restrict-apply--ebd976c43d97bab52e07395a.md) | 94 | `result-track:ebd976c43d97bab52e07395a2188ba20c23716cda57a1e29807f969b68db485d` |
| 8 | `lemma` | [restrict_mk](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/restrict-mk--8d74cc5b054c3a5d01c938a6.md) | 99 | `result-track:8d74cc5b054c3a5d01c938a69ade8ed2796ddc86af73c85c9e2c234b0115516d` |
| 9 | `lemma` | [restrict_injective](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/restrict-injective--132368c3238caf43fd688ff5.md) | 101 | `result-track:132368c3238caf43fd688ff557f984a6fa8cfb03191ffdfdd608d6ce264a387a` |
| 10 | `lemma` | [comap_eq](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/comap-eq--2686dcfeb51fcab62a3c621c.md) | 107 | `result-track:2686dcfeb51fcab62a3c621cf2d972b13e1ae2bd13cbae33bd58386cb39f4941` |
| 11 | `lemma` | [apply_of_pow_eq_one](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/apply-of-pow-eq-one--baff9a603e2873189b568720.md) | 114 | `result-track:baff9a603e2873189b568720db90ac1bdc1694ab6ef0b006c022c4fe85ba50ef` |
| 12 | `def` | [localize](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/localize--cb80c0c53587bc93acdf9461.md) | 138 | `declaration-track:cb80c0c53587bc93acdf94614831f630070f2fa6c5c9f32a3908302fc0b1026f` |
| 13 | `lemma` | [localize_algebraMap](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/localize-algebramap--d5fa2ca7d931d360dfb658f3.md) | 145 | `result-track:d5fa2ca7d931d360dfb658f39f157832dc796a3e2fddc3b21f5cda32431df86d` |
| 14 | `lemma` | [isArithFrobAt_localize](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/isarithfrobat-localize--ca19e37968ae89528d0bc5e2.md) | 151 | `result-track:ca19e37968ae89528d0bc5e204a9e0abbae4304c47907a8cb428b97bb1f7a5cd` |
| 15 | `lemma` | [eq_of_isUnramifiedAt](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/eq-of-isunramifiedat--f981dfa2cfb6cb55624bcff3.md) | 168 | `result-track:f981dfa2cfb6cb55624bcff3c5146838b704d28db8ec17d9c351b3fbef67b50b` |
| 16 | `abbrev` | [IsArithFrobAt](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/isarithfrobat--d8542836ca511dc93d60c749.md) | 189 | `declaration-track:d8542836ca511dc93d60c74970dc1433580289acbc23e1a13c90e5422552e1ce` |
| 17 | `lemma` | [mul_inv_mem_inertia](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/mul-inv-mem-inertia--ad51372777b734953168cb28.md) | 200 | `result-track:ad51372777b734953168cb283c93d1c168ef837913aa48e908d25eb03fc8713c` |
| 18 | `lemma` | [conj](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/conj--03a4b5e1042c23a4cea056a7.md) | 205 | `result-track:03a4b5e1042c23a4cea056a7c9b520d9e9b044c60fbe305c54bd510939512b6c` |
| 19 | `lemma` | [exists_of_isInvariant](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/exists-of-isinvariant--5eb7d2d0636815632c8f392f.md) | 221 | `result-track:5eb7d2d0636815632c8f392fd1f7003faee10141c36b4536912f1ba813801bbb` |
| 20 | `lemma` | [exists_primesOver_isConj](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/exists-primesover-isconj--8a31f5182d7ff0013c2e6a78.md) | 243 | `result-track:8a31f5182d7ff0013c2e6a788bea5720afc61debf722736ba13237ba02f2bcf9` |
| 21 | `def` | [_root_.GRWTSK.Algebra.AlgHomIsArithFrobAt.Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.arithFrobAt](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/root-grwtsk-algebra-alghomisarithfrobat-variant522663163f9ffaedbeb09cc3d--1846e27ae33ebf6e150d2285.md) | 261 | `declaration-track:1846e27ae33ebf6e150d2285fd4a7dd915b9d72b9b8cb2b8450ff3a4dbacf5d2` |
| 22 | `lemma` | [arithFrobAt](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/arithfrobat--05fa2f77d58413b20aa22b80.md) | 265 | `result-track:05fa2f77d58413b20aa22b80a7ce52aa59e3ed13b469bd596335ee53fd547c69` |
| 23 | `lemma` | [_root_.GRWTSK.Algebra.AlgHomIsArithFrobAt.Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.isConj_arithFrobAt](../../../../mathematics/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/declarations/root-grwtsk-algebra-alghomisarithfrobat-variant522663163f9ffaedbeb09cc3d--10aae1814de7b7023078d387.md) | 269 | `result-track:10aae1814de7b7023078d387b0c0ec2992d906531f1e995da78316e84f3ba788` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
