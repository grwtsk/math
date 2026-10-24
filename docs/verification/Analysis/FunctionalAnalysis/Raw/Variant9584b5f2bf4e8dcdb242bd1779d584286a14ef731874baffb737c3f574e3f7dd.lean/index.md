# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Raw.Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4659b092a46e18dcaf0aa3ffc6c4a07632db2e79",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4659b092a46e18dcaf0aa3ffc6c4a07632db2e79`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Kernel.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Completion` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Raw](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/raw--526d1d5c4e35097f3b034c7e.md) | 27 | `declaration-track:526d1d5c4e35097f3b034c7ed7886a5b31af397ccd84665008eefa4bd8a018ba` |
| 2 | `def` | [toFinsupp](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/tofinsupp--f3f6b256e11c92b61c16eb9e.md) | 34 | `declaration-track:f3f6b256e11c92b61c16eb9e7ea40da98c7af57745803a0ba3eda964b7cbaa85` |
| 3 | `def` | [inner](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/inner--913ccad39996af8d116d3342.md) | 38 | `declaration-track:913ccad39996af8d116d334277d7050e373dfb194a3d94c494085e489e9ce7da` |
| 4 | `def` | [core](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/core--eb65ae87edded12c24ca8cb0.md) | 44 | `declaration-track:eb65ae87edded12c24ca8cb0cb59b6de3e2685d59ad29a7ad8ad8223941b8da0` |
| 5 | `def` | [seminorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/seminorm--be4f56ccf4a6076e621042c2.md) | 69 | `declaration-track:be4f56ccf4a6076e621042c2ec0ce596348a898abca467081a5c3c329e2d6613` |
| 6 | `theorem` | [conjugate_linear_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/conjugate-linear-left--f3b0c7fa50bc6443b72d5409.md) | 73 | `result-track:f3b0c7fa50bc6443b72d5409d35f8d7d3000acecd9e187f3c39c68c242e53377` |
| 7 | `theorem` | [inner_conj_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/inner-conj-symm--795ad01faa0a0f7c2d248bfc.md) | 80 | `result-track:795ad01faa0a0f7c2d248bfc653fe68a3d54f5f639d5bf3e5e48c15008ede1b5` |
| 8 | `theorem` | [linear_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/linear-right--66c3c4f620bb2da2ee0cc5a0.md) | 85 | `result-track:66c3c4f620bb2da2ee0cc5a0995a904875506c6ad871951cfaccd7a73c2a78cb` |
| 9 | `theorem` | [add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/add-left--8787e1217a88f938fb71ac3e.md) | 93 | `result-track:8787e1217a88f938fb71ac3e8694bd666f788b90545809531a6faff2dba2c1f2` |
| 10 | `theorem` | [add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/add-right--7bc14a5ebc17b6af7bdd8995.md) | 99 | `result-track:7bc14a5ebc17b6af7bdd899557edf9c8d5f3dcb9c72a3fff1124431713712540` |
| 11 | `theorem` | [inner_self_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/inner-self-nonneg--d45c461aa1ebf3e919461ac7.md) | 106 | `result-track:d45c461aa1ebf3e919461ac7b9a47d749974fec7be56145352cac5b84ed2fb5e` |
| 12 | `theorem` | [kernel_cauchy_schwarz](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/kernel-cauchy-schwarz--03eaeb9a6a9a9efb6c00e61a.md) | 111 | `result-track:03eaeb9a6a9a9efb6c00e61accb7f3f12ba8a9acc747d00165befbef2d4eb342` |
| 13 | `def` | [basisVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/basisvector--cbde2f631b2dc8aa58420aa6.md) | 123 | `declaration-track:cbde2f631b2dc8aa58420aa6f0267e4bfbffaa02b47cfa148bab375bfb53e23f` |
| 14 | `theorem` | [inner_basisVector_basisVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variant9584b5f2bf4e8dcdb242bd1779d584286a14ef731874baffb737c3f574e3f7dd.lean/declarations/inner-basisvector-basisvector--1d51d4a3044132652fca011d.md) | 127 | `result-track:1d51d4a3044132652fca011dfd10a0bc141536ad2b3a6f5e17646f5654e04829` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
