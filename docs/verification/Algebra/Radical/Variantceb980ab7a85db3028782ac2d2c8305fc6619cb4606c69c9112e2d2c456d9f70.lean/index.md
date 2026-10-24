# Verification target: GRWTSK.Algebra.Radical.Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7f65933a8dfd55a0d070057ce4ab97ea263810a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/index.md) · [Full source](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7f65933a8dfd55a0d070057ce4ab97ea263810a`.

Source path: `GRWTSK/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobson](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson--814a85c231f781cd565738c0.md) | 37 | `declaration-track:814a85c231f781cd565738c09e78386f25775a2e2387bbb87e1ccc514862f3f5` |
| 2 | `theorem` | [le_comap_jacobson](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/le-comap-jacobson--72011ef849353595d51fa719.md) | 42 | `result-track:72011ef849353595d51fa719cbc40dcfb0e4d48c093f23a26824327e3b184ddb` |
| 3 | `theorem` | [map_jacobson_le](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/map-jacobson-le--fb22785f60a1902cc61903a5.md) | 49 | `result-track:fb22785f60a1902cc61903a5220f149b9f00892a0593c8a6cc5a7ac85937b035` |
| 4 | `theorem` | [jacobson_eq_bot_of_injective](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-eq-bot-of-injective--ede9153ac3cf48c6526e0231.md) | 53 | `result-track:ede9153ac3cf48c6526e0231d7271877985708664f323808cdc6d5818abee707` |
| 5 | `theorem` | [map_jacobson_of_ker_le](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/map-jacobson-of-ker-le--2348babfbcfbeb921c232e68.md) | 60 | `result-track:2348babfbcfbeb921c232e685f64d2c119e38f5e30aab98e2befdd17e8a2350d` |
| 6 | `theorem` | [comap_jacobson_of_ker_le](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/comap-jacobson-of-ker-le--7a94bd595e1bf6ae9d0888a5.md) | 68 | `result-track:7a94bd595e1bf6ae9d0888a5fc4f20611a3431486bab256b1558aa2425cc12d6` |
| 7 | `theorem` | [map_jacobson_of_bijective](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/map-jacobson-of-bijective--02f6c6823882f90c41d1904b.md) | 73 | `result-track:02f6c6823882f90c41d1904bf48becaf47ddbf67901c598aced33354d870657c` |
| 8 | `theorem` | [comap_jacobson_of_bijective](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/comap-jacobson-of-bijective--623f18894e0af6e08cc18d03.md) | 77 | `result-track:623f18894e0af6e08cc18d031fa97c644b7ea78f664c5f984e9e282e30fb2b70` |
| 9 | `theorem` | [jacobson_quotient_of_le](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-quotient-of-le--d960de253d79da87846f3205.md) | 81 | `result-track:d960de253d79da87846f32052285944a89117df83e36ee68fc37f812d46956ef` |
| 10 | `theorem` | [jacobson_le_of_eq_bot](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-le-of-eq-bot--b73b55c72a493453e02877f6.md) | 85 | `result-track:b73b55c72a493453e02877f60f4065ac1eb568fe43b39569e690ec87fc95a941` |
| 11 | `theorem` | [jacobson_quotient_jacobson](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-quotient-jacobson--d43ee7e2e7f61aea8fc1549f.md) | 92 | `result-track:d43ee7e2e7f61aea8fc1549fa437be9aa1f176c588db327b7ffd088f6fb21b31` |
| 12 | `theorem` | [jacobson_lt_top](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-lt-top--d82607cbd6169ebbb6a0d281.md) | 95 | `result-track:d82607cbd6169ebbb6a0d281226f487d3872d7b3339334440a1d4b6e7b336386` |
| 13 | `example` | [(anonymous)](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/example--01e7e9dd8c7ea20e8517dd8c.md) | 99 | `declaration-track:01e7e9dd8c7ea20e8517dd8c7d2383dd0c7ae5ef349957e4c3206223977f8b61` |
| 14 | `theorem` | [jacobson_pi_le](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-pi-le--5022a5da705e1a902bff1a8d.md) | 103 | `result-track:5022a5da705e1a902bff1a8dee791ce935d9ae9699688deb87f277524d337f3a` |
| 15 | `theorem` | [jacobson_pi_eq_bot](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-pi-eq-bot--4b6fcc7f7f0fb6ca3882173a.md) | 110 | `result-track:4b6fcc7f7f0fb6ca3882173a5ad434d598e633a80135bde223f9b699125edf28` |
| 16 | `abbrev` | [jacobson](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson--a12981b6c04f1c648c1921ab.md) | 124 | `declaration-track:a12981b6c04f1c648c1921abbeee73da65b33393c806a0ffafc528177ff3ad3c` |
| 17 | `theorem` | [jacobson_eq_sInf_isMaximal](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-eq-sinf-ismaximal--44c7b21e85b593e5a87d106f.md) | 126 | `result-track:44c7b21e85b593e5a87d106f35a592dc4db1b9f9ceb5ed72b32438de5ef87b9c` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/instance--df72c657b8414926850c5074.md) | 129 | `declaration-track:df72c657b8414926850c50744fd7fc5eb940a6118a41533ba1f8b00b3d2363dd` |
| 19 | `theorem` | [le_comap_jacobson](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/le-comap-jacobson--f34825a9269522eb379815f3.md) | 134 | `result-track:f34825a9269522eb379815f33087dd22662fb7fc92cc5a5360e6c1ceed7a2d8d` |
| 20 | `theorem` | [map_jacobson_le](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/map-jacobson-le--346aec779b177261aba88068.md) | 137 | `result-track:346aec779b177261aba88068e39c63dae64f87a2b4874eba30a5606ce8485f80` |
| 21 | `theorem` | [map_jacobson_of_ker_le](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/map-jacobson-of-ker-le--b9946069f70378e0b8ff80c5.md) | 141 | `result-track:b9946069f70378e0b8ff80c520f0c37ad15155c181ee93490b8a4a40954b478d` |
| 22 | `theorem` | [coe_jacobson_quotient](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/coe-jacobson-quotient--3854f7b1357a645d39efc33f.md) | 145 | `result-track:3854f7b1357a645d39efc33fd023de829a19a591ec727731f1560c85029b5e32` |
| 23 | `theorem` | [jacobson_quotient_of_le](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-quotient-of-le--f73f0a97963c42fdddaf1599.md) | 152 | `result-track:f73f0a97963c42fdddaf15997b2b23206a3da47cfe3c5ada955ff2c0c8320132` |
| 24 | `theorem` | [jacobson_le_of_eq_bot](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-le-of-eq-bot--c4f74f2938fb31c365a2d3d4.md) | 157 | `result-track:c4f74f2938fb31c365a2d3d4cb00a108edb51ff175bc15f17daa27a772bfb2b2` |
| 25 | `theorem` | [jacobson_quotient_jacobson](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-quotient-jacobson--4d934abf4c17596ea24e884f.md) | 166 | `result-track:4d934abf4c17596ea24e884f65e287b4b4bdeb03ff7427e3ad19e3b124c76001` |
| 26 | `theorem` | [jacobson_lt_top](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-lt-top--10b72ef0f9930427a8dfecae.md) | 170 | `result-track:10b72ef0f9930427a8dfecae46a8a6f71a86b8caa772cbac44f52ed6dae1a7c6` |
| 27 | `theorem` | [jacobson_smul_top_le](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-smul-top-le--497c156e89bbfb57a0d175ff.md) | 172 | `result-track:497c156e89bbfb57a0d175ff839e47f3ceed5107f572f5d94161b5f02b893dba` |
| 28 | `theorem` | [jacobson_smul_lt_top](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/jacobson-smul-lt-top--c1ec5f1908e62378219706c1.md) | 181 | `result-track:c1ec5f1908e62378219706c14beee847f076e1b08d82986061be99b1e734ec97` |
| 29 | `theorem` | [FG.jacobson_smul_lt](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/fg-jacobson-smul-lt--4da2f263a49c1bf7eb77c730.md) | 186 | `result-track:4da2f263a49c1bf7eb77c730768323851b0fd43cb488d4feb5db3133f2c98958` |
| 30 | `theorem` | [FG.eq_bot_of_le_jacobson_smul](../../../../mathematics/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean/declarations/fg-eq-bot-of-le-jacobson-smul--1e96a7a7c77636a020150c74.md) | 195 | `result-track:1e96a7a7c77636a020150c7424995e7678bd24d9f14dd908e8b6c5fed3785ca4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
