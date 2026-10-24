# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7746e833ab4b4d711549b16345e2cc36ec9daf57",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7746e833ab4b4d711549b16345e2cc36ec9daf57`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree--1790d5a7ebd1495dcddf68af.md) | 50 | `declaration-track:1790d5a7ebd1495dcddf68af8ec1fecfbed4fd7b4b85eff96ada69bea7d9576a` |
| 2 | `theorem` | [IsRelPrime.of_squarefree_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/isrelprime-of-squarefree-mul--9636dac98e29bf4933969786.md) | 53 | `result-track:9636dac98e29bf49339697865e0dcb1603717570d746e1ab4b54fe8a449f74c9` |
| 3 | `theorem` | [IsUnit.squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/isunit-squarefree--1f7de6898cf664e1c3872422.md) | 57 | `result-track:1f7de6898cf664e1c3872422e7fab6ad0db0670b1307e9e57efb011bb885c97a` |
| 4 | `theorem` | [squarefree_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-one--76cd0394f0d0f5eb14976956.md) | 60 | `result-track:76cd0394f0d0f5eb1497695652db39623e40ba951ba61533b866a9164be80b60` |
| 5 | `theorem` | [not_squarefree_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/not-squarefree-zero--487b16c2eab47cf581aa3eed.md) | 64 | `result-track:487b16c2eab47cf581aa3eed83063462737e8244ceb0546f0ab75be4b9e926ff` |
| 6 | `theorem` | [Squarefree.ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-ne-zero--d0d987a9b1f307abe1076cea.md) | 68 | `result-track:d0d987a9b1f307abe1076cea17f85c93671c698a9908157f8fe1c6d67c8029d0` |
| 7 | `theorem` | [Irreducible.squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/irreducible-squarefree--192fabe532e0a334927cde74.md) | 74 | `result-track:192fabe532e0a334927cde74ebe81ccebb790801b04fc5ad004887899f0fd180` |
| 8 | `theorem` | [Prime.squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/prime-squarefree--1168832fe40248b2b433bd01.md) | 82 | `result-track:1168832fe40248b2b433bd01fbd3cb89eaf348e63f75ed74d460b078a8c79fda` |
| 9 | `theorem` | [Squarefree.of_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-of-mul-left--b8b3a14354b2e1d78829c92c.md) | 86 | `result-track:b8b3a14354b2e1d78829c92cc4851ace6efc314118b2159db85ca1ce23b2c84d` |
| 10 | `theorem` | [Squarefree.of_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-of-mul-right--a1f30a5b307ca6b6047bcdc9.md) | 89 | `result-track:a1f30a5b307ca6b6047bcdc9f8ef7c327dbf9ecc198f971c21ef28c758b15417` |
| 11 | `theorem` | [Squarefree.squarefree_of_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-squarefree-of-dvd--a88fa2cf19f50ef03f9cdb4e.md) | 92 | `result-track:a88fa2cf19f50ef03f9cdb4e2ba3938a8bf6b377aa6276e2d9e562126e053ee4` |
| 12 | `theorem` | [Associated.squarefree_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/associated-squarefree-iff--9455556606c40b784d703d0a.md) | 95 | `result-track:9455556606c40b784d703d0a6f7c693a3f320f598541ea816f8b899ace6f8f43` |
| 13 | `theorem` | [Squarefree.eq_zero_or_one_of_pow_of_not_isUnit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-eq-zero-or-one-of-pow-of-not-isunit--7d6763aea441bf2f96c5bc7b.md) | 99 | `result-track:7d6763aea441bf2f96c5bc7b39aed91b5a1efae18049c4906a0fd2971d4e8abc` |
| 14 | `theorem` | [Squarefree.pow_dvd_of_pow_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-pow-dvd-of-pow-dvd--03694786158b1b38d8876944.md) | 107 | `result-track:03694786158b1b38d8876944151cc00371cae6f23a04404533c0e14063bbcc00` |
| 15 | `theorem` | [Squarefree.gcd_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-gcd-right--aa62fa9653eda26738fe1a9c.md) | 117 | `result-track:aa62fa9653eda26738fe1a9c0e5130080a74bd3b29b2ab2b1ce6958cf01a298c` |
| 16 | `theorem` | [Squarefree.gcd_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-gcd-left--2f2c9114734899963dd2a8f4.md) | 120 | `result-track:2f2c9114734899963dd2a8f4232b6ffa6dfa3008e9f786c31e76bde68fd6a515` |
| 17 | `theorem` | [squarefree_iff_emultiplicity_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-iff-emultiplicity-le-one--0ececd12aeb1db17ba90eac1.md) | 125 | `result-track:0ececd12aeb1db17ba90eac17c943d35f0389820f0fd15dcec8f95bc3e7534f5` |
| 18 | `theorem` | [squarefree_iff_no_irreducibles](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-iff-no-irreducibles--c280f63c3ffc1ae3db52e6c7.md) | 137 | `result-track:c280f63c3ffc1ae3db52e6c722f6f3b157bc1484660c5945ec48d9c241f810ba` |
| 19 | `theorem` | [irreducible_sq_not_dvd_iff_eq_zero_and_no_irreducibles_or_squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/irreducible-sq-not-dvd-iff-eq-zero-and-no-irreducibles-or-squarefree--7e75dc1b497a62f2e40146fb.md) | 144 | `result-track:7e75dc1b497a62f2e40146fbaecdb9a99c42481816a38dbdcb639a211fc5a9ad` |
| 20 | `theorem` | [squarefree_iff_irreducible_sq_not_dvd_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-iff-irreducible-sq-not-dvd-of-ne-zero--4bb3888a3eafcaba7ff85f7c.md) | 155 | `result-track:4bb3888a3eafcaba7ff85f7ce61d222cb438c0c2119da94691687cc8e57fe53f` |
| 21 | `theorem` | [squarefree_iff_irreducible_sq_not_dvd_of_exists_irreducible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-iff-irreducible-sq-not-dvd-of-exists-irreducible--d85d390a4f62f44c911e29a2.md) | 159 | `result-track:d85d390a4f62f44c911e29a2d713fc5185789099db6a5438f782f6b8fb3fa471` |
| 22 | `theorem` | [Squarefree.isRadical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-isradical--e18ee210ddeaef9f4cec3d8c.md) | 171 | `result-track:e18ee210ddeaef9f4cec3d8c8dedbfe5fbba658389e0c8fb51a21c7ed3a81d47` |
| 23 | `theorem` | [Squarefree.dvd_pow_iff_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-dvd-pow-iff-dvd--7dd57bfd92527821c5e59b49.md) | 176 | `result-track:7dd57bfd92527821c5e59b493bef1a17fcf3195aa1b36908322e1a69ac1910af` |
| 24 | `theorem` | [IsRadical.squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/isradical-squarefree--168bca6da28f6f111c1f8ee5.md) | 183 | `result-track:168bca6da28f6f111c1f8ee5731fc1f9d16a528be2573b089822cdd34030c5bf` |
| 25 | `theorem` | [pow_dvd_of_squarefree_of_pow_succ_dvd_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/pow-dvd-of-squarefree-of-pow-succ-dvd-mul-right--449bc6d2c2cdc9aa4c39c345.md) | 191 | `result-track:449bc6d2c2cdc9aa4c39c3456012f423bc62d877b5906f9076912929a9c484a9` |
| 26 | `theorem` | [pow_dvd_of_squarefree_of_pow_succ_dvd_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/pow-dvd-of-squarefree-of-pow-succ-dvd-mul-left--bbd81acd478a3e1838a48fb6.md) | 203 | `result-track:bbd81acd478a3e1838a48fb68fd658a34584ea54f221de5c3418099953f0b85b` |
| 27 | `theorem` | [dvd_of_squarefree_of_mul_dvd_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/dvd-of-squarefree-of-mul-dvd-mul-right--6375b2967d062e8dae684c14.md) | 211 | `result-track:6375b2967d062e8dae684c143b88b5b78da45f4a34d0f0f40ad89f172fd0c635` |
| 28 | `theorem` | [dvd_of_squarefree_of_mul_dvd_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/dvd-of-squarefree-of-mul-dvd-mul-left--66a8132500c428bcacceb206.md) | 219 | `result-track:66a8132500c428bcacceb206b4b03879a6c39b1e8f529a722a14ec1fe9032951` |
| 29 | `theorem` | [dvd_of_isSquare_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/dvd-of-issquare-mul--8b92bf54d53103d3b06e661c.md) | 223 | `result-track:8b92bf54d53103d3b06e661c2aa2f24b16e5bd4a00cc88b373c68f9df1e2c97a` |
| 30 | `theorem` | [associated_of_isSquare_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/associated-of-issquare-mul--ee41dc2b7a04e0d53a675cdc.md) | 231 | `result-track:ee41dc2b7a04e0d53a675cdc8eb5d8314728f5a08b2b1f2907845722890bf682` |
| 31 | `theorem` | [squarefree_mul_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-mul-iff--a1c7537e671dbb60058fd04a.md) | 240 | `result-track:a1c7537e671dbb60058fd04a555be0b66f31a51967749f00e4e8109c84c24e0b` |
| 32 | `theorem` | [Finset.squarefree_prod_of_pairwise_isCoprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/finset-squarefree-prod-of-pairwise-iscoprime--ecbe9bac0e6ccc0206b67713.md) | 246 | `result-track:ecbe9bac0e6ccc0206b677139a09ee6988f821b81ee42771fdc7b8b26ce3f079` |
| 33 | `theorem` | [isRadical_iff_squarefree_or_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/isradical-iff-squarefree-or-zero--7e4835e4bd9f8673356bfb08.md) | 258 | `result-track:7e4835e4bd9f8673356bfb08451ce8f9ac148cd95fd430bbfe28479c69b8e704` |
| 34 | `theorem` | [isRadical_iff_squarefree_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/isradical-iff-squarefree-of-ne-zero--aa1266b95666a567b49967cc.md) | 265 | `result-track:aa1266b95666a567b49967cc5383b1845d8c1eb10b9a7a44e6e40bf21f449b36` |
| 35 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Squarefree.Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.exists_squarefree_dvd_pow_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-squarefree-variant8875a5--bc3df419177bfcc2dd40ce0e.md) | 274 | `result-track:bc3df419177bfcc2dd40ce0e8026e887947d70e6a744501cd7e98b1180e2a720` |
| 36 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Squarefree.Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.exists_sq_mul_squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-squarefree-variant8875a5--0b002806d2d1ca3dc4eb1788.md) | 291 | `result-track:0b002806d2d1ca3dc4eb178824ea464e2d008c47742792089253e3da88e124fc` |
| 37 | `theorem` | [squarefree_iff_nodup_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-iff-nodup-normalizedfactors--57ef60c61b754b553cbdf87b.md) | 304 | `result-track:57ef60c61b754b553cbdf87b49a24f935650f4bf474c3d739f1f7ad79501b176` |
| 38 | `theorem` | [squarefree_natAbs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-natabs--860860db2e6688c776b56eba.md) | 333 | `result-track:860860db2e6688c776b56ebaf83c364a00ccfbf7eafe7278bedefadcb5abd8db` |
| 39 | `theorem` | [squarefree_natCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant547ee8110343c5be14018e064bbee1d9229b64f2f7b6efd9885da476d6ff23d5.lean/declarations/squarefree-natcast--815d8fbf23c7e4e80f40ce9f.md) | 338 | `result-track:815d8fbf23c7e4e80f40ce9f57ae13acb61333732bc941d1b857a360f5a8de87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
