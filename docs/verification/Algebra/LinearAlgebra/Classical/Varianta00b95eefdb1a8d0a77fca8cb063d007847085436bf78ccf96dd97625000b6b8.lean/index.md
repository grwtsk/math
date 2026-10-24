# Verification target: GRWTSK.Algebra.LinearAlgebra.Classical.Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6fb5099ba2d0fc18e9d770cde71f7f227afb4a8",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6fb5099ba2d0fc18e9d770cde71f7f227afb4a8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Abelian` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.SkewAdjoint` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SymplecticGroup` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [matrix_trace_commutator_zero](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/matrix-trace-commutator-zero--d2962668d3c46aa902555c9a.md) | 86 | `result-track:d2962668d3c46aa902555c9ad0edced0624385b89254ab18804056067c617777` |
| 2 | `def` | [sl](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/sl--ba71727344f74fb05b494f5f.md) | 97 | `declaration-track:ba71727344f74fb05b494f5f4819ec549e4a7034f4201eba6aca741189db32ed` |
| 3 | `theorem` | [sl_bracket](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/sl-bracket--e6d24842829630edd0bce0e7.md) | 102 | `result-track:e6d24842829630edd0bce0e7177251383c797cb9dabdec59a2bdbe6ce2efae37` |
| 4 | `def` | [Eb](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/eb--5b1b643b0043eb4f2cd325d4.md) | 112 | `declaration-track:5b1b643b0043eb4f2cd325d475e8258e5d3ae6d7143fc1b09267c8bcc2e6357b` |
| 5 | `theorem` | [eb_val](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/eb-val--c6c011e1220f458493ee951e.md) | 119 | `result-track:c6c011e1220f458493ee951e9e8efd7b4f2e5a33c75b4c768114bf766e88b039` |
| 6 | `theorem` | [sl_non_abelian](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/sl-non-abelian--645f531153539186f37b4271.md) | 125 | `result-track:645f531153539186f37b42717a76b080ae33248d064f43e82a0975a32797b289` |
| 7 | `def` | [sp](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/sp--a19d430cb5f87ef96c949f3e.md) | 142 | `declaration-track:a19d430cb5f87ef96c949f3e89976465abecb1784dac98565ffab54973466ad8` |
| 8 | `def` | [so](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/so--463b3fe8cf6e6ab85bd9f0d7.md) | 152 | `declaration-track:463b3fe8cf6e6ab85bd9f0d7c631c252a92a44bb67e57ce2bf271c727e084fc6` |
| 9 | `theorem` | [mem_so](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/mem-so--2c1700954abb7cf57d4bbb54.md) | 157 | `result-track:2c1700954abb7cf57d4bbb5456845eceb26b891fad95103c7ea839a884de7fcf` |
| 10 | `def` | [indefiniteDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/indefinitediagonal--80ccb15f990e7bf455415393.md) | 163 | `declaration-track:80ccb15f990e7bf4554153937ed009fa51c8f9b12e7f5a9208046f1d8d4b6e6a` |
| 11 | `def` | [so'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/so--2ead3fdc85687f1387c58275.md) | 169 | `declaration-track:2ead3fdc85687f1387c58275462b4e6975334ec34a4b62ca56565267022bc2b0` |
| 12 | `def` | [Pso](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/pso--443b99ce1c900a045c2edd3e.md) | 175 | `declaration-track:443b99ce1c900a045c2edd3e3a24084f3a05ca7d5f9c96c78c730af5942d7108` |
| 13 | `theorem` | [pso_inv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/pso-inv--e7183c5b8c83200c53716def.md) | 181 | `result-track:e7183c5b8c83200c53716def63f2639f7889000fcac91833e92628d31af566d1` |
| 14 | `def` | [invertiblePso](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/invertiblepso--141280ab682c9691c4efa7f0.md) | 196 | `declaration-track:141280ab682c9691c4efa7f025bb87fbe3de36a90dd2cb07273f3e4d549f08b1` |
| 15 | `theorem` | [indefiniteDiagonal_transform](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/indefinitediagonal-transform--11c5d0198f98023337661254.md) | 200 | `result-track:11c5d0198f98023337661254cd7770c1a4af1925de849f758810fed819afe0e7` |
| 16 | `def` | [soIndefiniteEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/soindefiniteequiv--40b42ea5e0706311f36ec844.md) | 217 | `declaration-track:40b42ea5e0706311f36ec84488a56a103742fda9a8dc39bcee4c1a4d0e6726d6` |
| 17 | `theorem` | [soIndefiniteEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/soindefiniteequiv-apply--edd54b36a6a8ff7192b204d8.md) | 225 | `result-track:edd54b36a6a8ff7192b204d892f95ddc9affb10619a1d9b0a90cf1c9a9c834cd` |
| 18 | `def` | [JD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/jd--65ddc3882914f678a77a5c6c.md) | 239 | `declaration-track:65ddc3882914f678a77a5c6cd1fe6f328178b30a4c96b3e5eabffd50c8278449` |
| 19 | `def` | [typeD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/typed--081cf6deef714321ec085ec8.md) | 245 | `declaration-track:081cf6deef714321ec085ec8a8850debd75fd44330eeb6304623c5a6f95b0638` |
| 20 | `def` | [PD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/pd--692669e6522beabd7031eaaa.md) | 257 | `declaration-track:692669e6522beabd7031eaaaaee9e54e2b33800b42a004a74ae4a55eadf0a590` |
| 21 | `def` | [S](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/s--a634e87b76efc93a5396303b.md) | 262 | `declaration-track:a634e87b76efc93a5396303b49b0e38d3cf433953640d507cd4c7131d33e7393` |
| 22 | `theorem` | [s_as_blocks](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/s-as-blocks--c62e4faad5be429d8a682608.md) | 266 | `result-track:c62e4faad5be429d8a682608f417786b0cf7170c9da560293e7f0dcf5f35ba07` |
| 23 | `theorem` | [jd_transform](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/jd-transform--83686856e65ebe09e8378594.md) | 271 | `result-track:83686856e65ebe09e83785944aa62a2eaaa088a4718cfa5d320fc163a603fd3c` |
| 24 | `theorem` | [pd_inv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/pd-inv--8e91f55dbb3673d096bc48fb.md) | 279 | `result-track:8e91f55dbb3673d096bc48fb59258e54e0b3f43e5d272115ad140e190854d834` |
| 25 | `instance` | [invertiblePD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/invertiblepd--dd76cd6dc9a9c1ae7ff67b0c.md) | 285 | `declaration-track:dd76cd6dc9a9c1ae7ff67b0cd5955fef8e74136d26a000f32fad0ed8b1b09e1b` |
| 26 | `def` | [typeDEquivSo'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/typedequivso--74617c2b07edba47ed415845.md) | 290 | `declaration-track:74617c2b07edba47ed4158459520c35e0541e0c9710815d447f2f42ab5bacbf4` |
| 27 | `def` | [JB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/jb--67da65320ae8e48f33a5eab3.md) | 313 | `declaration-track:67da65320ae8e48f33a5eab39a5f9650aca4f97108fbaa7fb97561da10d535b8` |
| 28 | `def` | [typeB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/typeb--f5206a1e43ae5e4288ff1025.md) | 319 | `declaration-track:f5206a1e43ae5e4288ff10254552c15f0532085b4147f8753d16417dcfa92a84` |
| 29 | `def` | [PB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/pb--e7949c1375d127cc4ebefc79.md) | 338 | `declaration-track:e7949c1375d127cc4ebefc7924dec739b9fcdbc450520e871ffa9485ebfe55db` |
| 30 | `theorem` | [pb_inv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/pb-inv--12c91ec57b8d057f8fb3385e.md) | 344 | `result-track:12c91ec57b8d057f8fb3385e8b72b486096d1e8ee03f156eaba000dd3b287a17` |
| 31 | `instance` | [invertiblePB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/invertiblepb--c71a6523f801f0183c2ddee9.md) | 350 | `declaration-track:c71a6523f801f0183c2ddee9ab62c674052c490d0ffb8310721e4b5900a901ca` |
| 32 | `theorem` | [jb_transform](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/jb-transform--95bc29c3c7f0ee1a9ae7e44f.md) | 354 | `result-track:95bc29c3c7f0ee1a9ae7e44fce1b552e5747e9151367df5077574938a42277f7` |
| 33 | `theorem` | [indefiniteDiagonal_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/indefinitediagonal-assoc--aea1280301ca46bad6172c00.md) | 359 | `result-track:aea1280301ca46bad6172c0058c1716e7d93ef4c7502630d5b44411b9b00b582` |
| 34 | `def` | [typeBEquivSo'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/declarations/typebequivso--52eeb752e14b16b67c341104.md) | 375 | `declaration-track:52eeb752e14b16b67c3411040e397fbcf45ca55fed2d8c20b7347c355e924611` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
