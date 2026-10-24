# Verification target: GRWTSK.Analysis.Orthogonal.Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "298bbe68ce3ff23442305ada597ee32d499aab25",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/index.md) · [Full source](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `298bbe68ce3ff23442305ada597ee32d499aab25`.

Source path: `GRWTSK/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Subspace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SesquilinearForm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orthogonal](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/orthogonal--8f37bafc87fac6efb036fbda.md) | 45 | `declaration-track:8f37bafc87fac6efb036fbdaa4ef14bdfb05e23e78af93b55176e085f17dba52` |
| 2 | `theorem` | [mem_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/mem-orthogonal--36d488ceec5dd35438fbae84.md) | 55 | `result-track:36d488ceec5dd35438fbae84a4d7eb80c05a6c15eb3186b362a4d730027fd020` |
| 3 | `theorem` | [mem_orthogonal'](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/mem-orthogonal--0e9c17fe98015b5576d05f43.md) | 60 | `result-track:0e9c17fe98015b5576d05f439507b9d084460f76bad1e7c24488ae017fa40e8b` |
| 4 | `theorem` | [inner_right_of_mem_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/inner-right-of-mem-orthogonal--d74da84de5248a33ac07ab64.md) | 66 | `result-track:d74da84de5248a33ac07ab645458f543244af93797454fc6e676a472ee1b314f` |
| 5 | `theorem` | [inner_left_of_mem_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/inner-left-of-mem-orthogonal--124a18e17832241642f889ac.md) | 70 | `result-track:124a18e17832241642f889ac812ec89cea0b95d733c3b0e1a256861a68477f22` |
| 6 | `theorem` | [mem_orthogonal_singleton_iff_inner_right](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/mem-orthogonal-singleton-iff-inner-right--43d2dab76521e2e1b551a338.md) | 74 | `result-track:43d2dab76521e2e1b551a33842087ff2c573648e4328432ff645e67fb531d0e7` |
| 7 | `theorem` | [mem_orthogonal_singleton_iff_inner_left](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/mem-orthogonal-singleton-iff-inner-left--1deaa56b4c35a9eb5b942b74.md) | 82 | `result-track:1deaa56b4c35a9eb5b942b74ffd629b83fae2f128a33e617d67c186352eacb86` |
| 8 | `theorem` | [sub_mem_orthogonal_of_inner_left](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/sub-mem-orthogonal-of-inner-left--8979fb7e50e3be2b547d41a6.md) | 85 | `result-track:8979fb7e50e3be2b547d41a63331644177cdf2c73305af89e24779b646918b27` |
| 9 | `theorem` | [sub_mem_orthogonal_of_inner_right](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/sub-mem-orthogonal-of-inner-right--6a60f24bcf41d76aca75406d.md) | 91 | `result-track:6a60f24bcf41d76aca75406d4f500c7694c1e09fce9de850e0f7478a9ec92ec0` |
| 10 | `theorem` | [inf_orthogonal_eq_bot](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/inf-orthogonal-eq-bot--8cf7c6a9941e76661ce3c7da.md) | 100 | `result-track:8cf7c6a9941e76661ce3c7daf5498be65d63a0d647b1abd38b809b09c69caa43` |
| 11 | `theorem` | [orthogonal_disjoint](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/orthogonal-disjoint--a2c3bceee33731523aac51ff.md) | 107 | `result-track:a2c3bceee33731523aac51ffba8b16318430484bd72073a80fc3e421620d590a` |
| 12 | `theorem` | [orthogonal_eq_inter](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/orthogonal-eq-inter--7b326cd8b14cc99a6e3dd2f2.md) | 111 | `result-track:7b326cd8b14cc99a6e3dd2f2fcad2d9157a5285cce7491cb680ec7f69001a883` |
| 13 | `theorem` | [isClosed_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isclosed-orthogonal--c0e603ac9da1e2120bc7e9b6.md) | 121 | `result-track:c0e603ac9da1e2120bc7e9b6ad88bc1307a7f69e617d4ac3962a543b335a0462` |
| 14 | `instance` | [instOrthogonalCompleteSpace](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/instorthogonalcompletespace--83d5d8be9c597dbdde2e3bb4.md) | 127 | `declaration-track:83d5d8be9c597dbdde2e3bb43bdcb4e3c3c6085655f45e3dbf62cff6f53c0d54` |
| 15 | `theorem` | [orthogonal_gc](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/orthogonal-gc--e7f205e5b506d525b50f2f63.md) | 134 | `result-track:e7f205e5b506d525b50f2f6327ae4cc8cbcb7fef4046594e17f50696a7109680` |
| 16 | `theorem` | [orthogonal_le](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/orthogonal-le--1875afacfa1fe8607ea4f0e6.md) | 143 | `result-track:1875afacfa1fe8607ea4f0e6b9b1294c1dd3c4a297ec00ff4f0a58600521bdd1` |
| 17 | `theorem` | [orthogonal_orthogonal_monotone](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/orthogonal-orthogonal-monotone--70d416f47ecd3be97b8499e2.md) | 148 | `result-track:70d416f47ecd3be97b8499e27e5a0606ca781c3113dc7f6eb0e83cae989a3fdb` |
| 18 | `theorem` | [le_orthogonal_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/le-orthogonal-orthogonal--293522a48479c37bc03b4018.md) | 152 | `result-track:293522a48479c37bc03b40183e0cf897a9d313ff0bf1015f828b1e89f9d2afd8` |
| 19 | `theorem` | [inf_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/inf-orthogonal--18c1c94235ae282c371e88e5.md) | 157 | `result-track:18c1c94235ae282c371e88e57bb227b7057e0b23dab5d75e276fc378e080c7da` |
| 20 | `theorem` | [iInf_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/iinf-orthogonal--926a8cd921521b547f457873.md) | 162 | `result-track:926a8cd921521b547f457873f96228c0b6ab51ece40892a44d0f7f60887866ab` |
| 21 | `theorem` | [sInf_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/sinf-orthogonal--b5d87dbfbd8c32d412785af6.md) | 166 | `result-track:b5d87dbfbd8c32d412785af64e33e7b21a5b8c0d0d38f6c08f2e5f47c3e3cd3e` |
| 22 | `theorem` | [top_orthogonal_eq_bot](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/top-orthogonal-eq-bot--18761031c7f13d64a8293f40.md) | 170 | `result-track:18761031c7f13d64a8293f406f80c85614231a1ebf5ca5d10c314ebe400e4764` |
| 23 | `theorem` | [bot_orthogonal_eq_top](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/bot-orthogonal-eq-top--0e343447f7663979f2462895.md) | 179 | `result-track:0e343447f7663979f246289507922806316b82e35e970077e7b9984f83c2c955` |
| 24 | `theorem` | [orthogonal_eq_top_iff](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/orthogonal-eq-top-iff--883682d65837b3d10a9fa3ad.md) | 184 | `result-track:883682d65837b3d10a9fa3adf52ea42aec18218ce8f63edc5d574593dc6f502a` |
| 25 | `theorem` | [orthogonalFamily_self](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/orthogonalfamily-self--6569390f8db37a94e678bfe7.md) | 193 | `result-track:6569390f8db37a94e678bfe7234370a878d1c83f6c65aa4b6a862e97a5704291` |
| 26 | `theorem` | [bilinFormOfRealInner_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/bilinformofrealinner-orthogonal--ba23b0a0395eb86a1e1b354e.md) | 203 | `result-track:ba23b0a0395eb86a1e1b354e659410654a1098ec33dcde92c6396d203bf19e67` |
| 27 | `def` | [IsOrtho](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho--2cb5d9a80139f759609da33f.md) | 219 | `declaration-track:2cb5d9a80139f759609da33fce5868e249a8c531ae9c65b0ab69fb5039236908` |
| 28 | `theorem` | [isOrtho_iff_le](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-iff-le--7b8f1c6e098a184f626edd91.md) | 225 | `result-track:7b8f1c6e098a184f626edd911a865240d1a7debfaa439ed4ef6fee626c97a009` |
| 29 | `theorem` | [IsOrtho.symm](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-symm--980113dbde1cfa5ebcdf48c3.md) | 229 | `result-track:980113dbde1cfa5ebcdf48c3f1b041a980b985f12957dc351bba88bd782be38f` |
| 30 | `theorem` | [isOrtho_comm](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-comm--fc890eb7858d22786bcc8b7e.md) | 232 | `result-track:fc890eb7858d22786bcc8b7e82b852ea6427ec80669a00143e0d34b79fd97707` |
| 31 | `theorem` | [symmetric_isOrtho](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/symmetric-isortho--423a2b88ca02ceced9645182.md) | 235 | `result-track:423a2b88ca02ceced96451824e424334a6472df86d5d225c5608c09321bc0890` |
| 32 | `theorem` | [IsOrtho.inner_eq](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-inner-eq--5f7a63e7dd84abd117f51e5d.md) | 238 | `result-track:5f7a63e7dd84abd117f51e5d538f4e9abae24b532d499ee7105f7cc233d42a00` |
| 33 | `theorem` | [isOrtho_iff_inner_eq](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-iff-inner-eq--f55203d10d8307dd7fc953b3.md) | 242 | `result-track:f55203d10d8307dd7fc953b3025a07046d23ff99dac9e2fd769fb878187f8e17` |
| 34 | `theorem` | [isOrtho_bot_left](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-bot-left--4c9f88a4fef4053a98934261.md) | 248 | `result-track:4c9f88a4fef4053a9893426126ab006628a04dd29b1291776e95f311ff867fe7` |
| 35 | `theorem` | [isOrtho_bot_right](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-bot-right--a3c3dd7cea36f148da62f817.md) | 252 | `result-track:a3c3dd7cea36f148da62f817ada54b0caea54d68252a56dcce905d3f37a55cb2` |
| 36 | `theorem` | [IsOrtho.mono_left](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-mono-left--b73b9a13cfa7a89fd480f319.md) | 255 | `result-track:b73b9a13cfa7a89fd480f3191f7f30988fb60ae7937429d27384815cc9f0fa25` |
| 37 | `theorem` | [IsOrtho.mono_right](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-mono-right--97ca21508cb1edc250624fbb.md) | 258 | `result-track:97ca21508cb1edc250624fbb8bd7f6bf9f09491035d647869f7a40d50038e6b6` |
| 38 | `theorem` | [IsOrtho.mono](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-mono--87b9d100aa84f6100d0d2d33.md) | 261 | `result-track:87b9d100aa84f6100d0d2d33b3868505a3e2038329f658d328f77edd32c88325` |
| 39 | `theorem` | [isOrtho_self](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-self--8fa8c2a5ff0ea9b046bfa969.md) | 266 | `result-track:8fa8c2a5ff0ea9b046bfa9695bbf29447f0dbcd631dad001a2b387b42dcec2d5` |
| 40 | `theorem` | [isOrtho_orthogonal_right](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-orthogonal-right--66f30e42227971b1dcbb0e27.md) | 271 | `result-track:66f30e42227971b1dcbb0e278978c661c4e8c3fa5d266ce0ab368ced11421861` |
| 41 | `theorem` | [isOrtho_orthogonal_left](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-orthogonal-left--58ba4da90502c67dcc4c805f.md) | 275 | `result-track:58ba4da90502c67dcc4c805f7d9e0e049319e5406a560d3caef6a872f8ee3db6` |
| 42 | `theorem` | [IsOrtho.le](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-le--783efc9ec22ab7d98ba54396.md) | 278 | `result-track:783efc9ec22ab7d98ba543964ec4df73c5d76da471e1dc36a42e113103cca51d` |
| 43 | `theorem` | [IsOrtho.ge](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-ge--c7a4376bc3ae6cd534edc278.md) | 281 | `result-track:c7a4376bc3ae6cd534edc2788e96f84a6a18d90940e3ee6acdefa52119e18830` |
| 44 | `theorem` | [isOrtho_top_right](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-top-right--10c2ffcf557bbe278abee049.md) | 285 | `result-track:10c2ffcf557bbe278abee049af8fa35dd9457349df83cf73c8240dfbd62678a2` |
| 45 | `theorem` | [isOrtho_top_left](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-top-left--c606089e34b60bd0e22a1af7.md) | 290 | `result-track:c606089e34b60bd0e22a1af77cc1bbc635da0644df2cd125aa73953e174c751d` |
| 46 | `theorem` | [IsOrtho.disjoint](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-disjoint--391dbfb642464f9acd450f30.md) | 294 | `result-track:391dbfb642464f9acd450f302ea328ee35e58edb2535602fc38f908fd8111693` |
| 47 | `theorem` | [isOrtho_sup_left](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-sup-left--f0af21a8ccfa03be4991caf4.md) | 298 | `result-track:f0af21a8ccfa03be4991caf4dbdf34485d81b8dd273a7f521e884a21d364c30d` |
| 48 | `theorem` | [isOrtho_sup_right](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-sup-right--dfa2dc30d6afb76533b07747.md) | 302 | `result-track:dfa2dc30d6afb76533b0774736d3f809aac043858a5e906b8f1abd1e024c79fc` |
| 49 | `theorem` | [isOrtho_sSup_left](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-ssup-left--24862d667c7b9c18646c58cd.md) | 306 | `result-track:24862d667c7b9c18646c58cdecf954c0b334e85ad1bc0c764349109e02f46f9b` |
| 50 | `theorem` | [isOrtho_sSup_right](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-ssup-right--2508e91ac7a7eadba1907627.md) | 311 | `result-track:2508e91ac7a7eadba19076278abb891492f4fcdd9a871a68760f5927e7f4b0e9` |
| 51 | `theorem` | [isOrtho_iSup_left](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-isup-left--3a03fcaf53d60c6b3b8eb794.md) | 316 | `result-track:3a03fcaf53d60c6b3b8eb794736a0ec017d843c3de11d2c1ed2832280ced4249` |
| 52 | `theorem` | [isOrtho_iSup_right](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-isup-right--4805d3e7c676805db479a84e.md) | 321 | `result-track:4805d3e7c676805db479a84efdda0121f1fff4d5b63d95f2a783f0885ace72ae` |
| 53 | `theorem` | [isOrtho_span](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-span--3d76bda9eccd6e6cad1b3a93.md) | 326 | `result-track:3d76bda9eccd6e6cad1b3a932281d0ca0ba8099e60d3bd5684b0565428d4949e` |
| 54 | `theorem` | [IsOrtho.map](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-map--c0f15d17b5a50ed7148ec3c8.md) | 332 | `result-track:c0f15d17b5a50ed7148ec3c8512f597cda64aa0516548c275c02402007422086` |
| 55 | `theorem` | [IsOrtho.comap](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-comap--2dd9a2633450687eadf569e3.md) | 338 | `result-track:2dd9a2633450687eadf569e3ad096ee769e3156f8f5cd9cd4733d7f30374c656` |
| 56 | `theorem` | [IsOrtho.map_iff](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-map-iff--7c5f8a547fea054ef8586aec.md) | 346 | `result-track:7c5f8a547fea054ef8586aec432628277ef3486808880a556582de94d5bd7beb` |
| 57 | `theorem` | [IsOrtho.comap_iff](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/isortho-comap-iff--2ef59a993cdf371808f8599d.md) | 353 | `result-track:2ef59a993cdf371808f8599d106186a62ff0e371fe183c1cb127122e2b52c32a` |
| 58 | `theorem` | [orthogonalFamily_iff_pairwise](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/orthogonalfamily-iff-pairwise--2b9d1c9078d9f47cf7aa9d67.md) | 362 | `result-track:2b9d1c9078d9f47cf7aa9d67807caa1fdc2015b8af33c9ca6fd49a80013620c5` |
| 59 | `theorem` | [OrthogonalFamily.isOrtho](../../../../mathematics/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/declarations/orthogonalfamily-isortho--c7a9439a0c86231a7e1bbd92.md) | 372 | `result-track:c7a9439a0c86231a7e1bbd92057183f26d22ef56e0a569ddfceef40d12f75735` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
