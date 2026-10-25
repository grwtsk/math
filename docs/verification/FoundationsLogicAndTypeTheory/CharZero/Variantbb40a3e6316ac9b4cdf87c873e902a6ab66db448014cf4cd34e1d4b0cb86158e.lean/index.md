# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.CharZero.Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4851e83c41161aec8a71c5019b607701d0324960",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/CharZero/Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4851e83c41161aec8a71c5019b607701d0324960`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/CharZero/Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/CharZero/Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Field` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e.lean/declarations/cast-eq-zero--68adb16cb1d50d6d85653f10.md) | 23 | `result-track:68adb16cb1d50d6d85653f10cb5e1fcde043b03926815c2dc1a1dfc455a8df56` |
| 2 | `theorem` | [cast_inj](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e.lean/declarations/cast-inj--1818d073ed24bd55496f302c.md) | 34 | `result-track:1818d073ed24bd55496f302c088e8533645b68fb3b749ccfa2f434e8f2e30c25` |
| 3 | `theorem` | [cast_injective](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e.lean/declarations/cast-injective--b81455baffe6731c484b9850.md) | 38 | `result-track:b81455baffe6731c484b9850d8d12d27f5752c44e11c9fd6f65b6bc2f0c7c410` |
| 4 | `theorem` | [cast_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e.lean/declarations/cast-ne-zero--d6e17a829ae506728dffe715.md) | 42 | `result-track:d6e17a829ae506728dffe7156840d6b6940596de499ef00b069002194aebe291` |
| 5 | `theorem` | [cast_eq_one](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e.lean/declarations/cast-eq-one--84af85fedede93188858584a.md) | 47 | `result-track:84af85fedede93188858584aff326a3eca1fa9b06c88f0cb6f2ad2bbeb3cde81` |
| 6 | `theorem` | [cast_ne_one](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e.lean/declarations/cast-ne-one--2e22f717ad7b6282c7d84850.md) | 51 | `result-track:2e22f717ad7b6282c7d84850b634520eb0506caf412613e567961d59838b2fcb` |
| 7 | `theorem` | [cast_div_charZero](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e.lean/declarations/cast-div-charzero--cb89fa26bd7942489da9e4a9.md) | 56 | `result-track:cb89fa26bd7942489da9e4a9c7f157bfe122cd5c3ce1bfbcb73a8601e7bc8234` |
| 8 | `theorem` | [RingHom.injective_int](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e.lean/declarations/ringhom-injective-int--056f9c876aaead37eb1f0a7a.md) | 65 | `result-track:056f9c876aaead37eb1f0a7ae58e1e5c7c39d9a43161b919e0d4bfd1e7119c3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
