# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHPoleExclusionAudit.Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bb5d362e547586007fe5393b85e50cb12c924d2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bb5d362e547586007fe5393b85e50cb12c924d2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/finitetransform--abcf9489dfe464faa85f8c71.md) | 29 | `declaration-track:abcf9489dfe464faa85f8c7142e85a4faa10b49e3794258b3c9ac7546db5f7de` |
| 2 | `def` | [exclusionBound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/exclusionbound--51573ef199adda800f517b85.md) | 34 | `declaration-track:51573ef199adda800f517b85456850ee2f0bd20dff20581b5d0876d2782d4daf` |
| 3 | `theorem` | [exclusionBound_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/exclusionbound-eq--3295fa1cb06a7d5f22a75075.md) | 38 | `result-track:3295fa1cb06a7d5f22a7507584ec7f6be5e33c2820929e04153ab5d9c6fe8fca` |
| 4 | `theorem` | [exclusionBound_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/exclusionbound-pos--10ba00130e2bdfde73009110.md) | 45 | `result-track:10ba00130e2bdfde730091103314ca31797d301cfbeea94ba028aca809b606a8` |
| 5 | `theorem` | [regularPart_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/regularpart-lower-bound--c52ea46970ad8e5762d8dab5.md) | 57 | `result-track:c52ea46970ad8e5762d8dab53f755caa9362ab9de87ee1d394a71c15f144f88d` |
| 6 | `theorem` | [finite_regularPart_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/finite-regularpart-bound--247a93b416494a6768af4ca7.md) | 72 | `result-track:247a93b416494a6768af4ca7e26e203c155171821192407ef2b5a519a638f7ac` |
| 7 | `theorem` | [finiteTransform_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/finitetransform-lower-bound--0c42772ef283e6df65852e0f.md) | 97 | `result-track:0c42772ef283e6df65852e0f518d5d946631986ae34a74907128147651790c24` |
| 8 | `theorem` | [finiteTransform_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/finitetransform-ne-zero--9205a33fa273fb5280882660.md) | 110 | `result-track:9205a33fa273fb5280882660aee4f830be42000c1d1bc50bf5ac3798410ca968` |
| 9 | `theorem` | [finiteTransform_ne_zero_of_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/finitetransform-ne-zero-of-radius--bb09c6dd4c0cbb363db2b2e8.md) | 126 | `result-track:bb09c6dd4c0cbb363db2b2e81c4a0d3fbc09cc3e24b94643417f34ca5d0d197d` |
| 10 | `theorem` | [perturbative_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/perturbative-ne-zero--6617bd764002b2f44ea9d5af.md) | 143 | `result-track:6617bd764002b2f44ea9d5af31d17567f7549ee42bfdc04072d8d35e8fcf24b6` |
| 11 | `theorem` | [finiteTransform_comparison_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/finitetransform-comparison-ne-zero--70341e264aca4eda1aea8ec3.md) | 152 | `result-track:70341e264aca4eda1aea8ec37cf10ca3fa476423620db24d0f3fe55b47165186` |
| 12 | `def` | [twoAtomTransform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/twoatomtransform--b2cdea310306976bef18abab.md) | 165 | `declaration-track:b2cdea310306976bef18ababeba6ac0c09212b41dbbeb70c4b1b61dff2b3b361` |
| 13 | `theorem` | [twoAtomTransform_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/twoatomtransform-eq--c787ec1d5e5b55d3519ce84a.md) | 169 | `result-track:c787ec1d5e5b55d3519ce84aece385cd6761594c19b4db88103cf47213f935f7` |
| 14 | `theorem` | [twoAtomTransform_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/twoatomtransform-zero--d5ea1482a9f19a766908728b.md) | 177 | `result-track:d5ea1482a9f19a766908728b766fae5694931acc632484f82445350deb61fea4` |
| 15 | `theorem` | [no_gap_only_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusionAudit/Variant3d3e8559d33a664e0c94f24046c04583a44204655b8482ed2e6f1d4577f456a0.lean/declarations/no-gap-only-radius--64b57f588e201000e9885a17.md) | 185 | `result-track:64b57f588e201000e9885a17e66b4d32df18d9f46b2c6e34df06153ba3d1d715` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
