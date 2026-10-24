# Verification target: GRWTSK.Algebra.LinearAlgebra.OfAssociative.Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ca691aa4b7341e6d71704c59787ca0f4cee8ba4",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ca691aa4b7341e6d71704c59787ca0f4cee8ba4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Subalgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Submodule` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/instance--323eae4f308a6b0f3f39f936.md) | 45 | `declaration-track:323eae4f308a6b0f3f39f9365ac191bfe703fb375816d9492a1e7c8bb649a074` |
| 2 | `theorem` | [of_associative_ring_bracket](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/of-associative-ring-bracket--11c65c4c93ce49a29ad1d421.md) | 52 | `result-track:11c65c4c93ce49a29ad1d421b5fa332ef6a71bd862163e9365d6a290ba964905` |
| 3 | `theorem` | [lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/lie-apply--7d9436bb5f011b0bd8d558ef.md) | 56 | `result-track:7d9436bb5f011b0bd8d558ef2dacb85c8213d9ce36c4e72fb76b173e7468a5ed` |
| 4 | `abbrev` | [LieRingModule.ofAssociativeModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/lieringmodule-ofassociativemodule--265ef1dc75315092702c5c93.md) | 75 | `declaration-track:265ef1dc75315092702c5c937bcd33d80722423bc12b3f466b4552b73189a487` |
| 5 | `theorem` | [lie_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/lie-eq-smul--b25e26d0f1a008c2723aabcf.md) | 83 | `result-track:b25e26d0f1a008c2723aabcff6f20f6f1a24100d5d09656d8de70868c5ea504f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/instance--822df0166cd3f6d2b6ca0d39.md) | 94 | `declaration-track:822df0166cd3f6d2b6ca0d39965f98fe54e7d3af3c44a1eb5eb5986c8e5bebb9` |
| 7 | `theorem` | [LieModule.ofAssociativeModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liemodule-ofassociativemodule--0c31cded90a8f157ad91dac2.md) | 110 | `result-track:0c31cded90a8f157ad91dac22f9b95f34bc05d98a0ef421238d5d639d8a56159` |
| 8 | `instance` | [Module.End.instLieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/module-end-instlieringmodule--d6a8ab52c837f3a1de135c53.md) | 114 | `declaration-track:d6a8ab52c837f3a1de135c531d837469a2615c411e87b6f30a8d8c9702f9b5a1` |
| 9 | `instance` | [Module.End.instLieModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/module-end-instliemodule--8db7d4670d3545ecc82178bb.md) | 117 | `declaration-track:8db7d4670d3545ecc82178bbe93a286aa16fd4ba887a33ab36c5af7c102300b1` |
| 10 | `lemma` | [Module.End.lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/module-end-lie-apply--fa6316844fe869c909179b0c.md) | 120 | `result-track:fa6316844fe869c909179b0c53a856af382916d8a9dcad5667486d09fe6ad711` |
| 11 | `def` | [toLieHom](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/toliehom--4c7f9735ac0ec5a2068c084d.md) | 131 | `declaration-track:4c7f9735ac0ec5a2068c084dac9205146e1893b82b56f0c6a375f982932defc7` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/instance--eea006a4672a9ef39ef940fb.md) | 135 | `declaration-track:eea006a4672a9ef39ef940fb48584c331ffc2077b4b35f5863112095d1b35826` |
| 13 | `theorem` | [coe_toLieHom](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/coe-toliehom--d1dd4b7f31db95ab2b6e20db.md) | 139 | `result-track:d1dd4b7f31db95ab2b6e20dbfdb3605fcf8c579c5d8d92d53d79ecfb3108962a` |
| 14 | `theorem` | [toLieHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/toliehom-apply--e0cfc74c6f81d27ea180732c.md) | 142 | `result-track:e0cfc74c6f81d27ea180732c67c485de06e01b93ed701976fb53d753871274ba` |
| 15 | `theorem` | [toLieHom_id](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/toliehom-id--f1549f183b71846fad8028e2.md) | 146 | `result-track:f1549f183b71846fad8028e2cc16f3ead68b5a76a69bbc69e449a9528d8fc0b3` |
| 16 | `theorem` | [toLieHom_comp](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/toliehom-comp--72a14ceb5d48adacf7e29f09.md) | 150 | `result-track:72a14ceb5d48adacf7e29f099fc0d3c1068607c1f8641011de0e83daee285b2a` |
| 17 | `theorem` | [toLieHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/toliehom-injective--94410cbde22e151398c96a6c.md) | 153 | `result-track:94410cbde22e151398c96a6c83b7ff8d533e01b1f4139abbffc03892e027d780` |
| 18 | `def` | [LieModule.toEnd](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liemodule-toend--c19fb0cc50c7053aba7988de.md) | 172 | `declaration-track:c19fb0cc50c7053aba7988de2e147a7a66d9bd6080353d35a0537b8bbf4667de` |
| 19 | `def` | [LieAlgebra.ad](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liealgebra-ad--00bdd385691db0510fb1ee81.md) | 182 | `declaration-track:00bdd385691db0510fb1ee8114b33032611193e64aad6b021f74c8192a7029be` |
| 20 | `theorem` | [LieAlgebra.ad_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liealgebra-ad-apply--0874fb5a67d2c2c5f7cf1a3e.md) | 186 | `result-track:0874fb5a67d2c2c5f7cf1a3e5e03d247027639fb378b699ac75c63573c543c20` |
| 21 | `theorem` | [LieModule.toEnd_module_end](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liemodule-toend-module-end--742998c08a3fd75e437f5416.md) | 190 | `result-track:742998c08a3fd75e437f54161c1e2d7defc278e4d92bb0cf2445bc9966af95d4` |
| 22 | `theorem` | [LieSubalgebra.toEnd_eq](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liesubalgebra-toend-eq--e4743d9d7c40e79ce2fff8a3.md) | 193 | `result-track:e4743d9d7c40e79ce2fff8a3a4649d25e5ac5d63f0a37eb1632b578075ccb08f` |
| 23 | `theorem` | [LieSubalgebra.toEnd_mk](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liesubalgebra-toend-mk--06d78b148fe47debc04d771f.md) | 198 | `result-track:06d78b148fe47debc04d771f2372d224e66b846bc4fd01f43f96e838e462ac42` |
| 24 | `class` | [IsFaithful](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/isfaithful--d409afd6bd1efe5c1f0a61fc.md) | 210 | `declaration-track:d409afd6bd1efe5c1f0a61fcb32a0b9140e73a20d1f390146b8d617ed64311cb` |
| 25 | `lemma` | [toEnd_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/toend-eq-iff--1759598ad03227a2a62d0ebc.md) | 214 | `result-track:1759598ad03227a2a62d0ebc1ac72606ea7652dfd2f723d1d1aa6492d231578e` |
| 26 | `lemma` | [ext_of_isFaithful](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/ext-of-isfaithful--5d5837a4f61470db8cef05de.md) | 219 | `result-track:5d5837a4f61470db8cef05dee1c88460f1ba90987eaad9cbbf2d3b837a196a93` |
| 27 | `lemma` | [toEnd_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/toend-eq-zero-iff--f6b29e7e3d88c843b5279336.md) | 224 | `result-track:f6b29e7e3d88c843b52793367a6902bfc11bdafc7e83fa98a0990e091bc8142e` |
| 28 | `lemma` | [isFaithful_iff'](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/isfaithful-iff--9a9d5ea508b8d4c472167694.md) | 228 | `result-track:9a9d5ea508b8d4c4721676949de95c677c21c7729cbc783a557a4b6e4ea7ad2e` |
| 29 | `lemma` | [LieSubmodule.coe_toEnd](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liesubmodule-coe-toend--f57d943f3e078a78bc117d0a.md) | 245 | `result-track:f57d943f3e078a78bc117d0a7dbeec5155ead2510181763684fb83c7d6569684` |
| 30 | `lemma` | [LieSubmodule.coe_toEnd_pow](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liesubmodule-coe-toend-pow--697f0a847ead957781ac6f4c.md) | 248 | `result-track:697f0a847ead957781ac6f4cd04379e7689dd84ef857b4cec4f71eec38410083` |
| 31 | `lemma` | [LieSubalgebra.coe_ad](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liesubalgebra-coe-ad--2b857ab9f49a28b3c65ce79c.md) | 254 | `result-track:2b857ab9f49a28b3c65ce79c68920e6c9bcd1d48517556ae5a73a5e5443b9e66` |
| 32 | `lemma` | [LieSubalgebra.coe_ad_pow](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liesubalgebra-coe-ad-pow--8c0257a8da81d56b3df2c6cc.md) | 257 | `result-track:8c0257a8da81d56b3df2c6ccc25523ba3bd283b4525107b00e1998a4153d048e` |
| 33 | `lemma` | [LieModule.toEnd_lie](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liemodule-toend-lie--b6525633c2d987f0df5b15e8.md) | 265 | `result-track:b6525633c2d987f0df5b15e814f582474ec6807672b10f56ff639a4c5af6ac5a` |
| 34 | `lemma` | [LieAlgebra.ad_lie](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liealgebra-ad-lie--71a40bf3be267a97d00337f8.md) | 269 | `result-track:71a40bf3be267a97d00337f8918b56c465fcb0d50b43ecffd2547eeddcb61618` |
| 35 | `lemma` | [LieModule.toEnd_pow_lie](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liemodule-toend-pow-lie--745decc73bed42077f92709a.md) | 274 | `result-track:745decc73bed42077f92709a78cfd8dc99b1293927fc3dbaea1d58a89a2db03b` |
| 36 | `lemma` | [LieAlgebra.ad_pow_lie](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liealgebra-ad-pow-lie--9d1f18be207dee6a3c44ad27.md) | 290 | `result-track:9d1f18be207dee6a3c44ad277aacef72583c84ea7101d7e27bd79b8b2e23e2f6` |
| 37 | `lemma` | [toEnd_pow_comp_lieHom](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/toend-pow-comp-liehom--f3212539e6bc100ce0e6b143.md) | 304 | `result-track:f3212539e6bc100ce0e6b143d145c3b242b3817a41bccdc0db8961137ed07812` |
| 38 | `lemma` | [toEnd_pow_apply_map](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/toend-pow-apply-map--81f01cbc6a9fdc3851dc82c9.md) | 310 | `result-track:81f01cbc6a9fdc3851dc82c9d2cea2716b7028d0e798c36aaa42565198482be9` |
| 39 | `theorem` | [coe_map_toEnd_le](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/coe-map-toend-le--0231f3c060749ae372344117.md) | 322 | `result-track:0231f3c060749ae3723441170a2a06a572d82ec881a8a70e01e51fbc4e8654fe` |
| 40 | `theorem` | [toEnd_comp_subtype_mem](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/toend-comp-subtype-mem--cd4687f40ee0b872103813eb.md) | 329 | `result-track:cd4687f40ee0b872103813eb48ec7fb826efd4e308a872310b95d1ca9f94007d` |
| 41 | `theorem` | [toEnd_restrict_eq_toEnd](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/toend-restrict-eq-toend--f0284ddb01f5608587e683d8.md) | 334 | `result-track:f0284ddb01f5608587e683d8cae13f73fb28605d0add489b4b93d6b258e4e3df` |
| 42 | `lemma` | [mapsTo_pow_toEnd_sub_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/mapsto-pow-toend-sub-algebramap--88d7eac62e5871ffa2a32da5.md) | 341 | `result-track:88d7eac62e5871ffa2a32da5fc61549c05432fb964be286a96ac0d3ee3f7e7f9` |
| 43 | `theorem` | [LieAlgebra.ad_eq_lmul_left_sub_lmul_right](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liealgebra-ad-eq-lmul-left-sub-lmul-right--560b99284bd70b6c4587f4f6.md) | 350 | `result-track:560b99284bd70b6c4587f4f6412c09c5f7f7c174df99b45a293c4f2ac195dbf3` |
| 44 | `theorem` | [LieSubalgebra.ad_comp_incl_eq](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liesubalgebra-ad-comp-incl-eq--5bf38d0216d980972d2057c7.md) | 354 | `result-track:5bf38d0216d980972d2057c76dcdff625b4cf9cb689a9012ec280209860fdbb0` |
| 45 | `def` | [lieSubalgebraOfSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/liesubalgebraofsubalgebra--68603f7b7b1f07df3149e725.md) | 363 | `declaration-track:68603f7b7b1f07df3149e7254524d7d4629f34a0f391cedd309f81914dd5ae64` |
| 46 | `def` | [lieConj](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/lieconj--d91d4735a90aad70926e1480.md) | 380 | `declaration-track:d91d4735a90aad70926e148074364416527f2403cb7ab1da4e42feadbb8dd026` |
| 47 | `theorem` | [lieConj_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/lieconj-apply--c9672bd4e39a1c1b53c95353.md) | 388 | `result-track:c9672bd4e39a1c1b53c953531661ee0914614d958388d5c87239c16da0c6a1fd` |
| 48 | `theorem` | [lieConj_symm](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/lieconj-symm--88b1d01004022047dda1ec37.md) | 392 | `result-track:88b1d01004022047dda1ec374a29fac72658b02a8b63f923edf3bd6e4b3d62c6` |
| 49 | `def` | [toLieEquiv](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/tolieequiv--b6bd42a83952c338bda82d6f.md) | 404 | `declaration-track:b6bd42a83952c338bda82d6f72819caefe3462ad660fe905b503bc1c400eda74` |
| 50 | `theorem` | [toLieEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/tolieequiv-apply--9a735d10381f02ec4eb942bd.md) | 412 | `result-track:9a735d10381f02ec4eb942bd80830b5143a2611ad97fd8da6ecd65b235fdc00a` |
| 51 | `theorem` | [toLieEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/tolieequiv-symm-apply--25819dbd5f6e0cedb567a026.md) | 416 | `result-track:25819dbd5f6e0cedb567a026a71e0b1c1fdc487e2b90a9b8e8308e48318ba674` |
| 52 | `lemma` | [conj_ad_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/declarations/conj-ad-apply--d0187048c35a7f81db32c0f2.md) | 432 | `result-track:d0187048c35a7f81db32c0f256ddb90318a6ce4558278cfc38c8bf48778a802a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
