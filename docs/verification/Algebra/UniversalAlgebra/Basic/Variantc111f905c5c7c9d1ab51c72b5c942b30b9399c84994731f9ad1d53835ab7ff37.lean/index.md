# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e12f5af8a0eddac3a2b81d376735edbd2f197ec",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e12f5af8a0eddac3a2b81d376735edbd2f197ec`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Opposite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.SelfAdjoint` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarRingHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ContinuousFunctionalCalculus` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StarOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/starorderedring--368a6a379909841670f1d965.md) | 52 | `declaration-track:368a6a379909841670f1d9657c2189f09e7cc04723dd7ce68a27e1d473aa5ceb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/instance--c86b7b0a4e04e8660c42af01.md) | 61 | `declaration-track:c86b7b0a4e04e8660c42af01188b0a55ad6db6a68b01fea4b33ad1fad6e38857` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/instance--f64de284fa28aa85457fa7e2.md) | 70 | `declaration-track:f64de284fa28aa85457fa7e28872a36360e0774c168f7b1bc302857e4e16af95` |
| 4 | `lemma` | [of_le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/of-le-iff--d4f57ceed10397275410fcf7.md) | 85 | `result-track:d4f57ceed10397275410fcf7677a9220b1cecf8955f142bd7c5241ddafdf2ef7` |
| 5 | `lemma` | [of_nonneg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/of-nonneg-iff--47b14fa09761992bc7a2637a.md) | 103 | `result-track:47b14fa09761992bc7a2637ab5b0f60a5ddc3e99de4d006a7e94024235259938` |
| 6 | `lemma` | [of_nonneg_iff'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/of-nonneg-iff--e183a11d7cc56d2ba553d6aa.md) | 118 | `result-track:e183a11d7cc56d2ba553d6aad52ef3b248393e48eb6edc8d98d756ef1ccd570e` |
| 7 | `theorem` | [nonneg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/nonneg-iff--43c84f8c0ba09bda6fb2e6af.md) | 125 | `result-track:43c84f8c0ba09bda6fb2e6afaa51b48289343253b35818855c8e4daa3e43c266` |
| 8 | `lemma` | [IsSelfAdjoint.mono](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/isselfadjoint-mono--e97ec36599397d3f04138885.md) | 135 | `result-track:e97ec36599397d3f04138885d4252e151a5cb10799851049229437be5d7836d7` |
| 9 | `lemma` | [IsSelfAdjoint.of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/isselfadjoint-of-nonneg--ae6534b2f8ab52fb4cc31d9c.md) | 145 | `result-track:ae6534b2f8ab52fb4cc31d9c0063812619a3d79522693c8df400ecfe9a793a10` |
| 10 | `lemma` | [LE.le.star_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/le-le-star-eq--0a973db8cfac4473463a7470.md) | 152 | `result-track:0a973db8cfac4473463a74700d9f92f8283cb043cac61d9b785184530ec6910a` |
| 11 | `theorem` | [star_mul_self_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/star-mul-self-nonneg--f21274128f4b76e17a5df83b.md) | 156 | `result-track:f21274128f4b76e17a5df83bf028c240ae098e7ece614d74aee61209c53603b2` |
| 12 | `theorem` | [mul_star_self_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/mul-star-self-nonneg--ceb999332cdd3677668dbe9e.md) | 160 | `result-track:ceb999332cdd3677668dbe9ec62fc04788c5c3bb40027c0785c36a4a9735d0de` |
| 13 | `theorem` | [IsSelfAdjoint.mul_self_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/isselfadjoint-mul-self-nonneg--38381d0de0240a5e144e8170.md) | 164 | `result-track:38381d0de0240a5e144e8170f37c28b0bcbab669ca6687cf2051a24d9a01fb54` |
| 14 | `theorem` | [conjugate_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/conjugate-nonneg--502679b68e0d8a7a7601dbee.md) | 168 | `result-track:502679b68e0d8a7a7601dbee89e0a2c5698b3eef6be1e750c61213750929c066` |
| 15 | `theorem` | [conjugate_nonneg'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/conjugate-nonneg--e0a7d3e1ca108cbfeab1e936.md) | 181 | `result-track:e0a7d3e1ca108cbfeab1e936c3299a27868ff03ade3f7cf8db1e9a7a6ca75257` |
| 16 | `theorem` | [IsSelfAdjoint.conjugate_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/isselfadjoint-conjugate-nonneg--f16ad77d65e1f96d8a00b2b6.md) | 185 | `result-track:f16ad77d65e1f96d8a00b2b6aed4fdf97bbce63abbdea5dd540ca7aa37bac70b` |
| 17 | `theorem` | [conjugate_nonneg_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/conjugate-nonneg-of-nonneg--10105864af5a49e015aa269f.md) | 189 | `result-track:10105864af5a49e015aa269fb1c2e6a987087758c29f639db4a076ba9d8348dc` |
| 18 | `theorem` | [conjugate_le_conjugate](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/conjugate-le-conjugate--45089424fd0a9a2a71c59513.md) | 193 | `result-track:45089424fd0a9a2a71c595137f837f2f5ec07516e13b1e41cb1a87bd6adfa970` |
| 19 | `theorem` | [conjugate_le_conjugate'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/conjugate-le-conjugate--1d207bce5097f1d6398b92d9.md) | 200 | `result-track:1d207bce5097f1d6398b92d9d3b37e31f7214455f6aa8f7e6bdadb946f8ead13` |
| 20 | `theorem` | [IsSelfAdjoint.conjugate_le_conjugate](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/isselfadjoint-conjugate-le-conjugate--420369b4e6ccc19ec5c00d65.md) | 204 | `result-track:420369b4e6ccc19ec5c00d65960738d221f709ec62d6731f9361b4d7689647ca` |
| 21 | `theorem` | [conjugate_le_conjugate_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/conjugate-le-conjugate-of-nonneg--5e5b6e070bdbc52d67e9f795.md) | 208 | `result-track:5e5b6e070bdbc52d67e9f795edb0fbcf5c6998794eac2f061117b154186d971f` |
| 22 | `lemma` | [star_le_star_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/star-le-star-iff--e671b01d8f54bdc979349d91.md) | 213 | `result-track:e671b01d8f54bdc979349d91dd40951a8d7ff159832a66247bf705e3ed2f563a` |
| 23 | `lemma` | [star_lt_star_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/star-lt-star-iff--3c0598ef3fb4568786777a36.md) | 225 | `result-track:3c0598ef3fb4568786777a36339c1e02ebc5f2d36e377fb3ab20b4cd14548711` |
| 24 | `lemma` | [star_le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/star-le-iff--2bf07d9a8d6b1e333b1be407.md) | 230 | `result-track:2bf07d9a8d6b1e333b1be40739fdd12af1264374452a8d720aa2e2a373e77f92` |
| 25 | `lemma` | [star_lt_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/star-lt-iff--0f64133fa68bb56523d0f201.md) | 232 | `result-track:0f64133fa68bb56523d0f2012d99b17b687735fe5c238f882c7a466e0eed71db` |
| 26 | `lemma` | [star_nonneg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/star-nonneg-iff--9c5e36dc133f684eca199d6f.md) | 235 | `result-track:9c5e36dc133f684eca199d6f3a6e24d8c6b8f6b70da80d27f85818c657b76a2b` |
| 27 | `lemma` | [star_nonpos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/star-nonpos-iff--5980d0bdd91a24018705d85b.md) | 239 | `result-track:5980d0bdd91a24018705d85bd3ab42f94c179bdd4d064ef615365724a008ead2` |
| 28 | `lemma` | [star_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/star-pos-iff--93f9a393ee357f54be2a602a.md) | 243 | `result-track:93f9a393ee357f54be2a602add9fd53e8d02b2eedfa17c62bb862a98ecfc6fc8` |
| 29 | `lemma` | [star_neg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/star-neg-iff--717c0a86c3780122df55f5cf.md) | 247 | `result-track:717c0a86c3780122df55f5cf41af6c0c5014199e33baa1bd18a382a6f3f88e97` |
| 30 | `theorem` | [conjugate_lt_conjugate](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/conjugate-lt-conjugate--22b33d4b33b61e7089281b6b.md) | 250 | `result-track:22b33d4b33b61e7089281b6b6518adbd32e6c6a3c7fa7ae775e6533ea4c9f13a` |
| 31 | `theorem` | [conjugate_lt_conjugate'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/conjugate-lt-conjugate--1d1496eef03fbf9fd94e439d.md) | 255 | `result-track:1d1496eef03fbf9fd94e439dfafe46e3be095c2ee1402f92011888c62c64d72b` |
| 32 | `theorem` | [conjugate_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/conjugate-pos--b413297c8c793b742dedd253.md) | 259 | `result-track:b413297c8c793b742dedd253eb26944de931b35afba8b42a6a65901860342186` |
| 33 | `theorem` | [conjugate_pos'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/conjugate-pos--ab5a293e6ff219d9c14b6dcc.md) | 262 | `result-track:ab5a293e6ff219d9c14b6dcc803a2f57fe42bbdbc8cfed15f88b063707f186b9` |
| 34 | `theorem` | [star_mul_self_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/star-mul-self-pos--a44772f0d5b91b2a3665e0b4.md) | 265 | `result-track:a44772f0d5b91b2a3665e0b4a25754b237246d3b8f0020eec52cef669b2d9323` |
| 35 | `theorem` | [mul_star_self_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/mul-star-self-pos--276678bcc0ee52d5eb4e4710.md) | 269 | `result-track:276678bcc0ee52d5eb4e4710fc11f680057fa9eb6170374425cc34b903dd63e4` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/instance--e2dd8e4d13c8995605baf78e.md) | 277 | `declaration-track:e2dd8e4d13c8995605baf78ec39d99dc89db03a59b1cd29d255c590d8a0c877f` |
| 37 | `lemma` | [one_le_star_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/one-le-star-iff--7b791487517da33bcb4b244c.md) | 281 | `result-track:7b791487517da33bcb4b244cbe4b20feba1faf7bac4c1efacfda66d60404a2f9` |
| 38 | `lemma` | [star_le_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/star-le-one-iff--d1edc7688fd6db315920bd2f.md) | 285 | `result-track:d1edc7688fd6db315920bd2f578dfdadb0073247d8e3fdfad8a97be0bf008e37` |
| 39 | `lemma` | [one_lt_star_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/one-lt-star-iff--4b530bf9aa9f46b78a01e637.md) | 289 | `result-track:4b530bf9aa9f46b78a01e63751d1b509e3cba9ddfdceb74b22315e6b3b08df21` |
| 40 | `lemma` | [star_lt_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/star-lt-one-iff--07554e9502b27cdb040f95ef.md) | 293 | `result-track:07554e9502b27cdb040f95ef35fcb01914fde94c2b762ab9c2456150f5b3c5d2` |
| 41 | `theorem` | [IsSelfAdjoint.sq_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/isselfadjoint-sq-nonneg--ee1116a762fa62767c80c233.md) | 297 | `result-track:ee1116a762fa62767c80c233bc2cea84633094faba4ff831e49c06fbbe88635a` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/instance--92def0a00c73164e8b06c8f5.md) | 304 | `declaration-track:92def0a00c73164e8b06c8f5affe431a63c762171d01d7ee967b983da0f4a01d` |
| 43 | `lemma` | [StarModule.smul_lt_smul_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/starmodule-smul-lt-smul-of-pos--13f0f41f627cd9b2d8fe5b31.md) | 322 | `result-track:13f0f41f627cd9b2d8fe5b31d2c20b3f7d5561fe0947d0efe557e8278d89bfb6` |
| 44 | `lemma` | [NonUnitalStarRingHom.map_le_map_of_map_star](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/nonunitalstarringhom-map-le-map-of-map-star--d589571417c67b126f321461.md) | 361 | `result-track:d589571417c67b126f321461c4cedd4b1674472c99523f23379cc394e572cea5` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/instance--d0eec8aca54a78a5949b55f1.md) | 370 | `declaration-track:d0eec8aca54a78a5949b55f186c82000f0626e437df33aa66273ff176c984723` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/instance--f08c596f4183accb28c237c1.md) | 376 | `declaration-track:f08c596f4183accb28c237c11d72c94c1039ebbaef50f1104e18943d31ee9bcc` |
| 47 | `instance` | [Nat.instStarOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/declarations/nat-inststarorderedring--bb2ed4d28b09724205d86c14.md) | 387 | `declaration-track:bb2ed4d28b09724205d86c146a6d9f1997d1686fe97cb6be25e500c42f83acd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
