# Verification target: GRWTSK.Algebra.GroupTheory.Abs.Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e35b123b5ea1589df2a4066e14b64b5a730fdff9",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e35b123b5ea1589df2a4066e14b64b5a730fdff9`.

Source path: `GRWTSK/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Even` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs--8b034d4a1e1d9846294c02a6.md) | 33 | `declaration-track:8b034d4a1e1d9846294c02a6b94bee7eeea60f8765a30c3e9e0ab6bd26f82697` |
| 2 | `def` | [mabs.unexpander](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-unexpander--bce9340535779bbad80cb721.md) | 44 | `declaration-track:bce9340535779bbad80cb72178e34873e8f2a807cf4f28de9ed258e46147a924` |
| 3 | `def` | [abs.unexpander](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/abs-unexpander--193fcdc987405dd887f336c1.md) | 54 | `declaration-track:193fcdc987405dd887f336c1ba72f1e04120a484503b34d0a97020cbdd53874e` |
| 4 | `lemma` | [mabs_le'](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-le--c30f6a417124e25c04507208.md) | 61 | `result-track:c30f6a417124e25c045072082c3eab3e4285ce3812686d7d4789a63d515f61a6` |
| 5 | `lemma` | [le_mabs_self](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/le-mabs-self--2857c8bc8db74e4386d59cc1.md) | 63 | `result-track:2857c8bc8db74e4386d59cc111788433a694bf223f51fdf747694b42835c9354` |
| 6 | `lemma` | [inv_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/inv-le-mabs--aa3fb71fcb1e811c6151d5ed.md) | 65 | `result-track:aa3fb71fcb1e811c6151d5eddae17b564408c04d4bd2cb3853681ca73af3b749` |
| 7 | `lemma` | [mabs_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-le-mabs--b90fb0eb0b4d583900d0ae78.md) | 67 | `result-track:b90fb0eb0b4d583900d0ae78618938ea07462a1d724f49469b8a70ddf0dabb45` |
| 8 | `lemma` | [mabs_inv](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-inv--3590fa26e7f4e8d4b955fd03.md) | 70 | `result-track:3590fa26e7f4e8d4b955fd030695f80620b3a63b40ae0bfe1b9b76f79c674443` |
| 9 | `lemma` | [mabs_div_comm](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-div-comm--f6b5d0007fff292fd495c408.md) | 72 | `result-track:f6b5d0007fff292fd495c408887ce0f856b153abe3e789f227f4413fe89e697a` |
| 10 | `lemma` | [mabs_ite](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-ite--7d2ed64ec4d2c0d4d9226ee1.md) | 74 | `result-track:7d2ed64ec4d2c0d4d9226ee1cff8ab005db928360f65d7aa1b5e8fac8f370df2` |
| 11 | `lemma` | [mabs_dite](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-dite--dab553f74435a7148e731926.md) | 78 | `result-track:dab553f74435a7148e7319268257261bc5e7417ba2d4a46aa0d29f14c07e9292` |
| 12 | `lemma` | [mabs_of_one_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-of-one-le--85634a6bf72e4b7972bf493a.md) | 84 | `result-track:85634a6bf72e4b7972bf493af24bdba1c838a2f7e8805c90323eedf562e74ec4` |
| 13 | `lemma` | [mabs_of_one_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-of-one-lt--b5bca2aaf43e237dcb3a1eb4.md) | 87 | `result-track:b5bca2aaf43e237dcb3a1eb454f1736c36466b4b7ed662e11e0f3591d4be1131` |
| 14 | `lemma` | [mabs_of_le_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-of-le-one--b9d307fec3308bdd329c046c.md) | 89 | `result-track:b9d307fec3308bdd329c046cd66884b2f4444f45adf314016f8b5327710967fc` |
| 15 | `lemma` | [mabs_of_lt_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-of-lt-one--e1b8ae940afd7e9acd1477f5.md) | 92 | `result-track:e1b8ae940afd7e9acd1477f5f3c6dc0f568f16b7b25c3e491f1bb0cbb9402679` |
| 16 | `lemma` | [mabs_le_mabs_of_one_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-le-mabs-of-one-le--8f120a055f1f83cdeea414d9.md) | 94 | `result-track:8f120a055f1f83cdeea414d9e5683dfe131f14aac859f6b644e369a9474a4759` |
| 17 | `lemma` | [mabs_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-one--dab90d3ee8916d98d3ccfd0c.md) | 99 | `result-track:dab90d3ee8916d98d3ccfd0cbb3fc670c73b30d4ba9efc6c7a20d94b29f16d0b` |
| 18 | `lemma` | [one_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/one-le-mabs--4bdff0bd7f87b741bc345b35.md) | 103 | `result-track:4bdff0bd7f87b741bc345b35fa0802cae3fca0364a0a38c14024219ac2821505` |
| 19 | `lemma` | [mabs_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-mabs--ad9c494dd2922c9c4175280d.md) | 108 | `result-track:ad9c494dd2922c9c4175280de90d64f520cadbec8d019bdcdcac5eb5e048532f` |
| 20 | `lemma` | [mabs_mul_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-mul-le--b204d9ac28238c40eabe150e.md) | 119 | `result-track:b204d9ac28238c40eabe150ee3a9910236e3b5923e52e2522b0555a0e7e1e9f4` |
| 21 | `lemma` | [mabs_mabs_div_mabs_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-mabs-div-mabs-le--e66815b4daa54a8ac334afea.md) | 126 | `result-track:e66815b4daa54a8ac334afeaafe278ff03a6da0872207ad3bef6f258fff479f8` |
| 22 | `lemma` | [sup_div_inf_eq_mabs_div](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/sup-div-inf-eq-mabs-div--64c29c771aa6a782f2f35a69.md) | 136 | `result-track:64c29c771aa6a782f2f35a6977d5d46cb61f1ebb95bb0bc25bf992178ee596f7` |
| 23 | `lemma` | [sup_sq_eq_mul_mul_mabs_div](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/sup-sq-eq-mul-mul-mabs-div--dfd91e7782f545e1c31ed872.md) | 142 | `result-track:dfd91e7782f545e1c31ed8728f9fc78e78d27a7274dc4486d03ee36534aff56b` |
| 24 | `lemma` | [inf_sq_eq_mul_div_mabs_div](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/inf-sq-eq-mul-div-mabs-div--b11ca749540d7d16f019b7e2.md) | 147 | `result-track:b11ca749540d7d16f019b7e282018263cf086a946aed9f98ff61931a46bb1225` |
| 25 | `lemma` | [mabs_div_sup_mul_mabs_div_inf](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-div-sup-mul-mabs-div-inf--8302498b95f0fec6d2460d58.md) | 154 | `result-track:8302498b95f0fec6d2460d5862a42349421960d620404be6fac9849bd384ac31` |
| 26 | `lemma` | [mabs_sup_div_sup_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-sup-div-sup-le-mabs--3d108816945601e3a8b5564a.md) | 173 | `result-track:3d108816945601e3a8b5564a7c76055a9c3cf9f11ff52dd782ab1b12d1ccff33` |
| 27 | `lemma` | [mabs_inf_div_inf_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-inf-div-inf-le-mabs--9ffebbc88ba5b54d670ba9fa.md) | 176 | `result-track:9ffebbc88ba5b54d670ba9fa157e4ffe851dbbeee13c4e924fc3ac5829990703` |
| 28 | `lemma` | [m_Birkhoff_inequalities](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/m-birkhoff-inequalities--757271c6ae58ac819db1efc3.md) | 182 | `result-track:757271c6ae58ac819db1efc321dcb5aa3720962a2b80c33c6d8be3dbd56ce8f4` |
| 29 | `lemma` | [mabs_choice](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-choice--2f8c6209283da4276735ab38.md) | 192 | `result-track:2f8c6209283da4276735ab385b28ba6a1efdc66a8954a46cbd1d0ffd1192ff54` |
| 30 | `lemma` | [le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/le-mabs--97c736e7898be19cc512253a.md) | 194 | `result-track:97c736e7898be19cc512253ab03934274b9b91632bb0168054224c8e9b95cb52` |
| 31 | `lemma` | [mabs_eq_max_inv](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-eq-max-inv--4147ad94f16423c3f1b63b42.md) | 196 | `result-track:4147ad94f16423c3f1b63b421627a328257f786a355987052b4438910ef2ad18` |
| 32 | `lemma` | [lt_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/lt-mabs--1cc11b599f71cd1ca230434b.md) | 198 | `result-track:1cc11b599f71cd1ca230434bf46bbe46aa4242fd6692b134e8614abf101b37c2` |
| 33 | `lemma` | [mabs_by_cases](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-by-cases--436e43a3d3926e71dcef6aa1.md) | 200 | `result-track:436e43a3d3926e71dcef6aa1e4bcb18359cf5af065818bd62e6112d8124a9130` |
| 34 | `lemma` | [eq_or_eq_inv_of_mabs_eq](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/eq-or-eq-inv-of-mabs-eq--39f46b9ac5006523bc80997f.md) | 203 | `result-track:39f46b9ac5006523bc80997f9c20d2a55cffdf007a823e097ad574d51ead7322` |
| 35 | `lemma` | [mabs_eq_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-eq-mabs--e7e02bd9f59f01c95c10850d.md) | 206 | `result-track:e7e02bd9f59f01c95c10850d333f2d1a5f2c6cdc75b5d5f9b48102ec7b1cbef6` |
| 36 | `lemma` | [isSquare_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/issquare-mabs--1add932c9dd5522b44b12593.md) | 211 | `result-track:1add932c9dd5522b44b12593f9eb57317cfec8b8afb8663c3035d0c63793e0d4` |
| 37 | `lemma` | [lt_of_mabs_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/lt-of-mabs-lt--3c49f3dad7fe4503c4355b50.md) | 214 | `result-track:3c49f3dad7fe4503c4355b5026df0d8eba922d130b4854ad9ebff82051b76510` |
| 38 | `lemma` | [one_lt_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/one-lt-mabs--32bc7ba2beed84b774ffc0d0.md) | 218 | `result-track:32bc7ba2beed84b774ffc0d023b7865b09a805935b8c0b1ecd266fe0ccb87f6d` |
| 39 | `lemma` | [one_lt_mabs_pos_of_one_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/one-lt-mabs-pos-of-one-lt--1ec732dcf304c17289ea0658.md) | 224 | `result-track:1ec732dcf304c17289ea0658f9f12d4403654b0d7266fd2ed4ca3d31479c3d0c` |
| 40 | `lemma` | [one_lt_mabs_of_lt_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/one-lt-mabs-of-lt-one--c180e18e488e39ddd182fa39.md) | 227 | `result-track:c180e18e488e39ddd182fa3953e5693956392b6f737c1804ac9f7eddecb64e79` |
| 41 | `lemma` | [inv_mabs_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/inv-mabs-le--1bcddc9328ee970204fe6559.md) | 230 | `result-track:1bcddc9328ee970204fe6559b469674fe2c7b9ddefb43ad4995cf2e9aa1c604e` |
| 42 | `lemma` | [one_le_mul_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/one-le-mul-mabs--8efb30a2d6c6fc0c1613709b.md) | 235 | `result-track:8efb30a2d6c6fc0c1613709b154beb1d3b8405952c96ae3400b697a12bd306cf` |
| 43 | `lemma` | [inv_mabs_le_inv](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/inv-mabs-le-inv--8cd7593245d9f2e076d54568.md) | 238 | `result-track:8cd7593245d9f2e076d5456805b902c45dd90e5e95413f7682fba857399c1629` |
| 44 | `lemma` | [mabs_ne_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-ne-one--ea9a1e3a3a56bec0d09f7749.md) | 242 | `result-track:ea9a1e3a3a56bec0d09f77499e758cc773f9368d504adfe36b977b3aee65e3f5` |
| 45 | `lemma` | [mabs_eq_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-eq-one--b6e17e0d23a00c050b11649e.md) | 245 | `result-track:b6e17e0d23a00c050b11649e72e5f31934dc6a24d901a202ae61315fc1042d5a` |
| 46 | `lemma` | [mabs_le_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-le-one--90f81a7a50b3788200aa1f30.md) | 247 | `result-track:90f81a7a50b3788200aa1f301a5da789c192285efc114cc6abbea7f7b219baeb` |
| 47 | `lemma` | [mabs_le_mabs_of_le_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-le-mabs-of-le-one--14db7fdc6a0f958bb540a1fe.md) | 250 | `result-track:14db7fdc6a0f958bb540a1fe18fcea2cd3ceb2711257d17912d3f584e86e8a5b` |
| 48 | `lemma` | [mabs_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/mabs-lt--78310ef2f2e8ca1d1aa76819.md) | 253 | `result-track:78310ef2f2e8ca1d1aa76819c6b798417b4d7aa1fcf31ecfbfe5498876c50753` |
| 49 | `lemma` | [inv_lt_of_mabs_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/inv-lt-of-mabs-lt--5b44b1d7716b36752217b1e0.md) | 256 | `result-track:5b44b1d7716b36752217b1e037bffe48d506d083cbde91498251b013d65bb4e5` |
| 50 | `lemma` | [max_div_min_eq_mabs'](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/max-div-min-eq-mabs--4ef1c5dcffa7a9bf630ff0f6.md) | 258 | `result-track:4ef1c5dcffa7a9bf630ff0f602cb631225aab32915231ce58d36f91d76517dba` |
| 51 | `lemma` | [max_div_min_eq_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/max-div-min-eq-mabs--a4daefe4020cc3a804770c75.md) | 265 | `result-track:a4daefe4020cc3a804770c75e65d24a17aaa65776fc1d204968663949e729bc0` |
| 52 | `def` | [IsSolid](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/issolid--cec6cbbfed5f8ae09532d1ff.md) | 275 | `declaration-track:cec6cbbfed5f8ae09532d1ff14e45cc515e7f2a9a821fbd9cd1f750a90645f6c` |
| 53 | `def` | [solidClosure](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/solidclosure--a5859196fadf10971ad4e46c.md) | 278 | `declaration-track:a5859196fadf10971ad4e46ca7d516ca5839a3d5a31b31b755e0ff52ebe7766e` |
| 54 | `lemma` | [isSolid_solidClosure](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/issolid-solidclosure--27619febf81339f1a93eef4f.md) | 280 | `result-track:27619febf81339f1a93eef4f98605c8ee4ae089800f5a0c53859f5f53cadc8c5` |
| 55 | `lemma` | [solidClosure_min](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/solidclosure-min--738fe2afeac6fa5a4f3c4f8c.md) | 283 | `result-track:738fe2afeac6fa5a4f3c4f8c550223c17da1f99353a5370036fe30fce9b2fb7d` |
| 56 | `lemma` | [abs_apply](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/abs-apply--d83219e10ff0c343d2c8ce7b.md) | 291 | `result-track:d83219e10ff0c343d2c8ce7bdd4c59e7f710318fa546a368a1738575432f5242` |
| 57 | `lemma` | [abs_def](../../../../../mathematics/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/declarations/abs-def--58d5c5e4468eafe7d039c9bf.md) | 293 | `result-track:58d5c5e4468eafe7d039c9bf1378776d2725a30a09fae516d03cac56d308a153` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
