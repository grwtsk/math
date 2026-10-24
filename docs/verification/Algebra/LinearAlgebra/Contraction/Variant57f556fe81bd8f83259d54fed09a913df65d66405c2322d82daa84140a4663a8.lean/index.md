# Verification target: GRWTSK.Algebra.LinearAlgebra.Contraction.Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15afac4a4f6de0a8235c962cb081a1c9357110f8",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15afac4a4f6de0a8235c962cb081a1c9357110f8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Fold` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.ExteriorAlgebra.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [contractLeftAux](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractleftaux--d3a77a6911600f8b1c13905e.md) | 59 | `declaration-track:d3a77a6911600f8b1c13905e33812a8c16b562fa77df939454f3603c8bd33873` |
| 2 | `theorem` | [contractLeftAux_contractLeftAux](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractleftaux-contractleftaux--043f16b7a69087f379555275.md) | 65 | `result-track:043f16b7a69087f379555275a76d41e43591674e68ab5579bbccdc0a623d7197` |
| 3 | `def` | [contractLeft](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractleft--f1426146e9470676b304463c.md) | 78 | `declaration-track:f1426146e9470676b304463c670c7ccf0bded941492a79f8018c9e4118ad3318` |
| 4 | `def` | [contractRight](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractright--7a9e1689eebf6f5ad3ebaa3c.md) | 107 | `declaration-track:7a9e1689eebf6f5ad3ebaa3c69cbc262c84a2a41826fd287a48837b1ac1b1f17` |
| 5 | `theorem` | [contractRight_eq](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractright-eq--b9560938cd67b05fa042ada3.md) | 110 | `result-track:b9560938cd67b05fa042ada3fa8d7e1f3cde2263e577ce3e0f7c56d4bf2029b4` |
| 6 | `theorem` | [contractLeft_ι_mul](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractleft-mul--729f67142fa3c5000122ac75.md) | 119 | `result-track:729f67142fa3c5000122ac756aa52ad23991936a34cb63a364f841880ca11594` |
| 7 | `theorem` | [contractRight_mul_ι](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractright-mul--b8ebf890c4a0576050ea44b1.md) | 126 | `result-track:b8ebf890c4a0576050ea44b1745b56adbfa35596d55d75c8e236a639aa4c6868` |
| 8 | `theorem` | [contractLeft_algebraMap_mul](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractleft-algebramap-mul--25c4a24fe32ee7932313f68d.md) | 131 | `result-track:25c4a24fe32ee7932313f68d6f85e742955657263d10b3c529d2a1731d783568` |
| 9 | `theorem` | [contractLeft_mul_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractleft-mul-algebramap--fecfb542414187c56dfa6f15.md) | 135 | `result-track:fecfb542414187c56dfa6f1548916c6b56e9f37cd98c03d776b5f1fe0fd717b0` |
| 10 | `theorem` | [contractRight_algebraMap_mul](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractright-algebramap-mul--95b629fcfa17ee66d18d1886.md) | 139 | `result-track:95b629fcfa17ee66d18d1886af8eece2574017aa36c083d5f50b71b5b42ff82f` |
| 11 | `theorem` | [contractRight_mul_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractright-mul-algebramap--337fc83cd2a12f2600fe8b5f.md) | 143 | `result-track:337fc83cd2a12f2600fe8b5f4009bf2272d09159d415bcc240827fffe778affa` |
| 12 | `theorem` | [contractLeft_ι](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractleft--4673b99918ad144999f6ecee.md) | 150 | `result-track:4673b99918ad144999f6ecee1456f21f666689c8ddd086f4a7d5813914ff0bca` |
| 13 | `theorem` | [contractRight_ι](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractright--b03e1f2a66173332820704a6.md) | 158 | `result-track:b03e1f2a66173332820704a60d192be52fc2bd665829903d276e4211ed6bb04d` |
| 14 | `theorem` | [contractLeft_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractleft-algebramap--1926fed288f6030e47c462b9.md) | 162 | `result-track:1926fed288f6030e47c462b9f17bf3853fac79f0da8250f2bf261d121b0b628b` |
| 15 | `theorem` | [contractRight_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractright-algebramap--2aca98dcd5c88d88b764fcc4.md) | 168 | `result-track:2aca98dcd5c88d88b764fcc45280229afdecfe9d1635711259f300b9547c0f82` |
| 16 | `theorem` | [contractLeft_one](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractleft-one--5bf866d24dada3d7a154f11a.md) | 172 | `result-track:5bf866d24dada3d7a154f11a207421e9e1cfd993c09b2d9d50efcb4317dbfb0a` |
| 17 | `theorem` | [contractRight_one](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractright-one--b0040fcba56bc2069ebd5e74.md) | 176 | `result-track:b0040fcba56bc2069ebd5e74adccb45ed6a6f3f67f8a6c43d34fa941c5d4249a` |
| 18 | `theorem` | [contractLeft_contractLeft](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractleft-contractleft--36251e9bea5a97f39c831c23.md) | 182 | `result-track:36251e9bea5a97f39c831c23bcab06b296d9e500ed73b1f6b63fedef2955f4e3` |
| 19 | `theorem` | [contractRight_contractRight](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractright-contractright--1294d97c61306bd66c41730b.md) | 191 | `result-track:1294d97c61306bd66c41730ba6c178b3143b5f598fbd823dbe7f0fca94f6d4c7` |
| 20 | `theorem` | [contractLeft_comm](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractleft-comm--a1546165a8522f92fdf34b6a.md) | 195 | `result-track:a1546165a8522f92fdf34b6af9a790f2494e27d4896d3488c54932c4828668ba` |
| 21 | `theorem` | [contractRight_comm](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/contractright-comm--3886db71b8032c6f2af68956.md) | 204 | `result-track:3886db71b8032c6f2af68956c02500b3fb7315a7a9104a354f95f16b6cae9dcc` |
| 22 | `def` | [changeFormAux](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeformaux--38d8095dc16c3c6162cc6065.md) | 219 | `declaration-track:38d8095dc16c3c6162cc6065d7b29ca0f92dcd6c5d3ef26a2452f10e64dad441` |
| 23 | `theorem` | [changeFormAux_changeFormAux](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeformaux-changeformaux--2af664049e64a78faabdc2fb.md) | 223 | `result-track:2af664049e64a78faabdc2fbeca76900fa338cc6adde13700ca97d598cc77ae2` |
| 24 | `def` | [changeForm](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform--588785340976bce376a3dfc0.md) | 236 | `declaration-track:588785340976bce376a3dfc0c88657f09369ef79418e1f5d8c109fdae15cfde1` |
| 25 | `theorem` | [changeForm.zero_proof](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform-zero-proof--6c923ee1e129e77878e2ff6b.md) | 245 | `result-track:6c923ee1e129e77878e2ff6b1a09fcefb24b2ff71f6cd17604017309f8de8ea2` |
| 26 | `theorem` | [changeForm.add_proof](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform-add-proof--35f25f85c401084a7ac571bb.md) | 252 | `result-track:35f25f85c401084a7ac571bb90056fe2d6858be1d6d14b6f6f03847c755e3bff` |
| 27 | `theorem` | [changeForm.neg_proof](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform-neg-proof--b3e37dcf5df5d81793db27a4.md) | 257 | `result-track:b3e37dcf5df5d81793db27a4d791d4cee6419d16d63855af53e6e69c2b4b6a12` |
| 28 | `theorem` | [changeForm.associated_neg_proof](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform-associated-neg-proof--494a41174ef1660ab88a1ec7.md) | 260 | `result-track:494a41174ef1660ab88a1ec7f03cc21e6563552d5e63f80f3737c96871a781e2` |
| 29 | `theorem` | [changeForm_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform-algebramap--64eae975c7a3a4e012a92308.md) | 265 | `result-track:64eae975c7a3a4e012a923080d388b6879fec77db45d775944e3703f132d7047` |
| 30 | `theorem` | [changeForm_one](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform-one--713a6d505ba6238e4b24a6f6.md) | 269 | `result-track:713a6d505ba6238e4b24a6f666f50052476dfee4a4459ed54291019b498a84de` |
| 31 | `theorem` | [changeForm_ι](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform--1a257594d787aa9472503559.md) | 273 | `result-track:1a257594d787aa9472503559ec899b8531f59cb271e2cdd11389af5077a35f57` |
| 32 | `theorem` | [changeForm_ι_mul](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform-mul--53e8546e17b08e38d7cd6bfa.md) | 277 | `result-track:53e8546e17b08e38d7cd6bfa0ea4bdda263efc39755760adc187ef3aa5982111` |
| 33 | `theorem` | [changeForm_ι_mul_ι](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform-mul--3f274aeb46d383ddb154045e.md) | 281 | `result-track:3f274aeb46d383ddb154045e8c2caf281a391e4c2d3602593c5221c8c817eb86` |
| 34 | `theorem` | [changeForm_contractLeft](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform-contractleft--110ccc25b411091802b03824.md) | 286 | `result-track:110ccc25b411091802b03824481f8e7aa72d9446d0e336f6f33ff33c78f629be` |
| 35 | `theorem` | [changeForm_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform-self-apply--19340aeef176fd94567941c4.md) | 295 | `result-track:19340aeef176fd94567941c4da389199d5e71be732e2514c46fd2196aedc6bfd` |
| 36 | `theorem` | [changeForm_self](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform-self--76b03a9798dd2c533ecd6f6b.md) | 304 | `result-track:76b03a9798dd2c533ecd6f6b635e98c9686b24591d7ee07e1c9d285bd47c28c7` |
| 37 | `theorem` | [changeForm_changeForm](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform-changeform--8096b37e5859e17548a10ffa.md) | 309 | `result-track:8096b37e5859e17548a10ffa18791a0b86d71857ce30627ddcfaa097a6e3d634` |
| 38 | `theorem` | [changeForm_comp_changeForm](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeform-comp-changeform--04ecb297be47a99c485d7b4b.md) | 318 | `result-track:04ecb297be47a99c485d7b4b3eac07b7f62e1bd913b3f20fee3a2c945d000b82` |
| 39 | `def` | [changeFormEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeformequiv--177adbfba75d616f7993abe3.md) | 326 | `declaration-track:177adbfba75d616f7993abe327f5f5d6ce8ea7bfb0ecee4b1df8b34adf1d5bf8` |
| 40 | `theorem` | [changeFormEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/changeformequiv-symm--a12817767f5e971505487810.md) | 338 | `result-track:a12817767f5e971505487810be261ddda59a7bb6bfda408a60cf3a51a423a056` |
| 41 | `def` | [equivExterior](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/equivexterior--3e05ecc6b003ea8d3db08933.md) | 349 | `declaration-track:3e05ecc6b003ea8d3db08933404b172f6425cf286144c712f60b80eccb9c7306` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/declarations/instance--483da5f7c1a6508d3789ae91.md) | 353 | `declaration-track:483da5f7c1a6508d3789ae916ade525bd80878a3629ae72c216d96fa14a9e44a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
