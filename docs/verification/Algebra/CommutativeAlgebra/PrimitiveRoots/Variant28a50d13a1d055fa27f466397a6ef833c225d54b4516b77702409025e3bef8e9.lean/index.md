# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PrimitiveRoots.Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1560a04efc6897413f45a9477aecffa5cc80e3d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1560a04efc6897413f45a9477aecffa5cc80e3d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PNat.Prime` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.IsPrimePow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Cyclotomic.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.PowerBasis` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Eval` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Expand` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/macro-rules--1cbbc021891924288ba7b083.md) | 74 | `declaration-track:1cbbc021891924288ba7b083c5c5e2ab5233c79fe43bd7add39bc0202731128e` |
| 2 | `def` | [zeta](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/zeta--5d4f0bc9e0610b8e392024cc.md) | 83 | `declaration-track:5d4f0bc9e0610b8e392024cc69c882d7f3900c43f29b4690c0cce30d7a43023a` |
| 3 | `theorem` | [zeta_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/zeta-spec--f9ca589f94212dedf7213b23.md) | 89 | `result-track:f9ca589f94212dedf7213b23b213efd2f0c9e51587d8771baafa64c13d1c100b` |
| 4 | `theorem` | [aeval_zeta](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/aeval-zeta--671a2407ef432eb9329d6ab0.md) | 93 | `result-track:671a2407ef432eb9329d6ab07554c48fbbfbd56cb5f2736f6964d2b52082e32f` |
| 5 | `theorem` | [zeta_isRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/zeta-isroot--bfbd5a25bf67f04b53df997a.md) | 99 | `result-track:bfbd5a25bf67f04b53df997a39a54c2543ad9d030d95b33f3ba670fd48bbfb49` |
| 6 | `theorem` | [zeta_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/zeta-pow--28b7973474d0f33329d85ba1.md) | 104 | `result-track:28b7973474d0f33329d85ba1f92674b8573d667ace7c66376fe18ddf3b6983d1` |
| 7 | `def` | [powerBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/powerbasis--02badcb8166543ffda8aad14.md) | 123 | `declaration-track:02badcb8166543ffda8aad14abfd5da9c92bd0fe404a0d7c7747396542172c0f` |
| 8 | `theorem` | [powerBasis_gen_mem_adjoin_zeta_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/powerbasis-gen-mem-adjoin-zeta-sub-one--8a12dd36be5b2b2211a55b20.md) | 129 | `result-track:8a12dd36be5b2b2211a55b20b537f26ee804b8f86df18dfa0fd59b5591e5e39f` |
| 9 | `def` | [subOnePowerBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/subonepowerbasis--1d99954c86eecd478b2c380b.md) | 137 | `declaration-track:1d99954c86eecd478b2c380b9d528e2cdb8e38a9d98903b2d944bd63f5867596` |
| 10 | `def` | [embeddingsEquivPrimitiveRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/embeddingsequivprimitiveroots--8fd749d6bb96ac30141df8f0.md) | 147 | `declaration-track:8fd749d6bb96ac30141df8f09c23826a8a38b0350d94754d291fac19634d8b76` |
| 11 | `theorem` | [embeddingsEquivPrimitiveRoots_apply_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/embeddingsequivprimitiveroots-apply-coe--065586aab150a4ea5d6cfa45.md) | 172 | `result-track:065586aab150a4ea5d6cfa45873f5c9102f6b8f0a579f886a46de49bfa06dd13` |
| 12 | `theorem` | [finrank](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/finrank--3750f7d4ed9bebb4065148de.md) | 186 | `result-track:3750f7d4ed9bebb4065148ded85867b7acb62050f1d0aa0f9acf5d97ba9e36a9` |
| 13 | `theorem` | [norm_eq_neg_one_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/norm-eq-neg-one-pow--bd9a162600feaafb4f298132.md) | 207 | `result-track:bd9a162600feaafb4f29813291ae848a341540da254b5c853c8ab6c379f4c2c2` |
| 14 | `theorem` | [norm_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/norm-eq-one--76c9a066ed74d26087cf6f2e.md) | 214 | `result-track:76c9a066ed74d26087cf6f2eae570a76e5a8663c7ce172da669cd1a292b283ea` |
| 15 | `theorem` | [norm_eq_one_of_linearly_ordered](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/norm-eq-one-of-linearly-ordered--1df4f32ceccd6af3ab3c6975.md) | 232 | `result-track:1df4f32ceccd6af3ab3c6975e576a32987505f8b6bc79560d80025308f06761e` |
| 16 | `theorem` | [norm_of_cyclotomic_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/norm-of-cyclotomic-irreducible--a0cc2c8443c3a2a276614ca4.md) | 239 | `result-track:a0cc2c8443c3a2a276614ca48281251d23f8c1a324f8e511e67a75870bd6b8e5` |
| 17 | `theorem` | [sub_one_norm_eq_eval_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/sub-one-norm-eq-eval-cyclotomic--f4b76bcbdf60a3d186d445ee.md) | 258 | `result-track:f4b76bcbdf60a3d186d445ee74a29f37523c8ec5a8cc1b570dfea14f1292a0f2` |
| 18 | `theorem` | [sub_one_norm_isPrimePow](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/sub-one-norm-isprimepow--a416574212e3a94a03e09784.md) | 286 | `result-track:a416574212e3a94a03e09784a77ea5ba1032e759050ae773d7bd6e40f7165bc9` |
| 19 | `theorem` | [minpoly_sub_one_eq_cyclotomic_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/minpoly-sub-one-eq-cyclotomic-comp--ac9fec6dd137ea35968f42de.md) | 305 | `result-track:ac9fec6dd137ea35968f42def07e43c94ca19ee2721d3265e65b4454ecb88ca7` |
| 20 | `theorem` | [pow_sub_one_norm_prime_pow_ne_two](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/pow-sub-one-norm-prime-pow-ne-two--5fe27b978b4b989a95f12e46.md) | 321 | `result-track:5fe27b978b4b989a95f12e4634e69c4c020cbbbef423f259bee75b66d722fba2` |
| 21 | `theorem` | [pow_sub_one_norm_prime_ne_two](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/pow-sub-one-norm-prime-ne-two--ac5dab882e5c748b92c35aa8.md) | 388 | `result-track:ac5dab882e5c748b92c35aa8477741b214150e164567fe87efd9735f2a1eec7e` |
| 22 | `theorem` | [sub_one_norm_prime_ne_two](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/sub-one-norm-prime-ne-two--9bdaa6cd264bcaa61e4a517e.md) | 404 | `result-track:9bdaa6cd264bcaa61e4a517e768e68e3159ad353eb79a56a3e22889fc71bbab4` |
| 23 | `theorem` | [sub_one_norm_prime](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/sub-one-norm-prime--5589e0c30b656c74f1814fdb.md) | 412 | `result-track:5589e0c30b656c74f1814fdb7a47955a012a60a783bcd0849358da6c31fd750a` |
| 24 | `theorem` | [pow_sub_one_norm_two](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/pow-sub-one-norm-two--35b66492055c05082776a5ae.md) | 424 | `result-track:35b66492055c05082776a5ae67f0e19d64f5a666a457f30a3606fe2a22c06570` |
| 25 | `theorem` | [sub_one_norm_two](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/sub-one-norm-two--3b80956ce6440b42f4f1a851.md) | 444 | `result-track:3b80956ce6440b42f4f1a8513a66c4b43991121e1cf8e0a6602c4af7b52e2f35` |
| 26 | `theorem` | [pow_sub_one_norm_prime_pow_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/pow-sub-one-norm-prime-pow-of-ne-zero--d413d42e165515b548e02299.md) | 462 | `result-track:d413d42e165515b548e0229934d7307bba0260d24b262555a65211a9cf4c6855` |
| 27 | `theorem` | [norm_zeta_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/norm-zeta-eq-one--3aa1fdbb5df562e91c8d953e.md) | 500 | `result-track:3aa1fdbb5df562e91c8d953e2a26b69e78d4563ab5f5b645f04a60a2e6b1354c` |
| 28 | `theorem` | [isPrimePow_norm_zeta_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/isprimepow-norm-zeta-sub-one--515505be0c5c2fe8012fd080.md) | 507 | `result-track:515505be0c5c2fe8012fd080964eb237c5931fb16b4888dfbc87cbfb5d0829a0` |
| 29 | `theorem` | [prime_ne_two_pow_norm_zeta_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/prime-ne-two-pow-norm-zeta-pow-sub-one--8b62a3db38d76870798d51a7.md) | 516 | `result-track:8b62a3db38d76870798d51a70037ed06c90b6ee12683d14a50dc448cbb2c041f` |
| 30 | `theorem` | [prime_ne_two_pow_norm_zeta_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/prime-ne-two-pow-norm-zeta-sub-one--239bc2a1b23bd1b4039f6224.md) | 526 | `result-track:239bc2a1b23bd1b4039f6224fc985e804559cc6c3053323c1d47438643742c80` |
| 31 | `theorem` | [prime_ne_two_norm_zeta_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/prime-ne-two-norm-zeta-sub-one--53dd6ba646f81c0bc0100935.md) | 535 | `result-track:53dd6ba646f81c0bc010093589211cf27c07addf74d62272d91bd11a3e67ac72` |
| 32 | `theorem` | [two_pow_norm_zeta_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/declarations/two-pow-norm-zeta-sub-one--7df45bded01d26ae41904f65.md) | 543 | `result-track:7df45bded01d26ae41904f65dd7d840cfaf7ef45c99c552ac6a8de2d293bdc19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
