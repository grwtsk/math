# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Qify.Variant44333feaaa3b34346eea9a7b45aef4c7b4107a397ae4f51cc902b625f8382245

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d06e562b1461061a140df59e29801e4a02fb1564",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant44333feaaa3b34346eea9a7b45aef4c7b4107a397ae4f51cc902b625f8382245.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant44333feaaa3b34346eea9a7b45aef4c7b4107a397ae4f51cc902b625f8382245.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant44333feaaa3b34346eea9a7b45aef4c7b4107a397ae4f51cc902b625f8382245.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d06e562b1461061a140df59e29801e4a02fb1564`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant44333feaaa3b34346eea9a7b45aef4c7b4107a397ae4f51cc902b625f8382245.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant44333feaaa3b34346eea9a7b45aef4c7b4107a397ae4f51cc902b625f8382245.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant44333feaaa3b34346eea9a7b45aef4c7b4107a397ae4f51cc902b625f8382245.lean/declarations/syntax--66ff35cc9b6f2e73f5f475a6.md) | 65 | `declaration-track:66ff35cc9b6f2e73f5f475a65f4fcb5ba563a0afddcff3cc27a6de5e68c7f256` |
| 2 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant44333feaaa3b34346eea9a7b45aef4c7b4107a397ae4f51cc902b625f8382245.lean/declarations/macro-rules--11b58ecb685575a6f07f6e57.md) | 67 | `declaration-track:11b58ecb685575a6f07f6e57bdba5b9f0e3c36e828cb9a5aeb9386c5fa6adc5c` |
| 3 | `lemma` | [int_cast_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant44333feaaa3b34346eea9a7b45aef4c7b4107a397ae4f51cc902b625f8382245.lean/declarations/int-cast-eq--2011a10f3cdfee26289e1c4b.md) | 74 | `result-track:2011a10f3cdfee26289e1c4b72cda5f5ec3700a54698d1c09db21dea34cbf485` |
| 4 | `lemma` | [int_cast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant44333feaaa3b34346eea9a7b45aef4c7b4107a397ae4f51cc902b625f8382245.lean/declarations/int-cast-le--6e5c266639cec16e7e2e2695.md) | 75 | `result-track:6e5c266639cec16e7e2e26953aec7f94c4f6172cb35f1fa7466b93be7e581ff2` |
| 5 | `lemma` | [int_cast_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant44333feaaa3b34346eea9a7b45aef4c7b4107a397ae4f51cc902b625f8382245.lean/declarations/int-cast-lt--0bd153dd7a4f0e2b3de3c24d.md) | 76 | `result-track:0bd153dd7a4f0e2b3de3c24d2b2b76bf2426fb0a8e13425b81e556fff7f22e21` |
| 6 | `lemma` | [int_cast_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant44333feaaa3b34346eea9a7b45aef4c7b4107a397ae4f51cc902b625f8382245.lean/declarations/int-cast-ne--b89a3f893bb9dae4045ff12c.md) | 77 | `result-track:b89a3f893bb9dae4045ff12caedca59c797446f63d1bfaa52de567657e9c99f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
