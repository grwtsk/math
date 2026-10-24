# Verification target: GRWTSK.Algebra.GroupTheory.FastInstance.Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f659cef639595e0b4cfa1bb701c42e83b542c7e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f659cef639595e0b4cfa1bb701c42e83b542c7e`.

Source path: `GRWTSK/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FastInstance` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Mul](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/mul--53f2a006c42bda470a3900fb.md) | 23 | `declaration-track:53f2a006c42bda470a3900fbc40521c153262ba12d71d174eea667ec29ba8ba3` |
| 2 | `class` | [Semigroup](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/semigroup--d032ebd15c7dfe12ada5966b.md) | 26 | `declaration-track:d032ebd15c7dfe12ada5966bfd3eb32da8a6d8503cc77272ade8b5d4e692ed31` |
| 3 | `class` | [CommMagma](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/commmagma--ec3cf375fedf8e10808e69e4.md) | 29 | `declaration-track:ec3cf375fedf8e10808e69e4a195c53957a0ee1578f4bd04bedea4440c073672` |
| 4 | `class` | [CommSemigroup](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/commsemigroup--1abb8f1be2e473a08c22f035.md) | 32 | `declaration-track:1abb8f1be2e473a08c22f035f85b319eeb4f90410c85be7476193511a4fcfe48` |
| 5 | `structure` | [Wrapped](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/wrapped--dc4d7bb61e664ecaa0d02b4d.md) | 34 | `declaration-track:dc4d7bb61e664ecaa0d02b4d6f3ea8c5dd3624db013732345f834a5438696713` |
| 6 | `theorem` | [val_injective](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/val-injective--7246f0e0035d9c14b1c6d536.md) | 39 | `result-track:7246f0e0035d9c14b1c6d536090b7a888652388f6e0bd5ac578b8953a92e1661` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/instance--65439b6e30e2fe303eaeaa69.md) | 42 | `declaration-track:65439b6e30e2fe303eaeaa6983f1cb1af1fe5f3cbf2638893ba5a29888c9050e` |
| 8 | `def` | [Function.Injective.semigroup](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/function-injective-semigroup--ce820d05997ccf15a77afaba.md) | 44 | `declaration-track:ce820d05997ccf15a77afaba2e29cba531fa4c7f384e7b18c9b97dd2191eedd1` |
| 9 | `def` | [Function.Injective.commMagma](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/function-injective-commmagma--47c253c0ba2d82e9a400b9e9.md) | 51 | `declaration-track:47c253c0ba2d82e9a400b9e92312047928315225b39f7565c4755f01b7433c28` |
| 10 | `def` | [Function.Injective.commSemigroup](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/function-injective-commsemigroup--4b34b8cc621b6bff12f5516a.md) | 59 | `declaration-track:4b34b8cc621b6bff12f5516af162261f5ee265901f72d3e92102212118b5172c` |
| 11 | `instance` | [instSemigroup](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/instsemigroup--26ad8ca5589f063fd738bab4.md) | 66 | `declaration-track:26ad8ca5589f063fd738bab46bbfd2bbf9b85a5dcd5c23de785750ce91e78c96` |
| 12 | `instance` | [instCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/instcommsemigroup--952e021f056a818cf962562a.md) | 69 | `declaration-track:952e021f056a818cf962562a9ef84dc60b9c266b53825afcd57809216cdb567e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/instance--38e61e5bf0023f121a82a280.md) | 92 | `declaration-track:38e61e5bf0023f121a82a28018bf779a5435068b4aaa364ccc8a4bc18403f8c4` |
| 14 | `class` | [Dec](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/dec--6040badfa915c51bfd6ab137.md) | 114 | `declaration-track:6040badfa915c51bfd6ab137a69041d1b0588694fe8eef09dc482c33a2dc7393` |
| 15 | `axiom` | [It](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/it--4744f81c269d83005727cfa6.md) | 117 | `declaration-track:4744f81c269d83005727cfa6f4bd6ec1e6c757d2db86029c8f74baebe7b74238` |
| 16 | `abbrev` | [dec1](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/dec1--b5522e739482167031390571.md) | 121 | `declaration-track:b5522e739482167031390571e33f0929073032e09d2d675189ac0debed151a2d` |
| 17 | `def` | [dec2](../../../../../mathematics/Algebra/GroupTheory/FastInstance/Variant22106de064daa7ec34abbee724a92d44d8a58414b36cdd8f6dc3232a36554de7.lean/declarations/dec2--56914bfbc9943beeeaabfdf7.md) | 123 | `declaration-track:56914bfbc9943beeeaabfdf77620af6d74e47ffbc642d682aebbdecd42d06717` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
