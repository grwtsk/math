# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Char.Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d1983f1e95c14c2d4ab99cdb43c6591b0814b86",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d1983f1e95c14c2d4ab99cdb43c6591b0814b86`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Pattern.Find.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Char` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.Termination` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Iterate` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Grind` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [find?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/find-char-eq-some-iff--d6ac961f3b98ab50c453f7e4.md) | 26 | `result-track:d6ac961f3b98ab50c453f7e43a8809d714c23aaa5a8eb256cdb85d66f576be65` |
| 2 | `theorem` | [contains_char_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/contains-char-eq--3000f48f80b390a9120c2bb0.md) | 32 | `result-track:3000f48f80b390a9120c2bb03905008415015034e10695478197635c8dcc331b` |
| 3 | `theorem` | [find?_char_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/find-char-eq-some-iff-splits--a9ec5280f767a7e121f63570.md) | 36 | `result-track:a9ec5280f767a7e121f63570d6f8026eeaaf7c23593f8e446208b26e3acb1324` |
| 4 | `theorem` | [Pos.find?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/pos-find-char-eq-some-iff--fdb496288e59a858c3e5f952.md) | 49 | `result-track:fdb496288e59a858c3e5f952cc3b008165202d7dc15a44533213dab4978fcdcd` |
| 5 | `theorem` | [Pos.find?_char_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/pos-find-char-eq-some-iff-splits--bdb60de5e9925178b218f71e.md) | 55 | `result-track:bdb60de5e9925178b218f71e50317570b336de852c66e3e9837dc4838e734779` |
| 6 | `theorem` | [Pos.find?_char_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/pos-find-char-eq-none-iff--9379dfbf4b3b7395dd4766de.md) | 91 | `result-track:9379dfbf4b3b7395dd4766debb14203fb06884bf5aa87f124805c656629b4ad3` |
| 7 | `theorem` | [Pos.find?_char_eq_none_iff_not_mem_of_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/pos-find-char-eq-none-iff-not-mem-of-splits--331759ff42cd59b7d38874b5.md) | 95 | `result-track:331759ff42cd59b7d38874b5f0f5404b67fc42c75dfcbd160a7485345d7d54af` |
| 8 | `theorem` | [Pos.find?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/pos-find-char-eq-some-iff--b9d1379115611b245c2123e2.md) | 102 | `result-track:b9d1379115611b245c2123e2215882ab4a157776b61924753937a8c58123b386` |
| 9 | `theorem` | [Pos.find?_char_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/pos-find-char-eq-some-iff-splits--f7e2053cdfe27bd5e1c5bb82.md) | 121 | `result-track:f7e2053cdfe27bd5e1c5bb828d7c48e48d2580e87f57ae93b0cbec96571e34f3` |
| 10 | `theorem` | [Pos.find?_char_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/pos-find-char-eq-none-iff--3a28a38e6451570c149b4fa7.md) | 132 | `result-track:3a28a38e6451570c149b4fa7f87695d4fe562c3e283e1ab70fe67bd811274a85` |
| 11 | `theorem` | [Pos.find?_char_eq_none_iff_not_mem_of_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/pos-find-char-eq-none-iff-not-mem-of-splits--2fee566d4f350becdd6ad675.md) | 144 | `result-track:2fee566d4f350becdd6ad675761e8462bae101a611e326590d8db84e8879d4be` |
| 12 | `theorem` | [Pos.find?_char_eq_find?_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/pos-find-char-eq-find-beq--43f54f6f6417b99841837c2a.md) | 150 | `result-track:43f54f6f6417b99841837c2a93ab2bedbd76725979dc2b7943cab2942ee1de50` |
| 13 | `theorem` | [find?_char_eq_find?_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/find-char-eq-find-beq--641ee14dc4180536df118634.md) | 154 | `result-track:641ee14dc4180536df1186345e358458cc658a705ea7e8ed7a19fc6df5ce6ab1` |
| 14 | `theorem` | [contains_char_eq_contains_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/contains-char-eq-contains-beq--418f3067971abc7cd4a9a155.md) | 158 | `result-track:418f3067971abc7cd4a9a155e4ee76e970bf2ece9a54f79be51b9b192683daef` |
| 15 | `theorem` | [find?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/find-char-eq-some-iff--63fbc0688fa3ebe22f223b8b.md) | 162 | `result-track:63fbc0688fa3ebe22f223b8b5d14436fa318a18ea2fd9cfbf22af624503c347d` |
| 16 | `theorem` | [find?_char_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/find-char-eq-some-iff-splits--6741038d6748dba7edd9102b.md) | 176 | `result-track:6741038d6748dba7edd9102bc91091871a8df10a1fc176cf7242f0711ba159e9` |
| 17 | `theorem` | [contains_char_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantbe70f777de183baab7c19c754af68ef9ce515181dcfabcb6a4d39f0bf8684cd1.lean/declarations/contains-char-eq--c36333a63914e7a421b6fd41.md) | 187 | `result-track:c36333a63914e7a421b6fd41f32af3d1ef1f87c8d7bdde707e01bea577b3a8d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
