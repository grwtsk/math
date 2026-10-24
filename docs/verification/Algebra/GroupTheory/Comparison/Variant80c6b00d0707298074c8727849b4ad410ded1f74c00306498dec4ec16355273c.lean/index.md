# Verification target: GRWTSK.Algebra.GroupTheory.Comparison.Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdf384f1f1c00a96b5e33af2d5564e40ed34a9df",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdf384f1f1c00a96b5e33af2d5564e40ed34a9df`.

Source path: `GRWTSK/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.Interface` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Construction` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Comparison.LogicalStatus` — import line 8; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Properties` — import line 9; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Scope` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comparison](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/declarations/comparison--c4f6dc7a2d60def2af30207e.md) | 39 | `declaration-track:c4f6dc7a2d60def2af30207ee239a20e5d235bb4738935d54e39fe6f60659417` |
| 2 | `theorem` | [comparison_apply](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/declarations/comparison-apply--cced29b14dea76091eecfeda.md) | 47 | `result-track:cced29b14dea76091eecfedaa042501a9726ee4c55edbafcdff2dc9f27f1d268` |
| 3 | `def` | [certified](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/declarations/certified--d1ed7bb431509629277ccce7.md) | 59 | `declaration-track:d1ed7bb431509629277ccce72003b8289ce2a20e77f765f8316d9b403a07dfca` |
| 4 | `structure` | [RepresentationFamily](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/declarations/representationfamily--c1e8e838e91a608d62b98bc7.md) | 83 | `declaration-track:c1e8e838e91a608d62b98bc7939f30c1a41b5b79c7ac843b96875e2a9459a4ae` |
| 5 | `def` | [comparison](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/declarations/comparison--22aed08b86e00c5b73b78f6e.md) | 108 | `declaration-track:22aed08b86e00c5b73b78f6ef98b8d32db3ee64f5dcf2a2c4910bfafa95bf574` |
| 6 | `theorem` | [comparison_apply](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/declarations/comparison-apply--7672f5c374bb40ca698f7c34.md) | 119 | `result-track:7672f5c374bb40ca698f7c346d157ff5782d159eabed1998ef57c0ca050b7544` |
| 7 | `def` | [comparisonAt](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/declarations/comparisonat--41a060e73304e0ba4f40df64.md) | 130 | `declaration-track:41a060e73304e0ba4f40df64db88a6e2af72ffc548514b48e71555258e0eac0a` |
| 8 | `def` | [spec](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/declarations/spec--54263f7eb4cfc4486b69fbfb.md) | 143 | `declaration-track:54263f7eb4cfc4486b69fbfbf67469131d4a41a1ce0975b2a99d7b263a2fbca5` |
| 9 | `theorem` | [spec_apply](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/declarations/spec-apply--da42ac717cdac097896e9e07.md) | 151 | `result-track:da42ac717cdac097896e9e077d06da71847be46eacde2ca62adcd721350f99ec` |
| 10 | `def` | [bijectivityClaim](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/declarations/bijectivityclaim--1bf049fe4685632fbd3c85d3.md) | 160 | `declaration-track:1bf049fe4685632fbd3c85d31168a793933431c1ebd6f7ae148ba076179a4d36` |
| 11 | `def` | [conditionalCertificate](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/declarations/conditionalcertificate--a4248a215f2858ec0dc31869.md) | 171 | `declaration-track:a4248a215f2858ec0dc31869cf6331f2ffd5eef049b287c40e337a0f50071687` |
| 12 | `def` | [certified](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/declarations/certified--491e95e568a4fac09cc0447c.md) | 184 | `declaration-track:491e95e568a4fac09cc0447c2b020e34ca24486b151b92a98bec6d28eb3c648e` |
| 13 | `theorem` | [certified_property](../../../../../mathematics/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/declarations/certified-property--6d0c22875b5e8b270c25d902.md) | 198 | `result-track:6d0c22875b5e8b270c25d902f7e55565c28b7b7aabbc91f81e37feaf8fe59c30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
