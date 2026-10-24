# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.FirstMainTheorem.Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ea5710896622a4aa8a4b2228e188bbb725c1312",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ea5710896622a4aa8a4b2228e188bbb725c1312`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [characteristic_sub_characteristic_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean/declarations/characteristic-sub-characteristic-inv--e104245cbfbe81dc64f18d1b.md) | 47 | `result-track:e104245cbfbe81dc64f18d1bb7234f80ca6f64236d5735cf098150c02d131b2b` |
| 2 | `lemma` | [characteristic_sub_characteristic_inv_of_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean/declarations/characteristic-sub-characteristic-inv-of-ne-zero--5ff5b8c033ff53cd6f1966e2.md) | 65 | `result-track:5ff5b8c033ff53cd6f1966e211e4ff14dea6ef9edc9810ee47fad6fa893b5686` |
| 3 | `lemma` | [characteristic_sub_characteristic_inv_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean/declarations/characteristic-sub-characteristic-inv-at-zero--510f5681b3efc48453a46680.md) | 83 | `result-track:510f5681b3efc48453a46680c6059dd7a2939cd2f27f4f5b9b132ac4de1a1171` |
| 4 | `theorem` | [characteristic_sub_characteristic_inv_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean/declarations/characteristic-sub-characteristic-inv-le--499c505436ee4d6fdce1ca12.md) | 97 | `result-track:499c505436ee4d6fdce1ca12c158b7f40cfb63bc44c5564bb990664547582e09` |
| 5 | `theorem` | [isBigO_characteristic_sub_characteristic_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean/declarations/isbigo-characteristic-sub-characteristic-inv--9b710da19a0c2f29eefe22e3.md) | 109 | `result-track:9b710da19a0c2f29eefe22e38e3cf3786b9c623bb64861b16fa5f94514af9531` |
| 6 | `theorem` | [abs_characteristic_sub_characteristic_shift_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean/declarations/abs-characteristic-sub-characteristic-shift-le--ca25c2416cb98fb22b3ec794.md) | 131 | `result-track:ca25c2416cb98fb22b3ec794d6d8148a9cecb6227638e37cbaefb575bf970599` |
| 7 | `theorem` | [isBigO_characteristic_sub_characteristic_shift](../../../../../mathematics/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean/declarations/isbigo-characteristic-sub-characteristic-shift--78e088300e39329b1cd4ab4b.md) | 160 | `result-track:78e088300e39329b1cd4ab4b256312bd532c8e251144b1a7c378f36160a60d4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
