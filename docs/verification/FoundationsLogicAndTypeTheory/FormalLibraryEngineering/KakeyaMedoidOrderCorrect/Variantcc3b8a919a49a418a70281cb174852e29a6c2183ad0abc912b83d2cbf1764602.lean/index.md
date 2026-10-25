# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KakeyaMedoidOrderCorrect.Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b07132f5b4830ddcc2966fa524b7be9170112cf0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaMedoidOrderCorrect/Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaMedoidOrderCorrect/Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaMedoidOrderCorrect/Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b07132f5b4830ddcc2966fa524b7be9170112cf0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaMedoidOrderCorrect/Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaMedoidOrderCorrect/Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Pipeline.Center.KakeyaMedoid` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Phase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaMedoidOrderCorrect/Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean/declarations/phase--9480259a396849730367e995.md) | 7 | `declaration-track:9480259a396849730367e995478e65a9448de7ae62b5aed9976c0687926aa639` |
| 2 | `theorem` | [preceqK_total_over_finite_phases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaMedoidOrderCorrect/Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean/declarations/preceqk-total-over-finite-phases--45e4eddce9cceccf4e1433ac.md) | 9 | `result-track:45e4eddce9cceccf4e1433ace701237910bb46f04360e7316d427168d59872ca` |
| 3 | `theorem` | [medoid_order_preserves_61_phase_spine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaMedoidOrderCorrect/Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean/declarations/medoid-order-preserves-61-phase-spine--0c0be365fb404e2a7a8ee7af.md) | 16 | `result-track:0c0be365fb404e2a7a8ee7afa1f0487d6460e7bb9eff8e388397ae9842964db4` |
| 4 | `theorem` | [medoid_order_marks_nonTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaMedoidOrderCorrect/Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean/declarations/medoid-order-marks-nontheorem--062207812e2855762d037df0.md) | 20 | `result-track:062207812e2855762d037df0d321b763750db2417a0672efa8acc8e91a5fb94e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
