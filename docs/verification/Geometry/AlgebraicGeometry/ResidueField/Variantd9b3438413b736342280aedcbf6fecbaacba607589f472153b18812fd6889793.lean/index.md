# Verification target: GRWTSK.Geometry.AlgebraicGeometry.ResidueField.Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "792670dd14036d842d52537264831e99cd46bdd8",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `792670dd14036d842d52537264831e99cd46bdd8`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Stalk` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace.ResidueField` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [residueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residuefield--3f2d1482a9242089e06587e3.md) | 41 | `declaration-track:3f2d1482a9242089e06587e3bc24c44ef2dc52e02b51767bd2d4cbae9a1725fc` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/instance--398709a9063467efe88a7290.md) | 44 | `declaration-track:398709a9063467efe88a72904353f824bf29290f5be0864e30cfc8bbafb00c83` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/instance--9deac615dc2ef36564c58c2d.md) | 47 | `declaration-track:9deac615dc2ef36564c58c2d4ccf8b58db620218e38d21e4de762f0d16408dd7` |
| 4 | `def` | [residue](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residue--edfe15d77cbf984780e31bf8.md) | 51 | `declaration-track:edfe15d77cbf984780e31bf8f173b6a661dbd9261914e3df5931296dbcddd00a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/instance--cffad5b29e9452a72d8713a5.md) | 56 | `declaration-track:cffad5b29e9452a72d8713a5f3c0977a70f05a5379e858e079f8cb1f71b90faa` |
| 6 | `lemma` | [Spec_map_residue_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/spec-map-residue-apply--ba32be3f1b6e8a95b3b320a3.md) | 63 | `result-track:ba32be3f1b6e8a95b3b320a356328d5e0b9210fd2100aa4b7f0b07cf551e0c8e` |
| 7 | `lemma` | [residue_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residue-surjective--61c012114ecfa84c310cf011.md) | 67 | `result-track:61c012114ecfa84c310cf0115eb89a4d7d6a5ecb2d8302b16999ea3e16dacd4c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/instance--75fb645fa99fb1e92fd03f1a.md) | 70 | `declaration-track:75fb645fa99fb1e92fd03f1a9b7b16a8f1d8b37e382fd70f0f026e5c66837137` |
| 9 | `def` | [descResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/descresiduefield--a9d16d7bfcc3c069da21aa1e.md) | 75 | `declaration-track:a9d16d7bfcc3c069da21aa1eafc51fbf5d6f88b4258d30a3d807ad09ab2967a3` |
| 10 | `lemma` | [residue_descResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residue-descresiduefield--7a2f9bee8315ea8299f13f40.md) | 81 | `result-track:7a2f9bee8315ea8299f13f402ba0fd72ff4fc1089c2f8b4d2c8b702cdabb94f2` |
| 11 | `def` | [evaluation](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/evaluation--9ff10b2c188d54e366f3fb8a.md) | 93 | `declaration-track:9ff10b2c188d54e366f3fb8a96b418b41cd4fa6b7486426003fb21d2bfbaca5c` |
| 12 | `lemma` | [germ_residue](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/germ-residue--1e2dc4c2c5d3edff42b13fcc.md) | 97 | `result-track:1e2dc4c2c5d3edff42b13fcc3c54ded504d2308d78d2210931c71f49145624d2` |
| 13 | `abbrev` | [Γevaluation](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/evaluation--903e4c6b6c7123a93486b94b.md) | 100 | `declaration-track:903e4c6b6c7123a93486b94b4da0fd45f6d76bb9282bb32b760ef6e99780f2b3` |
| 14 | `lemma` | [evaluation_eq_zero_iff_notMem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/evaluation-eq-zero-iff-notmem-basicopen--535990e68703a26bb58d05d8.md) | 104 | `result-track:535990e68703a26bb58d05d8e7820aaf7ef0ff3d111c30a60abe1f11d710ef54` |
| 15 | `lemma` | [evaluation_ne_zero_iff_mem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/evaluation-ne-zero-iff-mem-basicopen--459f93e1446e5562da603fa5.md) | 111 | `result-track:459f93e1446e5562da603fa561bc140c47922398b1a4f1804c66c0afd36e1d29` |
| 16 | `lemma` | [basicOpen_eq_bot_iff_forall_evaluation_eq_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/basicopen-eq-bot-iff-forall-evaluation-eq-zero--6a31dd8b5204ad07817936e7.md) | 115 | `result-track:6a31dd8b5204ad07817936e7db5579e2d66bf5debbc999f5ba10595c718496de` |
| 17 | `def` | [Hom.residueFieldMap](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/hom-residuefieldmap--4faec969d22ca06592a34cc5.md) | 123 | `declaration-track:4faec969d22ca06592a34cc5d2c29d83740a82975787c3659a9f150b8062272c` |
| 18 | `lemma` | [residue_residueFieldMap](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residue-residuefieldmap--7b7ec5309b80e8b33335ef78.md) | 128 | `result-track:7b7ec5309b80e8b33335ef784c63133ef6813309ff5d4146c05d0355c9767f02` |
| 19 | `lemma` | [residueFieldMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residuefieldmap-id--2413c78179966b07af1b6dd0.md) | 134 | `result-track:2413c78179966b07af1b6dd0f5011105faaed2c08eb28605ce90d95def3b4cf4` |
| 20 | `lemma` | [residueFieldMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residuefieldmap-comp--6b91f99e0d37047444430df0.md) | 139 | `result-track:6b91f99e0d37047444430df07bcab4cd22fcbbc45f20c01bcc301ec8b8f3e6d5` |
| 21 | `lemma` | [evaluation_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/evaluation-naturality--3194814e9e8192abc36eddd5.md) | 144 | `result-track:3194814e9e8192abc36eddd532bd93a5a4e30add1a1eb0a288729ef7403d470e` |
| 22 | `lemma` | [evaluation_naturality_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/evaluation-naturality-apply--bfd83a8a77d431e7aeba11b3.md) | 149 | `result-track:bfd83a8a77d431e7aeba11b3c1a2204cac8715a1d63ce82be8a03acbbc206778` |
| 23 | `lemma` | [Γevaluation_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/evaluation-naturality--7a07f85b04fc11be62457620.md) | 155 | `result-track:7a07f85b04fc11be62457620a83818f4bd7fc8805f18842391db8036bbb45cfb` |
| 24 | `lemma` | [Γevaluation_naturality_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/evaluation-naturality-apply--44f84a188a736dae69f64456.md) | 160 | `result-track:44f84a188a736dae69f644568626650417b8d2f0fbbc073e159eae4e4abb9267` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/instance--43dd887db3681bdc58049e91.md) | 165 | `declaration-track:43dd887db3681bdc58049e917e4383750a718c896e8cf2007ed5d7fe782b1d87` |
| 26 | `def` | [residueFieldCongr](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residuefieldcongr--51f1178dacdc4d6414ecd3c5.md) | 173 | `declaration-track:51f1178dacdc4d6414ecd3c5b46402c506468ac119eb0a17088de35ab0bb6e7f` |
| 27 | `lemma` | [residueFieldCongr_refl](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residuefieldcongr-refl--8c32e0d56e649fec40a61ade.md) | 178 | `result-track:8c32e0d56e649fec40a61ade0999045bc22b816b32c8522a8aec017b16eab642` |
| 28 | `lemma` | [residueFieldCongr_symm](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residuefieldcongr-symm--92fdf3b08965c350146e7c45.md) | 182 | `result-track:92fdf3b08965c350146e7c45e6bf587de942fe07d6c699608daea561c3b2934c` |
| 29 | `lemma` | [residueFieldCongr_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residuefieldcongr-inv--4fc03d74eb892139e0d24246.md) | 186 | `result-track:4fc03d74eb892139e0d24246025e307d179a13b93dbf64121d347ce9ec3bb8d4` |
| 30 | `lemma` | [residueFieldCongr_trans](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residuefieldcongr-trans--0b785b4b84bcf736edfae496.md) | 190 | `result-track:0b785b4b84bcf736edfae4967bad363bc8d63e25d78bba0addb972280de47768` |
| 31 | `lemma` | [residueFieldCongr_trans_hom](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residuefieldcongr-trans-hom--ccf43cc6234d3d0abeae2702.md) | 196 | `result-track:ccf43cc6234d3d0abeae2702f456f5a5b44e7aee0e01c4ad5209ad9dbab706e8` |
| 32 | `lemma` | [residue_residueFieldCongr](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residue-residuefieldcongr--1e574a4977d85cb38e802326.md) | 203 | `result-track:1e574a4977d85cb38e802326d6bef0d9a43fc9bf2bc13317b2d5801ebf139e7d` |
| 33 | `lemma` | [Hom.residueFieldMap_congr](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/hom-residuefieldmap-congr--c8a1537f8c835186c8bfcf2c.md) | 209 | `result-track:c8a1537f8c835186c8bfcf2c63a8c4544e552541ba59415af9115673c930db70` |
| 34 | `def` | [fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/fromspecresiduefield--de2427a664e1e6a35eb64684.md) | 218 | `declaration-track:de2427a664e1e6a35eb64684f37d3ea8f353f8d767e1627b7d8f08144648ebce` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/instance--c7a44f39a9794b99697f5005.md) | 222 | `declaration-track:c7a44f39a9794b99697f500583a7f453e0772f0d1a011e3f6c394923cf7e3dd3` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/instance--67f0d3487b516514d9e2e5cc.md) | 228 | `declaration-track:67f0d3487b516514d9e2e5cc5a6510605f4d2fce0ca5f702204ce9b88b6dca81` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/instance--2330d027b51220129885303a.md) | 231 | `declaration-track:2330d027b51220129885303ae93965e050c855e34865ed8c83944371ae5aa536` |
| 38 | `lemma` | [residueFieldCongr_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/residuefieldcongr-fromspecresiduefield--78a2fcc3dca84bdfa94764da.md) | 234 | `result-track:78a2fcc3dca84bdfa94764dae5c2b33fc2639f07e525c562b01ec6f049f09779` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/instance--bfebf98f9cc9715faa12955f.md) | 239 | `declaration-track:bfebf98f9cc9715faa12955f8640866642bb5afa9a0ce58200ee6422434ae723` |
| 40 | `lemma` | [Hom.Spec_map_residueFieldMap_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/hom-spec-map-residuefieldmap-fromspecresiduefield--960642dfd13d3953cbd65e5e.md) | 242 | `result-track:960642dfd13d3953cbd65e5e57e1e6dc59f560fa98042bfc06a9bb44424501d4` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/instance--269c565e57af4a10777a2192.md) | 250 | `declaration-track:269c565e57af4a10777a21925815e56850b66f5464aac0676885f5d9a8a61b4c` |
| 42 | `lemma` | [fromSpecResidueField_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/fromspecresiduefield-apply--cd88be8fd59929a705a6c9df.md) | 253 | `result-track:cd88be8fd59929a705a6c9df0bfa73ff2d45fed156a1c361174eac72e6803cf6` |
| 43 | `lemma` | [range_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/range-fromspecresiduefield--2e79ccc7fb6257f34019b7e5.md) | 257 | `result-track:2e79ccc7fb6257f34019b7e552b2e53bd750904da768d5409c264f3fdc9c345a` |
| 44 | `lemma` | [descResidueField_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/descresiduefield-fromspecresiduefield--d9fb79d821b17f79583438e3.md) | 267 | `result-track:d9fb79d821b17f79583438e3697a1ef2b0bd6535802ded8fca4c821aaa92f549` |
| 45 | `lemma` | [descResidueField_stalkClosedPointTo_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/descresiduefield-stalkclosedpointto-fromspecresiduefield--5c0f8d5b4044a5a717279e9f.md) | 273 | `result-track:5c0f8d5b4044a5a717279e9f745997a9b0cb8cbc27a71cd146dd082da6149667` |
| 46 | `lemma` | [SpecToEquivOfField_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/spectoequivoffield-eq-iff--99350b7f0e65c0d4b1f433f2.md) | 284 | `result-track:99350b7f0e65c0d4b1f433f2b4623aebd9ae5787d1909a63d820f1b86caeb600` |
| 47 | `def` | [SpecToEquivOfField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variantd9b3438413b736342280aedcbf6fecbaacba607589f472153b18812fd6889793.lean/declarations/spectoequivoffield--70a88ac8ee13ffe8aad35f63.md) | 297 | `declaration-track:70a88ac8ee13ffe8aad35f63fcf9a0d29ad7344eeaed84acd09dc6a71dea9fd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
