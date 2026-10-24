# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.ClassNumber.Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43e996299010e5a798bcaa8df6bffa60c3b3a8a3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43e996299010e5a798bcaa8df6bffa60c3b3a8a3`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Discriminant.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.IsPrincipal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.RamificationInertia.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instFintypeClassGroup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/declarations/instfintypeclassgroup--60d96135c04199c4be86bb64.md) | 55 | `declaration-track:60d96135c04199c4be86bb64cfaed589cec2e64dac981f4e32ee5ef64f4f7a40` |
| 2 | `def` | [classNumber](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/declarations/classnumber--01e3f893062d9cb8475eb9b5.md) | 61 | `declaration-track:01e3f893062d9cb8475eb9b530c7180e915d4241247914a07b7b9c347b706d07` |
| 3 | `theorem` | [classNumber_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/declarations/classnumber-ne-zero--abcf08390f74f7829eba6a95.md) | 64 | `result-track:abcf08390f74f7829eba6a955eff7831000dfda0ef2ed3e61a897d7ebe1c8cf2` |
| 4 | `theorem` | [classNumber_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/declarations/classnumber-pos--65b14c8b865eea9c526f4c4f.md) | 66 | `result-track:65b14c8b865eea9c526f4c4feef9c0749fa539173fe17d8a578d4e55dce8868f` |
| 5 | `theorem` | [classNumber_eq_one_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/declarations/classnumber-eq-one-iff--5db8d034d648581c91bd5638.md) | 71 | `result-track:5db8d034d648581c91bd56383e584e923236bf8e3f5c250033c6286436e63a56` |
| 6 | `theorem` | [exists_ideal_in_class_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/declarations/exists-ideal-in-class-of-norm-le--fbe820aaf0e7442067a77c9d.md) | 74 | `result-track:fbe820aaf0e7442067a77c9d394205ebe4d6de3b1d2d75567e86a70228aca2c3` |
| 7 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/declarations/isprincipalidealring-of-isprincipal-of-norm-le--9862685eaa175694ebb95cdc.md) | 105 | `result-track:9862685eaa175694ebb95cdcf829adbbc6de3352410bcc8cbb5a7ce872901d56` |
| 8 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_norm_le_of_isPrime](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/declarations/isprincipalidealring-of-isprincipal-of-norm-le-of-isprime--68f9f3298f279ce6c1e00d38.md) | 113 | `result-track:68f9f3298f279ce6c1e00d381619d52c377ba6d34046940ec85744eaca495c7e` |
| 9 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_pow_inertiaDeg_le_of_mem_primesOver_of_mem_Icc](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/declarations/isprincipalidealring-of-isprincipal-of-pow-inertiadeg-le-of-mem-primesov--09965824d3ace2e14c0d55c7.md) | 138 | `result-track:09965824d3ace2e14c0d55c7af90ab6b5dc717e5835ed0aa5da549398e9cac3c` |
| 10 | `theorem` | [isPrincipalIdealRing_of_abs_discr_lt](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/declarations/isprincipalidealring-of-abs-discr-lt--3c44132bedd5d91d2122960a.md) | 166 | `result-track:3c44132bedd5d91d2122960ab4b48387f0b50373ba59dc97a999c308c816d7db` |
| 11 | `theorem` | [classNumber_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/declarations/classnumber-eq--f8b659be03d0a8f1428a8a56.md) | 184 | `result-track:f8b659be03d0a8f1428a8a5683feb6ffa5fc83bd63d8e8395ae92b66f9dc37dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
