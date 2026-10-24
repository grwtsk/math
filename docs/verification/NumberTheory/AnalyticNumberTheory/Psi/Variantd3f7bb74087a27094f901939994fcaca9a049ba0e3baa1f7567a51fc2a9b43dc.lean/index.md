# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Psi.Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b5e73eccb695d7ba489001e0676bcd56fb94a97",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b5e73eccb695d7ba489001e0676bcd56fb94a97`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalRat.Taylor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vonMangoldtUB](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/vonmangoldtub--4102ac3b69a3417e21cf32fa.md) | 44 | `declaration-track:4102ac3b69a3417e21cf32fa546253011dcfc65ae08ab87cf8d94ca0d23d0b6a` |
| 2 | `def` | [psiUB](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/psiub--59897ec25879bef4dcbd0478.md) | 49 | `declaration-track:59897ec25879bef4dcbd0478ee80a3ffe5df05d6ef49f285f0b8c089c121a0ad` |
| 3 | `theorem` | [vonMangoldt_le_vonMangoldtUB](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/vonmangoldt-le-vonmangoldtub--6295cacb35cc6c9b9ae40d2c.md) | 55 | `result-track:6295cacb35cc6c9b9ae40d2c1e3b5a0e62b9ff5fe3b9854836faf552c5728a7b` |
| 4 | `theorem` | [psi_le_psiUB](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/psi-le-psiub--dfd07408a18be5d0d6a3bc88.md) | 69 | `result-track:dfd07408a18be5d0d6a3bc88e32a21f89b1490af1bef7841345114fb1e7cf1cf` |
| 5 | `theorem` | [psi_le_of_psiUB_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/psi-le-of-psiub-le--d7f8f1435b924011f42b3656.md) | 80 | `result-track:d7f8f1435b924011f42b3656d47f71ea8709aefb0862bacb78621d0086d8cd23` |
| 6 | `def` | [checkPsiLeMulWith](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/checkpsilemulwith--8e1dd35d02de9b4f287c2581.md) | 90 | `declaration-track:8e1dd35d02de9b4f287c2581f728616fb802f74597c1e7d22ebe878436add0f9` |
| 7 | `theorem` | [psi_le_of_checkPsiLeMulWith](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/psi-le-of-checkpsilemulwith--28bbb44d057ec4ab8750cea0.md) | 94 | `result-track:28bbb44d057ec4ab8750cea08c770b9f85a6a223b810428d8a50bed8e4bf3eda` |
| 8 | `theorem` | [psi_le_mul_real_of_checkPsiLeMulWith](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/psi-le-mul-real-of-checkpsilemulwith--6a8ea947e5e302ad958d4636.md) | 108 | `result-track:6a8ea947e5e302ad958d46361309c9d1c7b6a16a8678ab1c1e69d3b0b0cb3412` |
| 9 | `def` | [checkPsiBound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/checkpsibound--720586a383aa49e89b51dbf6.md) | 125 | `declaration-track:720586a383aa49e89b51dbf672016488a9de73ba55b2a4adc1aa5dd66f3b5a39` |
| 10 | `theorem` | [psi_le_of_checkPsiBound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/psi-le-of-checkpsibound--80701385878ca689e6291d11.md) | 129 | `result-track:80701385878ca689e6291d11d62d9d160bf6383615a0f3f2e704157405b666b7` |
| 11 | `theorem` | [psi_le_mul_real](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/psi-le-mul-real--4edb1a9e112f9c3125fd0443.md) | 137 | `result-track:4edb1a9e112f9c3125fd0443693dc70dc574a21aa84842e8fb69663a8565e82b` |
| 12 | `def` | [psiUBPrefix](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/psiubprefix--139a1f09784fd052df87d415.md) | 147 | `declaration-track:139a1f09784fd052df87d4152a7f3e6be313f62b668d4cab97bcc647e86c7456` |
| 13 | `def` | [checkAllPsiLeMulWith](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/checkallpsilemulwith--b12144fc1a1a526dfdf55403.md) | 152 | `declaration-track:b12144fc1a1a526dfdf554038e203c41e3a28392c061334846d36cf190af2082` |
| 14 | `def` | [allPsiBoundsHold](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/allpsiboundshold--a8d10d09e7f3699cb5960adf.md) | 164 | `declaration-track:a8d10d09e7f3699cb5960adf311b66f1221f5cfffe266e2c5b9a4f34ac936874` |
| 15 | `theorem` | [psiUB_succ](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/psiub-succ--15ec8ff5d78f63971b144b0a.md) | 169 | `result-track:15ec8ff5d78f63971b144b0a11a77d78a94a0e2c58e86c96f51855f01f98357b` |
| 16 | `theorem` | [psiUB_eq_acc](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/psiub-eq-acc--25ef8967e26ca6fa3812b110.md) | 179 | `result-track:25ef8967e26ca6fa3812b1102aa861a46d0a1b21f9f0e2b1900bc5539df46500` |
| 17 | `def` | [go_true_implies_checkPsiLeMulWith](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/go-true-implies-checkpsilemulwith--d5b1c0baf4fb5a7471c7a11b.md) | 189 | `declaration-track:d5b1c0baf4fb5a7471c7a11b00bd8880562e1719341bf19ef7eb8f74634ed550` |
| 18 | `theorem` | [checkAllPsiLeMulWith_implies_checkPsiLeMulWith](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/checkallpsilemulwith-implies-checkpsilemulwith--c3622f4e217af7845d43d190.md) | 225 | `result-track:c3622f4e217af7845d43d1908197df80f0f09fecc09aea971be3ef24888a5899` |
| 19 | `theorem` | [allPsiBoundsHold_implies_checkPsiBound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/declarations/allpsiboundshold-implies-checkpsibound--382a534833e5517c15af0669.md) | 233 | `result-track:382a534833e5517c15af0669e7212d2a2323fdfb25fd4b001d3cf9fcb17c7a65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
