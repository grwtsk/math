# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sobolev.Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cc5a5a46d98f4b603b44282490fa1d35ff2de56",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cc5a5a46d98f4b603b44282490fa1d35ff2de56`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Deriv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CS](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/cs--00ec1aa2a556ffbfc0fe21d8.md) | 22 | `declaration-track:00ec1aa2a556ffbfc0fe21d8f400ed239408e071bba10a9d5a6f739d8da9bbcf` |
| 2 | `structure` | [trunc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/trunc--c1a144ed303de44ee0deee0f.md) | 27 | `declaration-track:c1a144ed303de44ee0deee0f293a9f2e4f7365be83a87f3a1b515cd7f6886177` |
| 3 | `structure` | [W1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/w1--44365871015fec4f58a5cbb8.md) | 31 | `declaration-track:44365871015fec4f58a5cbb8678e198000b0e65590ae0e8b54600e76c28e7035` |
| 4 | `abbrev` | [W21](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/w21--87540943b7bb401c5df65689.md) | 36 | `declaration-track:87540943b7bb401c5df6568914327fa16d33a31316c2df1daa3aedd4a7da0338` |
| 5 | `def` | [funscale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/funscale--342dc258b7ea4ace7dd38769.md) | 40 | `declaration-track:342dc258b7ea4ace7dd387698282967b6c1ba61e3502898158f703c7fa43920d` |
| 6 | `lemma` | [contDiff_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/contdiff-ofreal--bb8c4929640d72f711611506.md) | 42 | `result-track:bb8c4929640d72f71161150659751d1e7701c2b13dc0c6fd5a96ad3189895d95` |
| 7 | `lemma` | [tendsto_funscale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/tendsto-funscale--c963d094b83fd67ad39f12d4.md) | 49 | `result-track:c963d094b83fd67ad39f12d4fcd7418ec457c261a7b82b1244624baf9bb94d6d` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/instance--3c1c0bad349f8dca009429b3.md) | 59 | `declaration-track:3c1c0bad349f8dca009429b34b649ffac6f2a02c2f5925694094ba6119cf2507` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/instance--9ad4c77fd7e90311d7f1d66e.md) | 61 | `declaration-track:9ad4c77fd7e90311d7f1d66e3b2007969f257c7118dfbcd9882550e7e9f26daa` |
| 10 | `def` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/neg--95e4441a7b9ae2af32eba9f0.md) | 64 | `declaration-track:95e4441a7b9ae2af32eba9f02aa630467fc7d3086a7247b480da84b9149c5bb7` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/instance--e084aa0d8701b65cbfabb5dc.md) | 69 | `declaration-track:e084aa0d8701b65cbfabb5dcd1e27a1dc4a524a8d0717f7f2cd28673f07f19ab` |
| 12 | `lemma` | [neg_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/neg-apply--63cb5cc073415bca02cbda6c.md) | 71 | `result-track:63cb5cc073415bca02cbda6c49254a0fd5a923869a638b6cabf98eefd8ed023e` |
| 13 | `def` | [smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/smul--a7d6dffe64317626be6606d7.md) | 73 | `declaration-track:a7d6dffe64317626be6606d7a98bd0b67a365b3bbc5d0b3735d19769543d77bb` |
| 14 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/instance--34c779e3ce312b4accd159de.md) | 75 | `declaration-track:34c779e3ce312b4accd159de3445a814f6b88ec3f2c91a78a0d33223cbd35905` |
| 15 | `lemma` | [smul_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/smul-apply--3f167456cc687599299dcf7f.md) | 77 | `result-track:3f167456cc687599299dcf7f270334b8f68f04dccdb00a8db17ef5b1d02fea36` |
| 16 | `lemma` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/continuous--6472a734389ad2fb17bb1914.md) | 79 | `result-track:6472a734389ad2fb17bb1914bfb0344d7d6e4b05f5dab189fcb241afd9e8309e` |
| 17 | `def` | [deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/deriv--0eae466dd8a1591bfdaac5b0.md) | 81 | `declaration-track:0eae466dd8a1591bfdaac5b0e78f91ea2f2b2960e15c8b49bd129c4549f19bf9` |
| 18 | `lemma` | [hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/hasderivat--b8383dfe6ed3f76c0fd671b7.md) | 86 | `result-track:b8383dfe6ed3f76c0fd671b7b4a023fb3a578d03b8e6c50f2dd773ec2061941f` |
| 19 | `lemma` | [deriv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/deriv-apply--e98f719580efd7fbf22a577c.md) | 89 | `result-track:e98f719580efd7fbf22a577cf13d507afd99214640aedc98378df57b2320659c` |
| 20 | `lemma` | [deriv_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/deriv-smul--0cba93669afe94919afaa143.md) | 91 | `result-track:0cba93669afe94919afaa14330bbc88f4735e8bedc50ce17ec08f5b169723d86` |
| 21 | `def` | [scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/scale--d6c3c4d5a6874b593fdc245d.md) | 94 | `declaration-track:d6c3c4d5a6874b593fdc245d952b5984c3bcda807a152be6edb589b988981662` |
| 22 | `lemma` | [deriv_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/deriv-scale--d20d3d348625c78aebb0b88c.md) | 101 | `result-track:d20d3d348625c78aebb0b88c12e0deaad0101d866fc9c1b90d1b1a0ae6519fe1` |
| 23 | `lemma` | [deriv_scale'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/deriv-scale--6d8fad6cb3faf9b8d6a5233b.md) | 108 | `result-track:6d8fad6cb3faf9b8d6a5233b709f6f1106c2b6b14c062fe42e2b63e4c1c57401` |
| 24 | `lemma` | [hasDerivAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/hasderivat-scale--2b9cb231218b8ae6baa5a654.md) | 113 | `result-track:2b9cb231218b8ae6baa5a6540be4b9f2bd6007902fed2b028d362b5cb1c966f1` |
| 25 | `lemma` | [tendsto_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/tendsto-scale--ab54f4252e76fcefdd74d2b1.md) | 117 | `result-track:ab54f4252e76fcefdd74d2b19749c38add7ce0478bc251da8b9fef218b6be42e` |
| 26 | `lemma` | [bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/bounded--f97cccbbaf4ba8507496152e.md) | 121 | `result-track:f97cccbbaf4ba8507496152e3ceccc1343e89e9bc888108dc49900b140176467` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/instance--cb82ee8a6d9fcdc55e5a53b4.md) | 130 | `declaration-track:cb82ee8a6d9fcdc55e5a53b408e059879aff614e3505b518d68aff97c54a2270` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/instance--f0894d556493a907e99c6429.md) | 132 | `declaration-track:f0894d556493a907e99c6429d19896be33bb4145d8fd3d17f68f8dae54fb624b` |
| 29 | `lemma` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/nonneg--08da96abf6ef88ae8422bff8.md) | 134 | `result-track:08da96abf6ef88ae8422bff8d74b4c76b616d52673045880cbd12714e3b02150` |
| 30 | `lemma` | [le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/le-one--d09256ec1e41ed61b18e0eb3.md) | 136 | `result-track:d09256ec1e41ed61b18e0eb3517b8dab975ebabdb52919ce79334e631f2a6f46` |
| 31 | `lemma` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/zero--3a6554f500883d95426a6d6d.md) | 139 | `result-track:3a6554f500883d95426a6d6ddf964d3510dbd6e7ceb482ddb3c1f69faf7e2c83` |
| 32 | `lemma` | [zero_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/zero-at--c0ae4f0c753b5f9fc86a731b.md) | 143 | `result-track:c0ae4f0c753b5f9fc86a731b2febfc48bd8b4b843b374bc5529c78227d97e6d2` |
| 33 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/instance--0256c61090e4affb54054c8e.md) | 149 | `declaration-track:0256c61090e4affb54054c8ed6b0d3023b542e67cc910da2cd7a006b0769ba5d` |
| 34 | `lemma` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/continuous--3bfdbbd8bbc34f130e502994.md) | 151 | `result-track:3bfdbbd8bbc34f130e502994d7baf2d989540d0870c72e4d61fe7d3c13aff4d2` |
| 35 | `lemma` | [differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/differentiable--823b0fda8116ac01bc4d7a2b.md) | 153 | `result-track:823b0fda8116ac01bc4d7a2b32ae67f454ccab62eac7ce9143b84c97e9dfa579` |
| 36 | `lemma` | [iteratedDeriv_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/iteratedderiv-sub--cfe2a04cd2c1ed4ec40b0e4b.md) | 156 | `result-track:cfe2a04cd2c1ed4ec40b0e4ba3541cee0cc6d3f4031a4a7ec9e826a8f158e012` |
| 37 | `def` | [deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/deriv--e048e60395e7def00eb40255.md) | 169 | `declaration-track:e048e60395e7def00eb40255f23ab7292d60d0f8c1327d478e7ea46ccc9522e2` |
| 38 | `lemma` | [hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/hasderivat--1d0d0695f141674540b0f018.md) | 175 | `result-track:1d0d0695f141674540b0f01884a8885f733008b7b8c17cd7f7a888e87db45577` |
| 39 | `def` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/sub--b7a95d35c9ec0ffc57ee56ae.md) | 178 | `declaration-track:b7a95d35c9ec0ffc57ee56ae5d2ee7ef15904ea6123bce16eb6b92c25e6297c7` |
| 40 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/instance--25acbe9126e9c28c6cf68423.md) | 186 | `declaration-track:25acbe9126e9c28c6cf68423ffbe1497f8ce3030ac8881109848ca2ad84f4e32` |
| 41 | `lemma` | [integrable_iteratedDeriv_Schwarz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/integrable-iteratedderiv-schwarz--34be22cc0c1ddba914a4cab3.md) | 188 | `result-track:34be22cc0c1ddba914a4cab3ca9d135605039ab6905f9a03c1707f33351ff8c4` |
| 42 | `def` | [of_Schwartz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/of-schwartz--e65f9bdc77b9b15929a6c1f0.md) | 193 | `declaration-track:e65f9bdc77b9b15929a6c1f082e4bcebba8e8f7fdf001ce861ad0429dc1f2c0c` |
| 43 | `def` | [norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/norm--ef5907b18a7957ec129c724f.md) | 204 | `declaration-track:ef5907b18a7957ec129c724ff0a5d6046229c32d356552710e97316fe4659abf` |
| 44 | `lemma` | [norm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/norm-nonneg--5738dd2a085eb38cb4606b09.md) | 207 | `result-track:5738dd2a085eb38cb4606b09e0412d16f6d42fbae34f1a3ce5ad35898a426d57` |
| 45 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/instance--3904f4fead97102d9cc77671.md) | 211 | `declaration-track:3904f4fead97102d9cc77671c69301ff46e0fd969afb3535c91541ae00f4debb` |
| 46 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/instance--43b70de81d0700c4e09cadb7.md) | 213 | `declaration-track:43b70de81d0700c4e09cadb7b462d80cb2e141089c9bd51b63c4c60fe55db4fc` |
| 47 | `def` | [ofCS2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/ofcs2--f1303bd38de3c3f0db12b518.md) | 215 | `declaration-track:f1303bd38de3c3f0db12b51875cd203d675b74256a6566bdf53623f62e528c7c` |
| 48 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/instance--bc27c2e161cfbae108bbc917.md) | 222 | `declaration-track:bc27c2e161cfbae108bbc917ffc01d35c396f40a73828023277e9249e68c89bd` |
| 49 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/instance--6214e52aa730f242afc9476b.md) | 224 | `declaration-track:6214e52aa730f242afc9476b1fe5b8a8043419ba27d5931b12a3c45522c9113a` |
| 50 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/instance--05834ab77fcc7f90551472bd.md) | 227 | `declaration-track:05834ab77fcc7f90551472bdca18217f44303ed2f42634b8f9a497d9b6673f3c` |
| 51 | `lemma` | [hf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/hf--87662c3eec43b0f2612d3430.md) | 229 | `result-track:87662c3eec43b0f2612d3430a226f3f3f582e6323e9a753724daed7147cadb70` |
| 52 | `lemma` | [hf'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/hf--9fc5754d058082c825e784b3.md) | 231 | `result-track:9fc5754d058082c825e784b3e6bb5ab7d14eb2864dd5007ab9f138c9ea6ca875` |
| 53 | `lemma` | [hf''](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/hf--37c71d5309a16246f4682de9.md) | 234 | `result-track:37c71d5309a16246f4682de9f5ed9e0a9d5b1dd348f49545de3e133fa9fde7bb` |
| 54 | `theorem` | [W21_approximation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variante3f254f6e772ebf941f67b4ad978858b6355b00433a943a4e318c22425959062.lean/declarations/w21-approximation--5ce02d2b293dcc110e23e5e9.md) | 239 | `result-track:5ce02d2b293dcc110e23e5e970dbfa02ad07249e618eb8ed3a13a88ae7d5831e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
