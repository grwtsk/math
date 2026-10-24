# Verification target: GRWTSK.NumberTheory.DiophantineEquations.Pell.Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f87d666b65f60fffd27dcd2be911526e4dd3f783",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f87d666b65f60fffd27dcd2be911526e4dd3f783`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.DiophantineApproximation.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Qify` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [is_pell_solution_iff_mem_unitary](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/is-pell-solution-iff-mem-unitary--5266a80f8c84a90580ada15f.md) | 81 | `result-track:5266a80f8c84a90580ada15fed7b6e3a9fd6730168b72b03c5b82892311c903c` |
| 2 | `def` | [Solution₁](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/solution--1773d43b3423ff0623c5ffd0.md) | 90 | `declaration-track:1773d43b3423ff0623c5ffd08ba5648ae3c33eed71ce86eebcb5f859cf11c6bf` |
| 3 | `instance` | [instCommGroup](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/instcommgroup--02fb895e9bdf27b6a7d8704f.md) | 97 | `declaration-track:02fb895e9bdf27b6a7d8704f251ae8e213f609b2bc01d90132f2c2adac81ea29` |
| 4 | `instance` | [instHasDistribNeg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/insthasdistribneg--a5a4b6f28fa22d3ced0f16e3.md) | 100 | `declaration-track:a5a4b6f28fa22d3ced0f16e3cda408935b067b825ca418e0be32e8c3ac6b0f70` |
| 5 | `instance` | [instInhabited](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/instinhabited--d777acbb9e437fb3b1292666.md) | 103 | `declaration-track:d777acbb9e437fb3b12926664e45081124d1e02fec73a19137d070d6e8a8346e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/instance--1769f3d2350cf766c0c5f562.md) | 106 | `declaration-track:1769f3d2350cf766c0c5f562509d027f17ed36151db92f447e1f0b7faffe51ce` |
| 7 | `def` | [x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/x--8652e50947f87d82824fb11b.md) | 109 | `declaration-track:8652e50947f87d82824fb11b857ae26c11fdc9c45666286bed318aa8543ffb93` |
| 8 | `def` | [y](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/y--17ecc77a78b68117ec9db5e4.md) | 113 | `declaration-track:17ecc77a78b68117ec9db5e4421885d96cdb1b4e2de72fdc5d188ec8874a5d04` |
| 9 | `theorem` | [prop](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/prop--dbd65fae035ad5419931f6b9.md) | 117 | `result-track:dbd65fae035ad5419931f6b9341834dd8b504527e2bff9f7e80ece9e0dd41928` |
| 10 | `theorem` | [prop_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/prop-x--6fc7cd7477f8a319f1133e57.md) | 121 | `result-track:6fc7cd7477f8a319f1133e57f0d42a7451d93db36b5ef9df78192d4fc786c6ba` |
| 11 | `theorem` | [prop_y](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/prop-y--52b41d48c1ec1a1f3498e0c3.md) | 124 | `result-track:52b41d48c1ec1a1f3498e0c3f4af5e72c1a548fb119968e0c322082701cc5e21` |
| 12 | `theorem` | [ext](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/ext--b8e7dba593994bb0d7143f7d.md) | 128 | `result-track:b8e7dba593994bb0d7143f7da8941c57d1d90deb148177e13d95c25752fd250c` |
| 13 | `def` | [mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/mk--80579fde0887d87c85e4e049.md) | 132 | `declaration-track:80579fde0887d87c85e4e049f21cc6b67bea1b11ea1e378f6bc20db23fad3c74` |
| 14 | `theorem` | [x_mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/x-mk--d3b037be5572d022a5ccb716.md) | 137 | `result-track:d3b037be5572d022a5ccb716a0263656cf3b31b486b606f591a1582df22b4c01` |
| 15 | `theorem` | [y_mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/y-mk--b606db19f051d05a0ccd3a4e.md) | 141 | `result-track:b606db19f051d05a0ccd3a4e6dee2a266c8aba941690513c74dd96f8687bc8e3` |
| 16 | `theorem` | [coe_mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/coe-mk--6962678bc3807529f0e17271.md) | 145 | `result-track:6962678bc3807529f0e172710df009ac6bae97d41c80d8b276a7fb461adf4bf2` |
| 17 | `theorem` | [x_one](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/x-one--87f7b786b7e2f495e72556f1.md) | 149 | `result-track:87f7b786b7e2f495e72556f14438aaa7f9ecdfd06b4b7bfb4feeb66fa40c004c` |
| 18 | `theorem` | [y_one](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/y-one--215c327393cbc43018935b3b.md) | 153 | `result-track:215c327393cbc43018935b3bde6c3728812a9dfe3e0874716c3998c45c144133` |
| 19 | `theorem` | [x_mul](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/x-mul--a944986614492cc938b25d60.md) | 157 | `result-track:a944986614492cc938b25d60994e4709204caf7d431f53d43ea4b8a363fd11c8` |
| 20 | `theorem` | [y_mul](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/y-mul--7e2177f14b6fb4a973e34ea1.md) | 162 | `result-track:7e2177f14b6fb4a973e34ea1ba0ebddc31464eb567d792e62be12b9f33a8a633` |
| 21 | `theorem` | [x_inv](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/x-inv--ff225bf822808b580a277fb9.md) | 166 | `result-track:ff225bf822808b580a277fb9759169b0ded3b807bd29ce743f14f221769dc290` |
| 22 | `theorem` | [y_inv](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/y-inv--f53829ca1703ebf715eaa173.md) | 170 | `result-track:f53829ca1703ebf715eaa1730b4b4444ce13045ebfc7150c448c66f2cf761cf9` |
| 23 | `theorem` | [x_neg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/x-neg--ab46b134040fb35e0c68ad21.md) | 174 | `result-track:ab46b134040fb35e0c68ad21e49a52cc9bf411a49ce0db0de07edd27af189971` |
| 24 | `theorem` | [y_neg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/y-neg--538ec5a358dfba6d677da04a.md) | 178 | `result-track:538ec5a358dfba6d677da04a893fa01c50c893ff0d16bc10882fcd747f60dc7a` |
| 25 | `theorem` | [eq_zero_of_d_neg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/eq-zero-of-d-neg--0c4fb84cf9e0b3c52f84b014.md) | 182 | `result-track:0c4fb84cf9e0b3c52f84b0146cec8ce0ae92d69b992bdbe6430f540be659c04d` |
| 26 | `theorem` | [x_ne_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/x-ne-zero--50a013d113ec6c432a4c261e.md) | 190 | `result-track:50a013d113ec6c432a4c261e08f169ef8917e6d099c579cbdb7b89c1438e9f12` |
| 27 | `theorem` | [y_ne_zero_of_one_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/y-ne-zero-of-one-lt-x--7caf96e5976a5c96e9e24fb7.md) | 197 | `result-track:7caf96e5976a5c96e9e24fb773672dabbbad62027a8119baff31c1ef60f643cd` |
| 28 | `theorem` | [d_pos_of_one_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/d-pos-of-one-lt-x--2087621fb55fb789c3a12eb8.md) | 204 | `result-track:2087621fb55fb789c3a12eb852fac6dd9c2cc0f1dfe758abea39e22a3d3d7524` |
| 29 | `theorem` | [d_nonsquare_of_one_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/d-nonsquare-of-one-lt-x--a410c8fb7c7e39ec0e6fbc11.md) | 210 | `result-track:a410c8fb7c7e39ec0e6fbc113a5d556dc7d03650b406bc0a8bf02c97855bfeec` |
| 30 | `theorem` | [eq_one_of_x_eq_one](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/eq-one-of-x-eq-one--8156fa8bb1e2f9562822e265.md) | 217 | `result-track:8156fa8bb1e2f9562822e265d59d4b925a9f0a8233e4034f3ff8dc969cbc81e0` |
| 31 | `theorem` | [eq_one_or_neg_one_iff_y_eq_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/eq-one-or-neg-one-iff-y-eq-zero--0fc201ae54a2754afe13596a.md) | 223 | `result-track:0fc201ae54a2754afe13596aab639b6e0540bbb3cd8368615d3bd35b071a6b97` |
| 32 | `theorem` | [x_mul_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/x-mul-pos--29a7d5c3572fb7f4ceb572fc.md) | 230 | `result-track:29a7d5c3572fb7f4ceb572fc18a67a1ac31373dad5f09a36485cd530a8650f7f` |
| 33 | `theorem` | [y_mul_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/y-mul-pos--a641c56e38dfed2ce3276b1d.md) | 242 | `result-track:a641c56e38dfed2ce3276b1d70cc91005afa23650b0d4f5dd38d91e60a9af5d8` |
| 34 | `theorem` | [x_pow_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/x-pow-pos--d66c29641209769dd03bb403.md) | 249 | `result-track:d66c29641209769dd03bb40325887946be6ca430fd0400e0816393fd49e0e927` |
| 35 | `theorem` | [y_pow_succ_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/y-pow-succ-pos--a87716f24492b0296bebe15b.md) | 256 | `result-track:a87716f24492b0296bebe15b295df0e59493a07d7dfaee926780756b6d96eb5d` |
| 36 | `theorem` | [y_zpow_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/y-zpow-pos--2cb69c74e282aeb2795dcd5f.md) | 264 | `result-track:2cb69c74e282aeb2795dcd5f319a5ac0ac8e0be5f1f8983af8f46bc52f1a093c` |
| 37 | `theorem` | [x_zpow_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/x-zpow-pos--f743d30b7affedaa2284b327.md) | 272 | `result-track:f743d30b7affedaa2284b327b97d5212d92c3b3f578b625d093dc6c69283bcb1` |
| 38 | `theorem` | [sign_y_zpow_eq_sign_of_x_pos_of_y_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/sign-y-zpow-eq-sign-of-x-pos-of-y-pos--b7b296ca4cde613f2e35bef0.md) | 283 | `result-track:b7b296ca4cde613f2e35bef0ec9c8fcdb9855f02d33c80f8d5b4092fefc49f23` |
| 39 | `theorem` | [exists_pos_variant](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/exists-pos-variant--1ec901fe676a3b526b836e2f.md) | 294 | `result-track:1ec901fe676a3b526b836e2f3e9945ac992c62f7a6b862c4dbde58b226274cfb` |
| 40 | `theorem` | [exists_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/exists-of-not-issquare--2cd25dc2219829339b5255a1.md) | 319 | `result-track:2cd25dc2219829339b5255a1e21204040fe044886fe761eac3c984cbb17e0db4` |
| 41 | `theorem` | [exists_iff_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/exists-iff-not-issquare--d6fb49aef3572ed76dd6a584.md) | 391 | `result-track:d6fb49aef3572ed76dd6a5847ce748a5fc65b8113888de7c8198bfb29dfb1462` |
| 42 | `theorem` | [exists_nontrivial_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/exists-nontrivial-of-not-issquare--28276910cf73e10da2c6c2ec.md) | 402 | `result-track:28276910cf73e10da2c6c2ecc5ce74074b5af1a84c8071910c5f868e9cda5809` |
| 43 | `theorem` | [exists_pos_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/exists-pos-of-not-issquare--d68e36665abde4aeee098b8b.md) | 410 | `result-track:d68e36665abde4aeee098b8b42441bdf3b83be98b688d765ce6ea0cc3bd2dc92` |
| 44 | `def` | [IsFundamental](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/isfundamental--66979c3aa29d5bf6a902546b.md) | 433 | `declaration-track:66979c3aa29d5bf6a902546b0909c1675bb608777ced1829365a6c511d2c1c17` |
| 45 | `theorem` | [x_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/x-pos--08415eb0720ec1c8253526b9.md) | 441 | `result-track:08415eb0720ec1c8253526b94836113476e38df69f91f9b52e91a282244f919b` |
| 46 | `theorem` | [d_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/d-pos--a84cf076f91bb8d03110d0c4.md) | 445 | `result-track:a84cf076f91bb8d03110d0c49bed713db3a4bf585606e08e380cc7ba2d0626c6` |
| 47 | `theorem` | [d_nonsquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/d-nonsquare--1a99a8aa917bfb9c5d557e13.md) | 449 | `result-track:1a99a8aa917bfb9c5d557e13c8ff7775bd2e3881c50b59bcda89aedbcb67951a` |
| 48 | `theorem` | [subsingleton](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/subsingleton--8f5e2aa8cdbfed6692796089.md) | 453 | `result-track:8f5e2aa8cdbfed6692796089b1f2d1230ecb823269942f6ca33bb95f90d8551d` |
| 49 | `theorem` | [exists_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/exists-of-not-issquare--fff44cbb698b74da134ef269.md) | 460 | `result-track:fff44cbb698b74da134ef269ef4792ba0c3fa91bec55eccc153050b01829784e` |
| 50 | `theorem` | [y_strictMono](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/y-strictmono--4bf33259d4fb2798960e107a.md) | 485 | `result-track:4bf33259d4fb2798960e107aa999eb3ff288b9b1d7d269da783683554dd3f7af` |
| 51 | `theorem` | [zpow_y_lt_iff_lt](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/zpow-y-lt-iff-lt--f03142f5e08f9df27fc5c381.md) | 506 | `result-track:f03142f5e08f9df27fc5c3812b6f097be028ab651db47bb5ad6b040b1b6fa3ce` |
| 52 | `theorem` | [zpow_eq_one_iff](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/zpow-eq-one-iff--d3733adb2c0b206c3b01b95e.md) | 513 | `result-track:d3733adb2c0b206c3b01b95e499f0389b37332e4089f2127f4fa3cffc5d857a7` |
| 53 | `theorem` | [zpow_ne_neg_zpow](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/zpow-ne-neg-zpow--cefe6797b79b855eedb784a3.md) | 519 | `result-track:cefe6797b79b855eedb784a375c6f6658912cd0a1935dba8bd90c52805e40083` |
| 54 | `theorem` | [x_le_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/x-le-x--18c1db3e56f156d7cc12a9fb.md) | 528 | `result-track:18c1db3e56f156d7cc12a9fb04ccb5bd6a088f8f8d362f12438a22cd73a7eb73` |
| 55 | `theorem` | [y_le_y](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/y-le-y--8f24be69c004c5973e732633.md) | 534 | `result-track:8f24be69c004c5973e73263344e72fbc229083a0de16d91fe2e4adb7ccc7811b` |
| 56 | `theorem` | [x_mul_y_le_y_mul_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/x-mul-y-le-y-mul-x--60de31d4ac2e517451ea0e26.md) | 543 | `result-track:60de31d4ac2e517451ea0e263e4dec0de7a579c3421ae8b070fcaf8077648ed0` |
| 57 | `theorem` | [mul_inv_y_nonneg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/mul-inv-y-nonneg--8a0349d0efd2c21c760e64fd.md) | 554 | `result-track:8a0349d0efd2c21c760e64fda33246770c6c898dbd52273a54029a11212a9118` |
| 58 | `theorem` | [mul_inv_x_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/mul-inv-x-pos--0c839cfca349610074ac6bae.md) | 561 | `result-track:0c839cfca349610074ac6baeb9e4024f044adaf71ea78014ffe3a1113b94a486` |
| 59 | `theorem` | [mul_inv_x_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/mul-inv-x-lt-x--d0eb58d9b6cb197ff5033846.md) | 573 | `result-track:d0eb58d9b6cb197ff50338461c8414c20fb7779703b539a4e837614f5ec953b0` |
| 60 | `theorem` | [eq_pow_of_nonneg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/eq-pow-of-nonneg--c96d4b0d04ef055f758582cf.md) | 593 | `result-track:c96d4b0d04ef055f758582cfe08f0c67308313be9927fb787e708b3c7a796ee5` |
| 61 | `theorem` | [eq_zpow_or_neg_zpow](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/eq-zpow-or-neg-zpow--228bcf4f69b5b5ff8ad3c3aa.md) | 619 | `result-track:228bcf4f69b5b5ff8ad3c3aa8a8d3a3f59a74c7b93a428092940014af534ce1f` |
| 62 | `theorem` | [existsUnique_pos_generator](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/existsunique-pos-generator--a67805cb84ae92b590a7950e.md) | 637 | `result-track:a67805cb84ae92b590a7950ee5fca33f4f5f25e2b14686fbbce730fa8e5d7ba4` |
| 63 | `theorem` | [pos_generator_iff_fundamental](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant0f808742130eebd7a72cd1e2272ebc52c8ead7f6c547a0f26ae54286e8de043f.lean/declarations/pos-generator-iff-fundamental--0677dfdaf24ca08617dee7ed.md) | 664 | `result-track:0677dfdaf24ca08617dee7eda525787cd7f359e7ca29a57bf5b9b5910cbb42d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
