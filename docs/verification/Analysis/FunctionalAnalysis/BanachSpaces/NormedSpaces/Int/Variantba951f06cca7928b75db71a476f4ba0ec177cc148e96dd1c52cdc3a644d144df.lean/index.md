# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Int.Variantba951f06cca7928b75db71a476f4ba0ec177cc148e96dd1c52cdc3a644d144df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99d5af4adc43ad88a2bf3d60cab5f4d44ffb9a31",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantba951f06cca7928b75db71a476f4ba0ec177cc148e96dd1c52cdc3a644d144df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantba951f06cca7928b75db71a476f4ba0ec177cc148e96dd1c52cdc3a644d144df.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantba951f06cca7928b75db71a476f4ba0ec177cc148e96dd1c52cdc3a644d144df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99d5af4adc43ad88a2bf3d60cab5f4d44ffb9a31`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantba951f06cca7928b75db71a476f4ba0ec177cc148e96dd1c52cdc3a644d144df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantba951f06cca7928b75db71a476f4ba0ec177cc148e96dd1c52cdc3a644d144df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nnnorm_coe_units](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantba951f06cca7928b75db71a476f4ba0ec177cc148e96dd1c52cdc3a644d144df.lean/declarations/nnnorm-coe-units--7fa75dd49981cdb376f8532b.md) | 30 | `result-track:7fa75dd49981cdb376f8532b76df66a31dc82b10b92e15c135f74ffa4e7b8342` |
| 2 | `theorem` | [norm_coe_units](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantba951f06cca7928b75db71a476f4ba0ec177cc148e96dd1c52cdc3a644d144df.lean/declarations/norm-coe-units--d2e4903a9880907bf7f4abbe.md) | 34 | `result-track:d2e4903a9880907bf7f4abbe24876839ae20d80f4a4744726d06d23b831f31df` |
| 3 | `theorem` | [nnnorm_natCast](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantba951f06cca7928b75db71a476f4ba0ec177cc148e96dd1c52cdc3a644d144df.lean/declarations/nnnorm-natcast--f39c8485fb7f13504155bfb8.md) | 38 | `result-track:f39c8485fb7f13504155bfb8a3798e86e27feaa676db0b75d19c501fcb418cc3` |
| 4 | `lemma` | [enorm_natCast](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantba951f06cca7928b75db71a476f4ba0ec177cc148e96dd1c52cdc3a644d144df.lean/declarations/enorm-natcast--b3ff278e01038a0adab395eb.md) | 41 | `result-track:b3ff278e01038a0adab395eb6ba19b1a43de018d634cc7a7b50eb1a8a09a7d2d` |
| 5 | `theorem` | [toNat_add_toNat_neg_eq_nnnorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantba951f06cca7928b75db71a476f4ba0ec177cc148e96dd1c52cdc3a644d144df.lean/declarations/tonat-add-tonat-neg-eq-nnnorm--e7a45083a25683615bcb2a09.md) | 44 | `result-track:e7a45083a25683615bcb2a09ba71c47dcf4391e9a277da276c8569be77c83b3f` |
| 6 | `theorem` | [toNat_add_toNat_neg_eq_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantba951f06cca7928b75db71a476f4ba0ec177cc148e96dd1c52cdc3a644d144df.lean/declarations/tonat-add-tonat-neg-eq-norm--f3e55305f77c1671ae8b61f3.md) | 48 | `result-track:f3e55305f77c1671ae8b61f3c66f60a46159f2cc6cdadce9dc9247c519123c56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
