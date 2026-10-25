# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardExpr.Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7765ce097e3631a90ace4046f6a6cba81b4c0bb0",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7765ce097e3631a90ace4046f6a6cba81b4c0bb0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Conv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Meta.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Meta.Eval` — import line 9; external provider; requires a separately pinned dependency.
- `Std.Util.TermUnsafe` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MatchKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/matchkind--bf02da0c68a4344551799371.md) | 20 | `declaration-track:bf02da0c68a434455179937128a7db7422ee702ced72c250eccef747a423449a` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--37054e11b4f7f60ff786e6d8.md) | 29 | `declaration-track:37054e11b4f7f60ff786e6d8b72047b4f1e4609748374ef36559413efd8807e8` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--ef15fb4f151c5403fdb82f0f.md) | 31 | `declaration-track:ef15fb4f151c5403fdb82f0fd4d01023a3ff12bfc7f44e2c71e1a2a401a87a97` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--8e2de6c9088c3b3990c2abc1.md) | 33 | `declaration-track:8e2de6c9088c3b3990c2abc1573f52c1b2642d94a0c5df802e39cf16e8b0a5a8` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--34c3953b79aaa8a7c2d06b49.md) | 35 | `declaration-track:34c3953b79aaa8a7c2d06b49bc6b006b3329838113af6a4c4a050997381310b6` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--8c1dbb9b7d9389fce5fde03a.md) | 37 | `declaration-track:8c1dbb9b7d9389fce5fde03aa157b2280b2521424a5644553af2043f320ba154` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--275bb763a5693aa470f349db.md) | 40 | `declaration-track:275bb763a5693aa470f349db8c27c5d377ca835b9bfd781dcbd5461040b7410a` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--0eef216a8c2fd83601925f2f.md) | 42 | `declaration-track:0eef216a8c2fd83601925f2fd2bab6279087b286fc6e1a6d342543c98a8ef259` |
| 9 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--ea0d3abfa3894e5b24e02631.md) | 44 | `declaration-track:ea0d3abfa3894e5b24e02631d127c7a08508cae8f01d94753c194891b7723f70` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--19df0758431cc8ac3ca27332.md) | 46 | `declaration-track:19df0758431cc8ac3ca27332eee6672c4ca9f63bb90676a849bac17e630cbe3c` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--2d253c1925c4d8345f41e6fa.md) | 48 | `declaration-track:2d253c1925c4d8345f41e6fa313ac0ae9ce52cd1677db547410d2aef1fb3d8c2` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--b66073181e060f9ba31c792e.md) | 51 | `declaration-track:b66073181e060f9ba31c792e16d3bf615a3355881ddd7d90bf3bfa57196bb5c6` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--81986c7bb6e55210a1d5da1f.md) | 53 | `declaration-track:81986c7bb6e55210a1d5da1f5bc8c17d9fa035221f76636731f1f216c90f73c9` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--248324b9814b7c05cfe34163.md) | 55 | `declaration-track:248324b9814b7c05cfe341630c791ff97d052036d71962055e4706c2964a2ad8` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--d31be531f310237aff33d7ab.md) | 57 | `declaration-track:d31be531f310237aff33d7ab7538a1737d937789605475da55a812469f740a78` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--297773f4fa1ed3e294b14e83.md) | 59 | `declaration-track:297773f4fa1ed3e294b14e83a8ae6c2ab8f5190fecda7aaba523ea50786e9f39` |
| 17 | `def` | [colon.toMatchKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/colon-tomatchkind--b13749b8d1074738b5c403db.md) | 62 | `declaration-track:b13749b8d1074738b5c403db97ee38811a01796c3817d159b7b78c19899beeae` |
| 18 | `def` | [colonEq.toMatchKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/coloneq-tomatchkind--1c9880753445410d09e7153c.md) | 70 | `declaration-track:1c9880753445410d09e7153cbb63a15792a32f70a2ef14bea4a188eb44aa3f7b` |
| 19 | `def` | [equal.toMatchKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/equal-tomatchkind--bd36b5379045823c65b86345.md) | 78 | `declaration-track:bd36b5379045823c65b8634564700d0309e4cf4d4c5f342e267cc462616126aa` |
| 20 | `def` | [MatchKind.isEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/matchkind-iseq--45f4f6fbb0e1ad46a14997af.md) | 86 | `declaration-track:45f4f6fbb0e1ad46a14997af9b3b794a73040c783cec39e03041db0a46a435e6` |
| 21 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--8c886897674a72f0fb98e679.md) | 102 | `declaration-track:8c886897674a72f0fb98e679d6de247b026392e05fa77df27f9fe371b67255f0` |
| 22 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--9a5847c8287a444499fd3e13.md) | 103 | `declaration-track:9a5847c8287a444499fd3e13d522492554140d24f09df3b6a051d1c1fa1c1468` |
| 23 | `def` | [elabAndEvalMatchKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/elabandevalmatchkind--fb99dde2d6771c073da9e1a0.md) | 108 | `declaration-track:fb99dde2d6771c073da9e1a010cf322ad89cd8088d9d75aa652694855983cfb7` |
| 24 | `def` | [evalGuardExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/evalguardexpr--f8473b21f82353a7ba63e8c8.md) | 118 | `declaration-track:f8473b21f82353a7ba63e8c8498b8ebd31ccdcdcb14f971eea082628ad09112a` |
| 25 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--259026996fbc651dfd0871d6.md) | 137 | `declaration-track:259026996fbc651dfd0871d6862950ce2238fa4520d47c11699a40e501f2b7f6` |
| 26 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--6a7891f0dc2c972c2b691bd1.md) | 138 | `declaration-track:6a7891f0dc2c972c2b691bd18a78b888c25a12f48ec7e94de46b7ad0ef1cf43a` |
| 27 | `def` | [evalGuardTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/evalguardtarget--c7d8bfaed28ba75bbef298e2.md) | 141 | `declaration-track:c7d8bfaed28ba75bbef298e26be5bb581628df41a8072559ae32c8bfae5b33f0` |
| 28 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--4578594bce081ad17d1acf27.md) | 166 | `declaration-track:4578594bce081ad17d1acf272362788417f4650e3a8fbfd3dd3ef54de7f89906` |
| 29 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--08ff5f6269830b44d88291e9.md) | 168 | `declaration-track:08ff5f6269830b44d88291e939b2dbdbdd96534846bd864e1e522801fddf9c48` |
| 30 | `def` | [evalGuardHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/evalguardhyp--cc8a444d3b9fb0c79deb6c53.md) | 172 | `declaration-track:cc8a444d3b9fb0c79deb6c53229d4855dab2be7778e08e58914071e1998e3cad` |
| 31 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/syntax--4da3a1b7ba0150bed7663605.md) | 204 | `declaration-track:4da3a1b7ba0150bed76636055ca0ff34f4d4085f109c94e818b03cd514993092` |
| 32 | `def` | [evalGuardExprCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/evalguardexprcmd--48d474246f59e7da26f9fc1e.md) | 207 | `declaration-track:48d474246f59e7da26f9fc1e15d56e3981ff0295b846358445b7bb4e2c7174dd` |
| 33 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variantb64405aa91545b132e61356a7d4981fb953119ba1d74a6c310f7425e1a062c49.lean/declarations/elab--a8c70c2f2685617685ff1a18.md) | 231 | `declaration-track:a8c70c2f2685617685ff1a18c139c769fe8ffe8eca26c57a2e6ed88802f023f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
