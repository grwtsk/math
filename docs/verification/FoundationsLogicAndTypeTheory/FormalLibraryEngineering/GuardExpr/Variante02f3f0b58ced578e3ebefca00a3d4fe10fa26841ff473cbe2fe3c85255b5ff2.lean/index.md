# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardExpr.Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63415b52efee0a8f44281cf6d015090e97af062e",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63415b52efee0a8f44281cf6d015090e97af062e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Conv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Eval` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Util.TermUnsafe` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MatchKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/matchkind--4737a9ef3b8ff4f62f6f91df.md) | 28 | `declaration-track:4737a9ef3b8ff4f62f6f91dfab9d293a80ab7da2b4621164ea4e9aafc9c87a78` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--ad26d393d68823be233d6c55.md) | 37 | `declaration-track:ad26d393d68823be233d6c5576e56c388358d6e373d9eb0afd645b983a3a7035` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--8eceb9d584a03d8730374806.md) | 39 | `declaration-track:8eceb9d584a03d87303748061be4d2d1564f0fd90e9e48dcb633a80b8f665b91` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--e3467fdb2ddb4b6a68fadcc4.md) | 41 | `declaration-track:e3467fdb2ddb4b6a68fadcc4f1ff3fe5b629813a0ca3669587e9a2135d036a1c` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--b8b152d13fe084499dd2a777.md) | 43 | `declaration-track:b8b152d13fe084499dd2a777f7762fa055d62f7e46dd716bd1dc334e0443ef41` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--fbe31a22fa08c67ebf3d0824.md) | 45 | `declaration-track:fbe31a22fa08c67ebf3d082450458e6476a7f732380ae6e1d71bc98a4b0a6f94` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--c0231d32eea3a936c37a73fc.md) | 48 | `declaration-track:c0231d32eea3a936c37a73fc66edee4fdd8491737bfc39bdb1369ed9ed407e9b` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--ec3caad04c9997f6637099d4.md) | 50 | `declaration-track:ec3caad04c9997f6637099d43a492face69a3dd5d36271b806ae6cdc389554d2` |
| 9 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--c4635542c880993d7cd5dc54.md) | 52 | `declaration-track:c4635542c880993d7cd5dc5403875e426bd7f09d3eb13ead7fd05dadf4dd8762` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--61452f3524d1bf029bef54e4.md) | 54 | `declaration-track:61452f3524d1bf029bef54e41eef5d83d6008973bc3760066fb5235c4cd13f67` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--f1d298da2dc58cfc8f80fd50.md) | 56 | `declaration-track:f1d298da2dc58cfc8f80fd50b3c5948e074a87aacf5f75ef26427b2e0dccb4ee` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--be52b8c2480e8657a8f76b5c.md) | 59 | `declaration-track:be52b8c2480e8657a8f76b5c9ab2d9bca0eaad274237137075d16666579a97c4` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--6a85d1f8a26fa239b3fdfdf2.md) | 61 | `declaration-track:6a85d1f8a26fa239b3fdfdf24f856b55278064729b6d9404940f78b44fb5e470` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--b5e617e2d6560c474bc8dd89.md) | 63 | `declaration-track:b5e617e2d6560c474bc8dd89277bcb82c3cc4ecc23e4a4e418c5ba9acbf7d2d5` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--1622bbb2044c469c0933916f.md) | 65 | `declaration-track:1622bbb2044c469c0933916ffc3661b8e4aa32da02d1d3bf0c94f340fafa412a` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--1eb97d6b0ebd3bb1df7a94a9.md) | 67 | `declaration-track:1eb97d6b0ebd3bb1df7a94a93e0ccc936f6016b41b99055ef4d83eab971e8dcb` |
| 17 | `def` | [colon.toMatchKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/colon-tomatchkind--3b6d57d3855b97558dfdef7f.md) | 70 | `declaration-track:3b6d57d3855b97558dfdef7fde49e6a5ccbf933b28633d201da8f0e085f7e415` |
| 18 | `def` | [colonEq.toMatchKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/coloneq-tomatchkind--4cb0b53c7e77c042295cc2b7.md) | 78 | `declaration-track:4cb0b53c7e77c042295cc2b78b1236cbb65b419a2c476715bbf06a2f5e0fe30c` |
| 19 | `def` | [equal.toMatchKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/equal-tomatchkind--10600bfc63d2748ec99e1044.md) | 86 | `declaration-track:10600bfc63d2748ec99e10449bfed2f8cb75f4ca764406a8c78c85094c658cd0` |
| 20 | `def` | [MatchKind.isEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/matchkind-iseq--682d23d83070448914651db9.md) | 94 | `declaration-track:682d23d83070448914651db924ba5291b5e2274de6194a8445c90e89045ab3d3` |
| 21 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--00f9aeb29d19e8ccb6ad287f.md) | 110 | `declaration-track:00f9aeb29d19e8ccb6ad287f388b4a9eb2f85b3c9d941501df6f1bc9c0c1acba` |
| 22 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--be1c79e1440fff1034be1a5a.md) | 111 | `declaration-track:be1c79e1440fff1034be1a5aba2ca4bab7affc96ab808fb51dfe5c756494309f` |
| 23 | `def` | [elabAndEvalMatchKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/elabandevalmatchkind--9a54db379333c2f632ef3c0b.md) | 116 | `declaration-track:9a54db379333c2f632ef3c0b812687add1354e6c62766630507ccd1e0efaaced` |
| 24 | `def` | [evalGuardExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/evalguardexpr--a90152c605236bd2c7dd41a2.md) | 126 | `declaration-track:a90152c605236bd2c7dd41a2a72cacf41317a040a6c42848bd90a402c4a03448` |
| 25 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--6a4ac5a8d7b91d134b63d577.md) | 145 | `declaration-track:6a4ac5a8d7b91d134b63d5779fdb8d04893f27e335b9b16dde5bd8d3cd19c192` |
| 26 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--e824722b89fecb40ebd93a36.md) | 146 | `declaration-track:e824722b89fecb40ebd93a361ed03f792af1fbca4a4b23a34772943de7b0aa52` |
| 27 | `def` | [evalGuardTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/evalguardtarget--0d34e5c7e0bcf078078d930f.md) | 149 | `declaration-track:0d34e5c7e0bcf078078d930fadf632d264cd70af531edc28c3987e6947ca1cca` |
| 28 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--6804fb9318af5bc572b5b4e1.md) | 174 | `declaration-track:6804fb9318af5bc572b5b4e16f6bef3f97dca82aed7af8b453f6547cbdeed2b3` |
| 29 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--fa26932a24fa6480c36281cb.md) | 176 | `declaration-track:fa26932a24fa6480c36281cbdcc83020ba77b06884ed930710a86fc0a66df988` |
| 30 | `def` | [evalGuardHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/evalguardhyp--e88a50c103862be589282e8e.md) | 180 | `declaration-track:e88a50c103862be589282e8eff8962cbcc879f4e36f2e230e28e83394caf4ac3` |
| 31 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/syntax--ab6be94d9e97a417854086a3.md) | 212 | `declaration-track:ab6be94d9e97a417854086a34f91fabc53d5c7f8fc9577cca2315ac15d4c620d` |
| 32 | `def` | [evalGuardExprCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/evalguardexprcmd--5c1e9ffb6065145da9435418.md) | 215 | `declaration-track:5c1e9ffb6065145da94354184823939fb4ddade0394cef232233f3089db63df8` |
| 33 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/declarations/elab--56f50241490553b9e83745d8.md) | 239 | `declaration-track:56f50241490553b9e83745d8140ba46f1b3fcd9788b743585e7a63fcb0eb68ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
