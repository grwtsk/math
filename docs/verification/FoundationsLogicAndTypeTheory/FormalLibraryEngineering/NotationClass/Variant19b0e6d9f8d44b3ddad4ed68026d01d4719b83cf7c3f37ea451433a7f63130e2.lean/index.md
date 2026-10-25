# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NotationClass.Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29e617b7afde8cd80bfbefb74b705ecf583729d5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29e617b7afde8cd80bfbefb74b705ecf583729d5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Lean.NameMapAttribute` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.Exception` — import line 14; external provider; requires a separately pinned dependency.
- `Qq.MetaM` — import line 15; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/declarations/syntax--8361a92baeb8a4914ae5504a.md) | 45 | `declaration-track:8361a92baeb8a4914ae5504a5f48b66731794f3983a5a11a5f453ffee300421f` |
| 2 | `def` | [findArgType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/declarations/findargtype--e16fca6f7a7ebd359294f1a0.md) | 54 | `declaration-track:e16fca6f7a7ebd359294f1a0eb66df969e31afcedc19cbbf57a33ab319f3a519` |
| 3 | `def` | [defaultfindArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/declarations/defaultfindargs--9daf76f6f3e051a8250390de.md) | 57 | `declaration-track:9daf76f6f3e051a8250390defb6498a40e38a866fd49a8a620c153babf42fdff` |
| 4 | `def` | [copyFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/declarations/copyfirst--fedc296e08b4cf56d602373a.md) | 69 | `declaration-track:fedc296e08b4cf56d602373af660fe17fcd81e23f4361e686dd30d9f21a81222` |
| 5 | `def` | [copySecond](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/declarations/copysecond--fb46e796b82fdd207316ddce.md) | 72 | `declaration-track:fb46e796b82fdd207316ddcee6ac4aa9c1803cba302b730b0759ae60568501f3` |
| 6 | `def` | [nsmulArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/declarations/nsmulargs--2d737598e71edb9bea5ecb12.md) | 75 | `declaration-track:2d737598e71edb9bea5ecb1205c07e8c5a556731f642eac798330123388afe83` |
| 7 | `def` | [zsmulArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/declarations/zsmulargs--b22abda4da2d5aeb557a89e7.md) | 79 | `declaration-track:b22abda4da2d5aeb557a89e7f1b343bce6bb59850161f63fd551949256228cd3` |
| 8 | `def` | [findZeroArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/declarations/findzeroargs--a81d8b0000eafe60122755cd.md) | 83 | `declaration-track:a81d8b0000eafe60122755cdad337c4b2633d914ae17ef6d6c44848994f388ed` |
| 9 | `def` | [findOneArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/declarations/findoneargs--9b816549873eda6ad6eed0d3.md) | 87 | `declaration-track:9b816549873eda6ad6eed0d39044789fe784bf326aa2900f05f103c7d5443faa` |
| 10 | `def` | [findCoercionArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/declarations/findcoercionargs--ca9089b0ffd60cef7d7dfffe.md) | 91 | `declaration-track:ca9089b0ffd60cef7d7dfffe986421e4fac2ba915a1944c02401a103038ed5fd` |
| 11 | `structure` | [AutomaticProjectionData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/declarations/automaticprojectiondata--14f764ecbce06321ffaa39ed.md) | 100 | `declaration-track:14f764ecbce06321ffaa39edf9512030fee660edd8162248c22dca4a4340e32d` |
| 12 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/declarations/initialize--3fc67fe6680f9cb202b65e48.md) | 113 | `declaration-track:3fc67fe6680f9cb202b65e48a969ab40099bf2bd1b8b6e51456c65624a5b5b4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
