# Verification target: GRWTSK.Algebra.Constructions.Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0854c6c5c2645bdb02139c34af7847dc27ba6b92",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/index.md) · [Full source](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0854c6c5c2645bdb02139c34af7847dc27ba6b92`.

Source path: `GRWTSK/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Minor.Restrict` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [emptyOn](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/emptyon--2d576e4d288dd30ef4f2d125.md) | 43 | `declaration-track:2d576e4d288dd30ef4f2d125edd92c9e73771c94d40ca87b24bc617f8546518f` |
| 2 | `theorem` | [emptyOn_ground](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/emptyon-ground--2717cb11358f8ef9287d672c.md) | 53 | `result-track:2717cb11358f8ef9287d672c52d84e84d55a404b72ee4de79b3fecf6457f5f33` |
| 3 | `theorem` | [emptyOn_isBase_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/emptyon-isbase-iff--13bac513dc203503338235a8.md) | 55 | `result-track:13bac513dc203503338235a8d6e41789ac0f874314d75dee62b72c00acd65ca9` |
| 4 | `theorem` | [emptyOn_indep_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/emptyon-indep-iff--add4509df72f2405a1c6e65e.md) | 57 | `result-track:add4509df72f2405a1c6e65e0125d1559f4509395440c75e648b37c06fef98b7` |
| 5 | `theorem` | [ground_eq_empty_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/ground-eq-empty-iff--b2812924c6ff9a3a59b39f73.md) | 59 | `result-track:b2812924c6ff9a3a59b39f73b69c08ebfb7679916c171c77934a22d5863220da` |
| 6 | `theorem` | [emptyOn_dual_eq](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/emptyon-dual-eq--e6c7cf767d26c8c34e48582c.md) | 63 | `result-track:e6c7cf767d26c8c34e48582c2d558d8f02a84588b847a6452de26270834aa127` |
| 7 | `theorem` | [restrict_empty](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/restrict-empty--2f3730986f78404755599cdf.md) | 66 | `result-track:2f3730986f78404755599cdf333b411cc6568ddcd4c8c45474c6ce182158eb0f` |
| 8 | `theorem` | [eq_emptyOn_or_nonempty](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/eq-emptyon-or-nonempty--3df3f5a904a0bdcbe5bc948f.md) | 69 | `result-track:3df3f5a904a0bdcbe5bc948f0ab644ca1f589e7a5723c1e1ed99e7cedde25500` |
| 9 | `theorem` | [eq_emptyOn](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/eq-emptyon--8d6439ad68804771233839e0.md) | 73 | `result-track:8d6439ad68804771233839e0e36d580c2f9e23875c40ab315f3918a722f47e04` |
| 10 | `instance` | [finite_emptyOn](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/finite-emptyon--c970cce659b69a84563ebab3.md) | 77 | `declaration-track:c970cce659b69a84563ebab326fe7629f55875056c744f0114edbd1e7869552f` |
| 11 | `def` | [loopyOn](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/loopyon--2539d6f7503e70d34ef947c3.md) | 86 | `declaration-track:2539d6f7503e70d34ef947c32e18bdd049b18037276d913a9e6587d42a0796d1` |
| 12 | `theorem` | [loopyOn_ground](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/loopyon-ground--a35e1deac9bc9e2d56af8131.md) | 88 | `result-track:a35e1deac9bc9e2d56af8131f907b2b19b6fbe0289761c8b9cb0bf3e6ef1093c` |
| 13 | `theorem` | [loopyOn_empty](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/loopyon-empty--0beda0d23d061526259711f3.md) | 90 | `result-track:0beda0d23d061526259711f3cc92add376b2d8263eb56bd115b16158a6c7dfeb` |
| 14 | `theorem` | [loopyOn_indep_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/loopyon-indep-iff--e3c163e8a6b8269730a0e341.md) | 93 | `result-track:e3c163e8a6b8269730a0e3414df8a1900c18928a3a9f2600fd2fc9cff09ae521` |
| 15 | `theorem` | [eq_loopyOn_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/eq-loopyon-iff--edc176489b9a7d497e3a0819.md) | 97 | `result-track:edc176489b9a7d497e3a0819345a2a5d18060a547f967315c53b039cce586970` |
| 16 | `theorem` | [loopyOn_isBase_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/loopyon-isbase-iff--04c4405771324a264fb46de9.md) | 102 | `result-track:04c4405771324a264fb46de9073038e0eb02f0a86e4a2acfe9b0eeeb5f979f33` |
| 17 | `theorem` | [loopyOn_isBasis_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/loopyon-isbasis-iff--6fcccfe22a120607d0b5d5b7.md) | 105 | `result-track:6fcccfe22a120607d0b5d5b70dcc4d59331f64b7800e8882c5643cea37381188` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/instance--ae4641354ec9f2dd35f80013.md) | 109 | `declaration-track:ae4641354ec9f2dd35f8001365209eff06a478aa0afa7b45c88a4e6269aacb0c` |
| 19 | `theorem` | [Finite.loopyOn_finite](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/finite-loopyon-finite--95662dcaa0f6f88d46731cb9.md) | 112 | `result-track:95662dcaa0f6f88d46731cb9f5c728ccdc48ac2515a366dbfcc867837d3efe77` |
| 20 | `theorem` | [loopyOn_restrict](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/loopyon-restrict--d73c254c5e8879e8d66ab13b.md) | 115 | `result-track:d73c254c5e8879e8d66ab13b9e54f120212428a563fbbbb756b96e52aff276cf` |
| 21 | `theorem` | [empty_isBase_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/empty-isbase-iff--c7547237dae464f2c13b7c6a.md) | 120 | `result-track:c7547237dae464f2c13b7c6aa5a4abc08c1fe970d356e3369c2e0ff7a9338df1` |
| 22 | `theorem` | [eq_loopyOn_or_rankPos](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/eq-loopyon-or-rankpos--17b876fd5a46f8371e6ee31b.md) | 126 | `result-track:17b876fd5a46f8371e6ee31be27438d1f1fd25e11919094633f6345d8a2a78d9` |
| 23 | `theorem` | [not_rankPos_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/not-rankpos-iff--5383ed32cbc250314c76d0d3.md) | 129 | `result-track:5383ed32cbc250314c76d0d3ee89ebca279700e287186da715fcea310f51bff9` |
| 24 | `instance` | [loopyOn_rankFinite](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/loopyon-rankfinite--337217c8f40034426f91f9ce.md) | 132 | `declaration-track:337217c8f40034426f91f9ced7eb99d2203770b46d1d51511edf761ce1e0719b` |
| 25 | `def` | [freeOn](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/freeon--1f40369cbabf8fad6ca2e260.md) | 140 | `declaration-track:1f40369cbabf8fad6ca2e260a70727098f72009da4867ebaac22a6ad77777990` |
| 26 | `theorem` | [freeOn_ground](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/freeon-ground--473689d23b4d1f9261427c93.md) | 142 | `result-track:473689d23b4d1f9261427c93dc0e504e311e4dbc64a6cea2461341ac78bde5ae` |
| 27 | `theorem` | [freeOn_dual_eq](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/freeon-dual-eq--2733a7ae2c8c357ebc6fbe16.md) | 144 | `result-track:2733a7ae2c8c357ebc6fbe160327d0f2bbab11f43a6857efbe52fb8d86d9fc8d` |
| 28 | `theorem` | [loopyOn_dual_eq](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/loopyon-dual-eq--35f781baac64f2ec195b94ab.md) | 147 | `result-track:35f781baac64f2ec195b94ab400d4aeb642d6722d5d1179734433f0fab27f5a2` |
| 29 | `theorem` | [freeOn_empty](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/freeon-empty--653877b2310eb6b18ff259b4.md) | 149 | `result-track:653877b2310eb6b18ff259b4a56e8fa1b76e27921faf45b069347a42f1c96df7` |
| 30 | `theorem` | [freeOn_isBase_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/freeon-isbase-iff--b66d0f908d92558b3d586609.md) | 152 | `result-track:b66d0f908d92558b3d58660953f5ad6e1b537eb527b7c2901d8f55dd4463bf51` |
| 31 | `theorem` | [freeOn_indep_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/freeon-indep-iff--121b72609d314625ccdd6dbb.md) | 156 | `result-track:121b72609d314625ccdd6dbb064f7e7fbec6c257b7742094d6de9766a4c3556d` |
| 32 | `theorem` | [freeOn_indep](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/freeon-indep--2c2e8a2d50b2f8b1c08c3b10.md) | 159 | `result-track:2c2e8a2d50b2f8b1c08c3b104c859749b6a5b1be10378b1b2d2e78b4c13d36d9` |
| 33 | `theorem` | [freeOn_isBasis_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/freeon-isbasis-iff--6409767e5cabbbf9dce6b36b.md) | 162 | `result-track:6409767e5cabbbf9dce6b36b9bb0041beeb6ae5d8d5b3ab3e91173e424f28227` |
| 34 | `theorem` | [freeOn_isBasis'_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/freeon-isbasis-iff--2ab2b74e88fe8387906349f0.md) | 167 | `result-track:2ab2b74e88fe8387906349f097e3b5a7e09cc0b1389d5426843268a23e709e53` |
| 35 | `theorem` | [eq_freeOn_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/eq-freeon-iff--333304528bb1cae9ad3d5cd8.md) | 171 | `result-track:333304528bb1cae9ad3d5cd8ea200ed37138f0547f572404a3692b0b073f5f30` |
| 36 | `theorem` | [ground_indep_iff_eq_freeOn](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/ground-indep-iff-eq-freeon--6f5b5448cee3f4e3436a94f5.md) | 177 | `result-track:6f5b5448cee3f4e3436a94f5cd5487e32252201175636c73466ed0dd9a809160` |
| 37 | `theorem` | [freeOn_restrict](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/freeon-restrict--e95f1cd8a8be04d24de65b91.md) | 180 | `result-track:e95f1cd8a8be04d24de65b91801da3b58bd19dac0755f998f37459606d108829` |
| 38 | `theorem` | [restrict_eq_freeOn_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/restrict-eq-freeon-iff--59cb23d399bcb9f5fc1809f5.md) | 183 | `result-track:59cb23d399bcb9f5fc1809f5d4cef515bd4abee4a9758bef8b03862e23bf828e` |
| 39 | `theorem` | [Indep.restrict_eq_freeOn](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/indep-restrict-eq-freeon--2bd4a053f4efe7f6d16324ea.md) | 187 | `result-track:2bd4a053f4efe7f6d16324ea5b19b7ac63bf90de654310e9d700c360eccaabbd` |
| 40 | `instance` | [freeOn_finitary](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/freeon-finitary--bdf061a661927e6e526cd83c.md) | 190 | `declaration-track:bdf061a661927e6e526cd83cc18f6d9678c54b02d143d06e1f3c5dc06bb46687` |
| 41 | `lemma` | [freeOn_rankPos](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/freeon-rankpos--751cf0d03b61bb41c7f8183a.md) | 194 | `result-track:751cf0d03b61bb41c7f8183ab780dc5e00665b6fd73dbe54b82527381a53a0de` |
| 42 | `def` | [uniqueBaseOn](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon--f654de051caa2b88d1aee255.md) | 203 | `declaration-track:f654de051caa2b88d1aee2559525bf549aaa135dc76738144067448d06b22c0d` |
| 43 | `theorem` | [uniqueBaseOn_ground](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-ground--ab780b5834eda7ba281662fa.md) | 205 | `result-track:ab780b5834eda7ba281662fa680e6f2796b27ccf87f5aabf30c26a86c30793e5` |
| 44 | `theorem` | [uniqueBaseOn_isBase_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-isbase-iff--dd0126e7707b2c005456b14b.md) | 208 | `result-track:dd0126e7707b2c005456b14b072138230719eb0d10879475dfcffc37b2957585` |
| 45 | `theorem` | [uniqueBaseOn_inter_ground_eq](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-inter-ground-eq--659523263b1f58fff1cb7356.md) | 211 | `result-track:659523263b1f58fff1cb735678653f28458359eb2d548bddc1aa9c8f3a6c92a3` |
| 46 | `theorem` | [uniqueBaseOn_indep_iff'](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-indep-iff--72014e15958f72d3e89e26b3.md) | 217 | `result-track:72014e15958f72d3e89e26b3a97b7860c44b32264ef9d3f5cc7dba29f3416e16` |
| 47 | `theorem` | [uniqueBaseOn_indep_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-indep-iff--1f5bf013bf92a2a8fbdae4d5.md) | 220 | `result-track:1f5bf013bf92a2a8fbdae4d5acf3bdc2fc5b64f9c211c214dd76dd87be57ddeb` |
| 48 | `theorem` | [uniqueBaseOn_isBasis_iff](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-isbasis-iff--ee8395affb61ece8e0c15297.md) | 224 | `result-track:ee8395affb61ece8e0c15297b1beaaac8d11e444159f5403b4c0e40850f946a6` |
| 49 | `theorem` | [uniqueBaseOn_inter_isBasis](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-inter-isbasis--d3391c284d10c6599516079b.md) | 229 | `result-track:d3391c284d10c6599516079b1f2f8c7eab20fb05916d3ba20d91d4f4ffb2db20` |
| 50 | `theorem` | [uniqueBaseOn_dual_eq](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-dual-eq--c963f63133795cd2b33295fc.md) | 232 | `result-track:c963f63133795cd2b33295fc63950cacf7a925b1ff62a9271a2a49e83b65fdb0` |
| 51 | `theorem` | [uniqueBaseOn_self](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-self--474a04a886d7aed1a5a7742e.md) | 241 | `result-track:474a04a886d7aed1a5a7742e37a6c415ec48c3c4df8d8efce85a9bd5da699c78` |
| 52 | `theorem` | [uniqueBaseOn_empty](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-empty--f80bc930b93e18982fe992a9.md) | 244 | `result-track:f80bc930b93e18982fe992a91a99d769161a1f15a9003fc5c4a17a39c59ce0bf` |
| 53 | `theorem` | [uniqueBaseOn_restrict'](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-restrict--12fad22f92cf66792b5018e1.md) | 247 | `result-track:12fad22f92cf66792b5018e13f7d024c2c687d784e5b00a2ddfd3154996e426e` |
| 54 | `theorem` | [uniqueBaseOn_restrict](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-restrict--740e05cd88ebd3803e276b0e.md) | 253 | `result-track:740e05cd88ebd3803e276b0e8f50f2b8a87a9a4f8ec08183d7be9a23cbea983c` |
| 55 | `lemma` | [uniqueBaseOn_rankFinite](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-rankfinite--e6060e1e5f0f1114187f89e4.md) | 257 | `result-track:e6060e1e5f0f1114187f89e487faac3394bcb3c1435ec447cfce18aefbc707bd` |
| 56 | `instance` | [uniqueBaseOn_finitary](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-finitary--e2ba7308307f8f21b374c7fa.md) | 263 | `declaration-track:e2ba7308307f8f21b374c7fa9e1e5c05392f397838e262b1aef88355d8915837` |
| 57 | `lemma` | [uniqueBaseOn_rankPos](../../../../mathematics/Algebra/Constructions/Variante0a26e28a8ca9f70b7e1005bba8f217a4024f63ed881b4ce1ef3334d7225a614.lean/declarations/uniquebaseon-rankpos--7f6a832d133675b3e2a451d5.md) | 268 | `result-track:7f6a832d133675b3e2a451d551af42577f8c4a5aa4657750eebeac19d755e648` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
