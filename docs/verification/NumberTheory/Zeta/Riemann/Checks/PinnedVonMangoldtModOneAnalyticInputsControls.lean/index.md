# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedVonMangoldtModOneAnalyticInputsControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f08cc758c14c03e3743af37061be7afd638594df",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f08cc758c14c03e3743af37061be7afd638594df`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtModOneAnalyticInputs`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_modOne_residueClass](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/declarations/actual-modone-residueclass--0224c537a72489c302757d0f.md) | 16 | `result-track:0224c537a72489c302757d0f14ab0acedbbee01ef2c82740ac6952c253e00603` |
| 2 | `theorem` | [actual_modOne_LSeries](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/declarations/actual-modone-lseries--a48a5ec0c76fe5355a670506.md) | 23 | `result-track:a48a5ec0c76fe5355a670506a22226d87e8b76d05517a30050ea7d643fdead6a` |
| 3 | `theorem` | [actual_modOne_pole_subtracted_auxiliary](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/declarations/actual-modone-pole-subtracted-auxiliary--95686f78304d19c7b9cd37ff.md) | 32 | `result-track:95686f78304d19c7b9cd37ff6523d4c0594bd0bb49ce4771e5121256c563e95a` |
| 4 | `theorem` | [actual_modOne_closed_continuity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/declarations/actual-modone-closed-continuity--abb1b53435b0d515e8ce32a8.md) | 40 | `result-track:abb1b53435b0d515e8ce32a82b38a1b4c8b388d06f0185c17f239d7e06d99397` |
| 5 | `theorem` | [actual_normTerm_match](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/declarations/actual-normterm-match--036e95e9d1f09088a80fccb1.md) | 47 | `result-track:036e95e9d1f09088a80fccb11f47e9f3b1f2a369cf4167ff03074b961c7b89fd` |
| 6 | `theorem` | [actual_normTerm_summable](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/declarations/actual-normterm-summable--56a979ff326ce4d936d7292d.md) | 55 | `result-track:56a979ff326ce4d936d7292dcafc6414e89c2b8120af5bea9b8783b3b8747cb9` |
| 7 | `theorem` | [actual_norm_cumsum_cheby](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/declarations/actual-norm-cumsum-cheby--8fa162b16f32205b31eb9247.md) | 60 | `result-track:8fa162b16f32205b31eb924788feb1c7233230cb3cedf4aeccdb2951777cdf79` |
| 8 | `theorem` | [actual_pinned_wienerIkehara_inputs](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/declarations/actual-pinned-wienerikehara-inputs--e862e4ef043a7bbb79124e2c.md) | 66 | `result-track:e862e4ef043a7bbb79124e2cb5cf8c90f6df6616bf5dd61671912dd1ca533c0f` |
| 9 | `def` | [MissingPinnedWienerIkeharaForLambda](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/declarations/missingpinnedwienerikeharaforlambda--4f8b665299921d639397c9a5.md) | 72 | `declaration-track:4f8b665299921d639397c9a51a690790a0c5315575a92e53ba9b40b10d5f157c` |
| 10 | `theorem` | [weakPNT_of_admitted_wienerIkehara](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/declarations/weakpnt-of-admitted-wienerikehara--81cfe48c244125fdcfb57cd7.md) | 81 | `result-track:81cfe48c244125fdcfb57cd7e1a7e26dbabdabecdb04ca1af9b9319fa6560ea7` |
| 11 | `def` | [remainingTauberianObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/declarations/remainingtauberianobligations--ac6aeea870195367b8030432.md) | 91 | `declaration-track:ac6aeea870195367b8030432eee594da72ac19272d4ecc06453fc0b3e9aa2373` |
| 12 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtModOneAnalyticInputsControls.lean/declarations/prohibitedpromotions--ee3db1151968c93b1e3fcb80.md) | 100 | `declaration-track:ee3db1151968c93b1e3fcb80d5f8bda09d301c4b0bca1bf05313444ed719c229` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
