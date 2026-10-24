# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DivergenceTheorem.Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "238ec72ea654b689e795ffd0b34acb880f60300a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `238ec72ea654b689e795ffd0b34acb880f60300a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Additive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.RestrictScalars` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_volume_sub_integral_face_upper_sub_lower_smul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean/declarations/norm-volume-sub-integral-face-upper-sub-lower-smul-le--f763e68eb5f575f16b14ed0e.md) | 68 | `result-track:f763e68eb5f575f16b14ed0ee39534141f538a08544dfb02c6971de66392b2d8` |
| 2 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean/declarations/macro-rules--b9d59d8ccca930dac59213cb.md) | 142 | `declaration-track:b9d59d8ccca930dac59213cb0dcf22694a337f2fd3e23f3078260f0f822370d5` |
| 3 | `theorem` | [hasIntegral_GP_pderiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean/declarations/hasintegral-gp-pderiv--0871a0ad5ac979c078f27092.md) | 154 | `result-track:0871a0ad5ac979c078f27092585ab564e42c515a86e40161ea426c20c4b75763` |
| 4 | `theorem` | [hasIntegral_GP_divergence_of_forall_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean/declarations/hasintegral-gp-divergence-of-forall-hasderivwithinat--ea6ada216dba7d3c5efe4df6.md) | 270 | `result-track:ea6ada216dba7d3c5efe4df6475144c2110a043fb503d9e87c7e14667715f6e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
