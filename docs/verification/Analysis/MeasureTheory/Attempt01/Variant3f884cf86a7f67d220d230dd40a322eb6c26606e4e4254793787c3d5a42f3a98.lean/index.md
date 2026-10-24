# Verification target: GRWTSK.Analysis.MeasureTheory.Attempt01.Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0043fa1d63d1fbf2233374947f02c7a7256554ce",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0043fa1d63d1fbf2233374947f02c7a7256554ce`.

Source path: `GRWTSK/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/poweronset--b1960a3ab850a0c5414f9c3e.md) | 25 | `declaration-track:b1960a3ab850a0c5414f9c3e2634d7ff588b0cc3157ed89f7ea27f1c9a1c7928` |
| 2 | `def` | [powerWeight](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/powerweight--67ffaa569609a2babfc9123a.md) | 28 | `declaration-track:67ffaa569609a2babfc9123a7404a1b6ad5a94be202c46ef5fa28087b6c619a7` |
| 3 | `def` | [positiveOnsetAtom](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/positiveonsetatom--5782da17956000f1c7321416.md) | 31 | `declaration-track:5782da17956000f1c7321416602c5e3447323fa37c12f950bc7f280726adb56b` |
| 4 | `def` | [positiveOnsetTail](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/positiveonsettail--804b7a99206ab433bc32e5c4.md) | 34 | `declaration-track:804b7a99206ab433bc32e5c4539b4992da2480e80df6bae75d2c6d0a42ed58e4` |
| 5 | `theorem` | [powerOnset_pos](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/poweronset-pos--8322533ed5c9a2d0c09aabd0.md) | 37 | `result-track:8322533ed5c9a2d0c09aabd06590f50b8392172e4ea0a65ff41cb5956c20a577` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/powerweight-nonneg--9aed3564ccb298e66df9b6fe.md) | 41 | `result-track:9aed3564ccb298e66df9b6fef8b1a9a893141273fd46c5f5969a90bc5a8c029a` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/positiveonsetatom-nonneg--6da44a6cf1ec0bf5ef504079.md) | 46 | `result-track:6da44a6cf1ec0bf5ef50407932c6d2de9e382cd28d1b38d640a4db6bf458e7d0` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/positiveonsetatom-measurable--6368345c6bb35f86a20dcf1a.md) | 50 | `result-track:6368345c6bb35f86a20dcf1ac1ca233e15eb6d689816accb4d9e0c827c803754` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/positiveonsetatom-integrable--55b4abd655f963e2d5406f97.md) | 54 | `result-track:55b4abd655f963e2d5406f97b9becaa277618af2b3d815e6c09e92936535a2b3` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/positiveonsetatom-integral--a789fe8ce9007e369463e964.md) | 60 | `result-track:a789fe8ce9007e369463e964c2d938a66c2b74a6346418136ed4579c18f6a62f` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/positiveonsetatom-eq-omitted--ca98f137628ed005f6f4ebaf.md) | 68 | `result-track:ca98f137628ed005f6f4ebaf1fa71ec750a8691a342ed3cae7ea0c1b898b569b` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/positiveonsetatom-le-zeromoment--30a58aa63d8c276212e1c069.md) | 74 | `result-track:30a58aa63d8c276212e1c0692cfc01e5ba7a76c0f888aaa1e14ece34ed747606` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/positiveonsettail-summable--0e2a079ccfa04530fa98a04c.md) | 81 | `result-track:0e2a079ccfa04530fa98a04cd011e303e2821a9e83de6b7570bed63951bf91cc` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/positiveonsettail-nonneg--450546eafc3ddd7868ac4637.md) | 86 | `result-track:450546eafc3ddd7868ac4637094412e96f561a835dc0b59a372ed431134ed925` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/positiveonsettail-measurable--dce5ca3d8d4bfb9f3bb4a387.md) | 89 | `result-track:dce5ca3d8d4bfb9f3bb4a387306fdc0d3673b7cbde4b935d983e9067778e3264` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../../mathematics/Analysis/MeasureTheory/Attempt01/Variant3f884cf86a7f67d220d230dd40a322eb6c26606e4e4254793787c3d5a42f3a98.lean/declarations/positiveonsettail-eq-indicator--f9a8d436ebb54ac00ef53a2e.md) | 92 | `result-track:f9a8d436ebb54ac00ef53a2e0aeee68f9a88e5a1fb56272a412afc98068e1259` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
