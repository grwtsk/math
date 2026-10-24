# Verification target: GRWTSK.Analysis.FunctionalAnalysis.LinearPMap.Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "618b5445bdd7b71e75e1308efdec6f79c5c2b95e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `618b5445bdd7b71e75e1308efdec6f79c5c2b95e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Completeness` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFormalAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/isformaladjoint--84104dc9304115c9e2c3b8d4.md) | 74 | `declaration-track:84104dc9304115c9e2c3b8d41aef865bda19b99124c8fd5e4eef3ebc8064c3a5` |
| 2 | `theorem` | [IsFormalAdjoint.symm](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/isformaladjoint-symm--f3d06f5fc28daac9eeec170b.md) | 80 | `result-track:f3d06f5fc28daac9eeec170b9651b5a26bb9ca033f0ae1f8944db0429652d853` |
| 3 | `def` | [adjointDomain](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/adjointdomain--b4e57a44ad3bbb52216815c8.md) | 90 | `declaration-track:b4e57a44ad3bbb52216815c8a73ddf4a414fe8bd75b88f79ed688c3bb17cd5ec` |
| 4 | `def` | [adjointDomainMkCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/adjointdomainmkclm--e27958a50ccdc838cb7292e4.md) | 102 | `declaration-track:e27958a50ccdc838cb7292e4928e11bfd1bfa241ff43bece40a4ab957efc064d` |
| 5 | `theorem` | [adjointDomainMkCLM_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/adjointdomainmkclm-apply--59ef96dac4fbfd8f7f2b0da3.md) | 105 | `result-track:59ef96dac4fbfd8f7f2b0da3832eb5f27094221031eac95cf77e00e2a5792283` |
| 6 | `def` | [adjointDomainMkCLMExtend](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/adjointdomainmkclmextend--2338ce05fde20c4b7b00c8ea.md) | 113 | `declaration-track:2338ce05fde20c4b7b00c8ea34eb52c73ef8f3339a33e70131fdf4cf3a3910da` |
| 7 | `theorem` | [adjointDomainMkCLMExtend_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/adjointdomainmkclmextend-apply--523ad5302ea2625fb8ef046a.md) | 118 | `result-track:523ad5302ea2625fb8ef046a4c5fb808a27b9e8b2ca86c23ab7c6dcaa8b34dda` |
| 8 | `def` | [adjointAux](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/adjointaux--18007b99aa456a185cd5d5c0.md) | 128 | `declaration-track:18007b99aa456a185cd5d5c0754bf02c287b0a1778a397b1f882ed4ee3263371` |
| 9 | `theorem` | [adjointAux_inner](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/adjointaux-inner--fe5b13603657d14c56c6edee.md) | 139 | `result-track:fe5b13603657d14c56c6edee1803b6bce3a63a0672a80f4c18edccca582b4c5b` |
| 10 | `theorem` | [adjointAux_unique](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/adjointaux-unique--d87fd8e5a05bcfe0c253193b.md) | 143 | `result-track:d87fd8e5a05bcfe0c253193b4d8075c54916efe237653ffcd4f94fb55e942571` |
| 11 | `def` | [adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/adjoint--0afea93eb04ba5c59b0d451e.md) | 151 | `declaration-track:0afea93eb04ba5c59b0d451e7e3153680a6d08eba481b97e05cfdd7f6fb21907` |
| 12 | `theorem` | [mem_adjoint_domain_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/mem-adjoint-domain-iff--00eb3ff323848b8e917112be.md) | 158 | `result-track:00eb3ff323848b8e917112bece463379347e3fc03b2ec04ef02b0f859734ae43` |
| 13 | `theorem` | [mem_adjoint_domain_of_exists](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/mem-adjoint-domain-of-exists--25f59a19f1809d4aa3af6c50.md) | 163 | `result-track:25f59a19f1809d4aa3af6c508fd9112e546adb1eb2e12e63ac58d61582eae6b1` |
| 14 | `theorem` | [adjoint_apply_of_not_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/adjoint-apply-of-not-dense--3a022bf3a4ba1a15706e59b3.md) | 171 | `result-track:3a022bf3a4ba1a15706e59b38891169149b8edc923e40de5251ce33ce2b48ba6` |
| 15 | `theorem` | [adjoint_apply_of_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/adjoint-apply-of-dense--07aa8b65960df4aaaaf2eba7.md) | 176 | `result-track:07aa8b65960df4aaaaf2eba708fa3db2751c480904c6cc95f96950458ec98c78` |
| 16 | `theorem` | [adjoint_apply_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/adjoint-apply-eq--cfe37a7582025dd2d7f43d26.md) | 182 | `result-track:cfe37a7582025dd2d7f43d26bcdeffb13391b34b062fb6ececfb5fc05c0c2ba5` |
| 17 | `theorem` | [adjoint_isFormalAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/adjoint-isformaladjoint--242687d9e04402aa6074e9e1.md) | 188 | `result-track:242687d9e04402aa6074e9e197bf6efe9d49594f64f9eabbfeff62e613b26475` |
| 18 | `theorem` | [IsFormalAdjoint.le_adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/isformaladjoint-le-adjoint--11b6aa37da87b6a4f599e26b.md) | 193 | `result-track:11b6aa37da87b6a4f599e26bff3ea87ccd481a4721a15a6be685ba09642a7f2d` |
| 19 | `theorem` | [toPMap_adjoint_eq_adjoint_toPMap_of_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/topmap-adjoint-eq-adjoint-topmap-of-dense--051f3ac061ec1c3ebe00c4d8.md) | 210 | `result-track:051f3ac061ec1c3ebe00c4d83b6a7c5c96e77ea548a53cd809389622e88ba8e5` |
| 20 | `instance` | [instStar](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/inststar--37144f3f0b0cd2df4b3fe88b.md) | 227 | `declaration-track:37144f3f0b0cd2df4b3fe88b51a331b2a627460daee00a156b071dd2eab5b9c5` |
| 21 | `theorem` | [isSelfAdjoint_def](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/isselfadjoint-def--65109409e7731a235683867c.md) | 232 | `result-track:65109409e7731a235683867c65a9ee51eac97b7a9d4fd4971c6471f88d63af09` |
| 22 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.IsFormalAdjoint.Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.IsSelfAdjoint.dense_domain](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant7a553000c90b05d99844a7f235c7e73a8a105f5e3e190f13fcecc10da07bd46a.lean/declarations/root-grwtsk-analysis-functionalanalysis-isformaladjoint-variant5229b2432--6fd20c6846db51dcac7133c4.md) | 239 | `result-track:6fd20c6846db51dcac7133c45c0646c1120237d275785caa450543bb30fbf56f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
