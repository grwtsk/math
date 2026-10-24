# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Taylor.Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "863930baaaddf91dc91b2f93567a85af732f80b7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `863930baaaddf91dc91b2f93567a85af732f80b7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Module` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [taylorCoeffWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/taylorcoeffwithin--06c677dffd74f59ffa31076a.md) | 55 | `declaration-track:06c677dffd74f59ffa31076ae294d8fc60157a4f4ffd507845b4405f5bac1695` |
| 2 | `def` | [taylorWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/taylorwithin--66e72e834ea1ba5ca7619dc2.md) | 64 | `declaration-track:66e72e834ea1ba5ca7619dc2530e202f6161eabac45ff861cc2b86b89fdbb5de` |
| 3 | `def` | [taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/taylorwithineval--d6952cb4c3c32c3c8e1a09d4.md) | 71 | `declaration-track:d6952cb4c3c32c3c8e1a09d4e8d0ede6bfa0c15f7b4863a427bac2d665960ac2` |
| 4 | `theorem` | [taylorWithin_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/taylorwithin-succ--1ae6da4acbcf3334dcaa99b2.md) | 75 | `result-track:1ae6da4acbcf3334dcaa99b2b2750ed5b8850f0ad10d09bf5648bd998805a4b1` |
| 5 | `theorem` | [taylorWithinEval_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/taylorwithineval-succ--19bab98686c785b145a2b2b1.md) | 84 | `result-track:19bab98686c785b145a2b2b18409d15657456df5fdc764b4a7a236c2fe94d520` |
| 6 | `theorem` | [taylor_within_zero_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/taylor-within-zero-eval--4784a4b4e9e0472d7fa387a2.md) | 98 | `result-track:4784a4b4e9e0472d7fa387a28a932dc0ba3ce7fc4f0128294d2d399bdda7a254` |
| 7 | `theorem` | [taylorWithinEval_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/taylorwithineval-self--7d911763c99538a39f7ed1b3.md) | 108 | `result-track:7d911763c99538a39f7ed1b3a9cee463e25b78c6c61afb72e504217ae1ea60bc` |
| 8 | `theorem` | [taylor_within_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/taylor-within-apply--657330df27b73e60f98a4c4e.md) | 115 | `result-track:657330df27b73e60f98a4c4e7c202dfc46f564edb2de2327bbc7d6f00c0974eb` |
| 9 | `theorem` | [continuousOn_taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/continuouson-taylorwithineval--2b4385d9f11bb6ce19f941bf.md) | 126 | `result-track:2b4385d9f11bb6ce19f941bf2a0b6485c8dc87768bf1c65c9973607c623787dc` |
| 10 | `theorem` | [monomial_has_deriv_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/monomial-has-deriv-aux--404b7aa97439999dcc374369.md) | 141 | `result-track:404b7aa97439999dcc374369aa8e0241b48bf8d4f047937d120fc5139fb362c7` |
| 11 | `theorem` | [hasDerivWithinAt_taylor_coeff_within](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/hasderivwithinat-taylor-coeff-within--fc410e93b23acd406c53cdfa.md) | 149 | `result-track:fc410e93b23acd406c53cdfa1f56217236f81b7494b02300358abb9078b6078d` |
| 12 | `theorem` | [hasDerivWithinAt_taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/hasderivwithinat-taylorwithineval--44f126ec207c1c1e110714f3.md) | 176 | `result-track:44f126ec207c1c1e110714f3d660c05fde0dde85c53d73d7342020cb9802138b` |
| 13 | `theorem` | [taylorWithinEval_hasDerivAt_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/taylorwithineval-hasderivat-ioo--e524fedc0cb7164732cc4fb4.md) | 204 | `result-track:e524fedc0cb7164732cc4fb44b6beaf57969a37ec01df8db6e5b2fc19c668c02` |
| 14 | `theorem` | [has_deriv_within_taylorWithinEval_at_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/has-deriv-within-taylorwithineval-at-icc--9304d5605c47e2d0730c7641.md) | 218 | `result-track:9304d5605c47e2d0730c7641a56207aa440331223913ed3842a4efb189fced20` |
| 15 | `theorem` | [taylor_mean_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/taylor-mean-remainder--3b6472879ecc14bc5e504fa5.md) | 237 | `result-track:3b6472879ecc14bc5e504fa5b49a16b524d8a587a8cf119c712a9e8eaacb8db8` |
| 16 | `theorem` | [taylor_mean_remainder_lagrange](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/taylor-mean-remainder-lagrange--7885492ffa21c1c979ef6199.md) | 266 | `result-track:7885492ffa21c1c979ef61993a72d7fdda475ba18edf2c14fd72d24f619fa889` |
| 17 | `theorem` | [taylor_mean_remainder_cauchy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/taylor-mean-remainder-cauchy--f35b30606cc3efe8b24b8a52.md) | 298 | `result-track:f35b30606cc3efe8b24b8a52ac740c5d06e332935686b71bd084cf5e3b316095` |
| 18 | `theorem` | [taylor_mean_remainder_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/taylor-mean-remainder-bound--c4c6cd7f201a8a8ab7267b97.md) | 319 | `result-track:c4c6cd7f201a8a8ab7267b976233d9683908b5d69a86be5497e6aec2f922d655` |
| 19 | `theorem` | [exists_taylor_mean_remainder_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant8f1a4fff85c890903e2171e6bfbf1c280d78f9897912e2ee0dce57ce128047fe.lean/declarations/exists-taylor-mean-remainder-bound--facf62fb7bbab7121f83d7c3.md) | 362 | `result-track:facf62fb7bbab7121f83d7c3b7fcefd9cd211aac4def404068d927481b2c27ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
