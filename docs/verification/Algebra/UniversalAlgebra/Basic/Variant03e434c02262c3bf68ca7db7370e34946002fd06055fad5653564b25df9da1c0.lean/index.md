# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ebbf19e46414d5c7d21e7d240765217b19e858f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ebbf19e46414d5c7d21e7d240765217b19e858f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_zero_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean/declarations/mul-zero-subset--85197445d94e2bc161b1552a.md) | 34 | `result-track:85197445d94e2bc161b1552a04c5db25f7e0100a2d58a4d3584d86ccd652f3d9` |
| 2 | `lemma` | [zero_mul_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean/declarations/zero-mul-subset--2377cb32927427ad85fc0d74.md) | 35 | `result-track:2377cb32927427ad85fc0d74920d12e6ea5f936d8b67eeabbfbfd99afb946bfb` |
| 3 | `lemma` | [Nonempty.mul_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean/declarations/nonempty-mul-zero--0dd17d243673dbd42ee60c11.md) | 37 | `result-track:0dd17d243673dbd42ee60c111be8c2d7dbcc171e61770235f2c926cb2a5373de` |
| 4 | `lemma` | [Nonempty.zero_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean/declarations/nonempty-zero-mul--ef3d69b27877fa90795b3dd4.md) | 40 | `result-track:ef3d69b27877fa90795b3dd44165e459902a402c1fd855185d91c5ec954adb37` |
| 5 | `lemma` | [div_zero_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean/declarations/div-zero-subset--6d602ad3e1dc870c6c8eea3f.md) | 48 | `result-track:6d602ad3e1dc870c6c8eea3fa108751b031f77b8b253d76192edea6928585b9e` |
| 6 | `lemma` | [zero_div_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean/declarations/zero-div-subset--700c875cc61c0fc0ed9df05e.md) | 49 | `result-track:700c875cc61c0fc0ed9df05ef48d830d949f1a138f57025cf482b9eb19087ddb` |
| 7 | `lemma` | [Nonempty.div_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean/declarations/nonempty-div-zero--efee06047bbcaab4e254a808.md) | 51 | `result-track:efee06047bbcaab4e254a8081294b39baa341049c3d025ad1877b61fce454455` |
| 8 | `lemma` | [Nonempty.zero_div](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean/declarations/nonempty-zero-div--28f3c86fd34f9d679af425bc.md) | 54 | `result-track:28f3c86fd34f9d679af425bcab9dfcd3b5629a420c7ab58b0e88e492af13b87a` |
| 9 | `lemma` | [inv_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0.lean/declarations/inv-zero--fa797a523025b4ed067e7b43.md) | 57 | `result-track:fa797a523025b4ed067e7b43fc3f81b5236859440e998cbca89735cff5d6dcea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
