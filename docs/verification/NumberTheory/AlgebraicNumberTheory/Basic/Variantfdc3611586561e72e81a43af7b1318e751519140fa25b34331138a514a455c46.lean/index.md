# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Basic.Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "990d138595bf9dada2ef20323a93d50a16b7974b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `990d138595bf9dada2ef20323a93d50a16b7974b`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.InfinitePlace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Torsion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Rat.RingOfIntegers.isUnit_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/rat-ringofintegers-isunit-iff--426aaadbe3a81935389b1529.md) | 40 | `result-track:426aaadbe3a81935389b152959716f05a1dedfe8e90317cd7d47180f5fcb77e7` |
| 2 | `theorem` | [NumberField.isUnit_iff_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/numberfield-isunit-iff-norm--bf0e095d398cf3cc7ad3dfe7.md) | 53 | `result-track:bf0e095d398cf3cc7ad3dfe7da978867f4cbf95d8b18a0c3dde7b9a90001f8f1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/instance--59305cae791dfb3f24adeac2.md) | 64 | `declaration-track:59305cae791dfb3f24adeac214563ef1a16efa5cd3d9b01d919e6cb0beb66929` |
| 4 | `theorem` | [coe_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/coe-injective--c06ec21891819eeb8cfd7cb7.md) | 67 | `result-track:c06ec21891819eeb8cfd7cb758b1f2bbc092a0d251147b5cf98b7a7a546dd4a3` |
| 5 | `theorem` | [coe_coe](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/coe-coe--5759642b2161b50f9707b8da.md) | 72 | `result-track:5759642b2161b50f9707b8da21145c3dbc9aa9529723f377c5bb07e477496c0d` |
| 6 | `theorem` | [coe_mul](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/coe-mul--6024477d77a5246d3268951c.md) | 74 | `result-track:6024477d77a5246d3268951c2c5ab3eca85e48d1b9a7466520f483316d9b4678` |
| 7 | `theorem` | [coe_pow](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/coe-pow--a1787acd0dc30240a4d6aa8c.md) | 76 | `result-track:a1787acd0dc30240a4d6aa8cdea7e59b4e6ab4d0be60e2a96d123ebf522119ca` |
| 8 | `theorem` | [coe_zpow](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/coe-zpow--65570d02f77e4643c53c564b.md) | 79 | `result-track:65570d02f77e4643c53c564be4dee7e672d312806639618d3453741b781f983f` |
| 9 | `theorem` | [coe_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/coe-one--11922935d551b209e686cab9.md) | 83 | `result-track:11922935d551b209e686cab90109bfc844665f5d6fb7f3c8f5d48e8ee6e6cc5d` |
| 10 | `theorem` | [coe_neg_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/coe-neg-one--dce53d9e541981ea9de80910.md) | 85 | `result-track:dce53d9e541981ea9de80910f90996a9f4d013dd2798e369c574fa187ce694a0` |
| 11 | `theorem` | [coe_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/coe-ne-zero--d6b06117b35cf46c64438340.md) | 87 | `result-track:d6b06117b35cf46c6443834038fdd6d4e2304e78611c297b1d530cc5fdd163a7` |
| 12 | `theorem` | [norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/norm--6a1eab97d381db73c1d6a8e6.md) | 95 | `result-track:6a1eab97d381db73c1d6a8e60525ecc6c7273a7129176eb56bed4c1de19307a9` |
| 13 | `theorem` | [pos_at_place](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/pos-at-place--ca8ddde592e94ccec31dafac.md) | 100 | `result-track:ca8ddde592e94ccec31dafacee55fabd2d4fcd7c40827e28d10fc5a126ce0a0e` |
| 14 | `theorem` | [sum_mult_mul_log](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/sum-mult-mul-log--f7438f07998d1eb0151f4e0c.md) | 104 | `result-track:f7438f07998d1eb0151f4e0c90d9a878047083aba87cf79717714a1dd60329c8` |
| 15 | `def` | [torsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/torsion--8d1cf00c964dec8a1c2359fc.md) | 112 | `declaration-track:8d1cf00c964dec8a1c2359fc6353ff5e8deba88d5ae1bd0f729ce74eec279780` |
| 16 | `theorem` | [mem_torsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/mem-torsion--a1962bd8b5c195838e845391.md) | 114 | `result-track:a1962bd8b5c195838e8453917fe32589857c662594e6b8e6e321ec20cd4e56d5` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/instance--e7cf7585c4e17480a54b1f37.md) | 124 | `declaration-track:e7cf7585c4e17480a54b1f37b4626b02cb795d57eadf56f15f842e301e82a925` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/instance--d2716c1136ec719ec6ef405c.md) | 134 | `declaration-track:d2716c1136ec719ec6ef405cfb26d7b8bdd308e343b71d9488410dbfadbc4bab` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/instance--a8666df9ba6fb2b0c7af807e.md) | 137 | `declaration-track:a8666df9ba6fb2b0c7af807e2ea38b8b63db16b12f4bdcbdebed1a92e2ef7d56` |
| 20 | `def` | [torsionOrder](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/torsionorder--babdaccc5ab8299ede8b0f1f.md) | 140 | `declaration-track:babdaccc5ab8299ede8b0f1f2ca5f2a3f27da875e2459680e04e324d2b25a29c` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/instance--2237dade8e17687e43f8216e.md) | 142 | `declaration-track:2237dade8e17687e43f8216e44b0ee9aed0b57f7673b0dfcb55bc78c1ba128fa` |
| 22 | `theorem` | [torsionOrder_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/torsionorder-ne-zero--f0534446269293344760be34.md) | 145 | `result-track:f0534446269293344760be3407c36c455e5c0322286fff577f4ad73197a89f59` |
| 23 | `theorem` | [torsionOrder_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/torsionorder-pos--03346587f1796dfc329c60d8.md) | 148 | `result-track:03346587f1796dfc329c60d81ff210471a356506ff975e6342d284469abc6a86` |
| 24 | `theorem` | [rootsOfUnity_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/rootsofunity-eq-one--cf372d38340e57cb4debd2fa.md) | 153 | `result-track:cf372d38340e57cb4debd2faa66fc931d7229e43d661465f48d02c4c9c8a4258` |
| 25 | `theorem` | [rootsOfUnity_eq_torsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/rootsofunity-eq-torsion--7db591863fc8a957baccf318.md) | 167 | `result-track:7db591863fc8a957baccf3187dbe339275344b2913ab1ff79d6916af67eca62d` |
| 26 | `theorem` | [even_torsionOrder](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/even-torsionorder--8ba5aff9f97f6799698e0ff0.md) | 176 | `result-track:8ba5aff9f97f6799698e0ff02af9d33d457d02e6356f035361150fb43212ac2b` |
| 27 | `theorem` | [torsion_eq_one_or_neg_one_of_odd_finrank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/torsion-eq-one-or-neg-one-of-odd-finrank--de1fb618973a85f8e891ddeb.md) | 188 | `result-track:de1fb618973a85f8e891ddeb8cfac06b58860609b08172a2cc4531eabf7240de` |
| 28 | `theorem` | [torsionOrder_eq_two_of_odd_finrank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantfdc3611586561e72e81a43af7b1318e751519140fa25b34331138a514a455c46.lean/declarations/torsionorder-eq-two-of-odd-finrank--7f829711eaaca0fa2354e8ea.md) | 201 | `result-track:7f829711eaaca0fa2354e8eabf1ac0b0f3e7f45e55c98cb9d7651c7ea639f6a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
