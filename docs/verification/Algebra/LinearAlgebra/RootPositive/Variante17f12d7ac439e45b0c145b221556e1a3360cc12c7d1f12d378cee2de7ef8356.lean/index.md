# Verification target: GRWTSK.Algebra.LinearAlgebra.RootPositive.Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9710b3d190009e8fb3cc4c4061e50105954f963",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9710b3d190009e8fb3cc4c4061e50105954f963`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.IsValuedIn` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.WeylGroup` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InvariantForm](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/invariantform--51726d17e0eefde8933edde2.md) | 47 | `declaration-track:51726d17e0eefde8933edde27ea724853d0ad3c21b386fcea6967c68ff8178a2` |
| 2 | `lemma` | [apply_root_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/apply-root-ne-zero--903176f49aa0786ce2fd7e10.md) | 58 | `result-track:903176f49aa0786ce2fd7e1009ce4e28014f82af577195756ba1aec47e2acce8` |
| 3 | `lemma` | [two_mul_apply_root_root](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/two-mul-apply-root-root--c0d28c9b752738f103b435c9.md) | 61 | `result-track:c0d28c9b752738f103b435c90741510143fd1882582ab3bf373c6c8bb851fa3a` |
| 4 | `lemma` | [pairing_mul_eq_pairing_mul_swap](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/pairing-mul-eq-pairing-mul-swap--96e8b4f60f929e7ae78cccc3.md) | 68 | `result-track:96e8b4f60f929e7ae78cccc3272700081ce6ba600926e1d0ed3c132a9b64076f` |
| 5 | `lemma` | [apply_reflection_reflection](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/apply-reflection-reflection--1fb2001be4e01f7485145f82.md) | 75 | `result-track:1fb2001be4e01f7485145f82cb96fe2dcd789dd4065b3a35aeb4cf4a0acbe284` |
| 6 | `lemma` | [apply_weylGroup_smul](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/apply-weylgroup-smul--b4326359a016c1cc7b1a3d3b.md) | 80 | `result-track:b4326359a016c1cc7b1a3d3b898168b8732234d73fbd63a1c688578ed56c66ff` |
| 7 | `lemma` | [apply_root_root_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/apply-root-root-zero-iff--dafa22e637f8d1c4e8c21246.md) | 92 | `result-track:dafa22e637f8d1c4e8c2124640973c952d99e17b968e08cd5afcd937bca1098b` |
| 8 | `structure` | [RootPositiveForm](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/rootpositiveform--4421c394e466d1d7eaf7705a.md) | 104 | `declaration-track:4421c394e466d1d7eaf7705acf123f0172379a8d9a02ce995d0bb9456aa28f4e` |
| 9 | `lemma` | [form_apply_root_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/form-apply-root-ne-zero--ee42021b7c28d8eaaa880e12.md) | 118 | `result-track:ee42021b7c28d8eaaa880e123c91e1e148e124ed8d9db293037cc3c6f00511fb` |
| 10 | `def` | [toInvariantForm](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/toinvariantform--53a5b99f02178d7b7ec059b8.md) | 125 | `declaration-track:53a5b99f02178d7b7ec059b8564baf7e3bf6b30afd2d09bf01f4993944ac2bbb` |
| 11 | `lemma` | [two_mul_apply_root_root](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/two-mul-apply-root-root--4a58d5abebd14a5efb136ddb.md) | 132 | `result-track:4a58d5abebd14a5efb136ddb7243333f5beddcd853d0648a99db9bac9a4dd379` |
| 12 | `def` | [posForm](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/posform--03752f64e97e700642dbe8ad.md) | 138 | `declaration-track:03752f64e97e700642dbe8adc4d237b4cdc03ed2a14e459d7f7ec522d34fc042` |
| 13 | `lemma` | [algebraMap_posForm](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/algebramap-posform--7afb777b6ce2283c0f4c480c.md) | 151 | `result-track:7afb777b6ce2283c0f4c480c17662d54dc55d16920909a51ea1c08f3df2078c8` |
| 14 | `lemma` | [algebraMap_apply_eq_form_iff](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/algebramap-apply-eq-form-iff--b94a50803740ce0c05588338.md) | 156 | `result-track:b94a50803740ce0c05588338ad537b8a3aae86ea38e6fa33f4ebc857b24598cd` |
| 15 | `lemma` | [zero_lt_posForm_iff](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/zero-lt-posform-iff--aee7228d67bfd94dc4c77bcd.md) | 160 | `result-track:aee7228d67bfd94dc4c77bcd1ea98eed7da62d524f5e18a9d9e3e379a3596265` |
| 16 | `lemma` | [zero_lt_posForm_apply_root](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/zero-lt-posform-apply-root--3d5174edfa23fe91efceb453.md) | 166 | `result-track:3d5174edfa23fe91efceb4531d9122416d512e51368ea331055d2ca1fc4361e5` |
| 17 | `lemma` | [isSymm_posForm](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/issymm-posform--37416e22389c6da8a02c05da.md) | 171 | `result-track:37416e22389c6da8a02c05da3d66aff8652f30052e57d5049a226001d1c5d16b` |
| 18 | `def` | [rootLength](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/rootlength--048aefa071c3f6544f6c8a1c.md) | 178 | `declaration-track:048aefa071c3f6544f6c8a1c8525ec0b1bd9ddceeca0cc2e5396eb4cd7048ff0` |
| 19 | `lemma` | [rootLength_pos](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/rootlength-pos--1544d738ca0758c8e590d738.md) | 181 | `result-track:1544d738ca0758c8e590d73847f19ae8df92cf82919a99f0ff382669a1c8e77b` |
| 20 | `lemma` | [rootLength_reflection_perm_self](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/rootlength-reflection-perm-self--70064985fb367a0b7090b6c0.md) | 185 | `result-track:70064985fb367a0b7090b6c0474ffcd5540c4234fa9d80baaa98ed5fc89b1704` |
| 21 | `lemma` | [algebraMap_rootLength](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/algebramap-rootlength--43d57a4cefc1bd54344eca78.md) | 189 | `result-track:43d57a4cefc1bd54344eca7886839b921bb3d0d64378422d4d9e59152907e9ea` |
| 22 | `lemma` | [pairingIn_mul_eq_pairingIn_mul_swap](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/pairingin-mul-eq-pairingin-mul-swap--5601f130a4d84691acbecccd.md) | 193 | `result-track:5601f130a4d84691acbecccdab0736711e3ca54db88c9c1fac1d2aa1e3e19788` |
| 23 | `lemma` | [zero_lt_apply_root_root_iff](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/zero-lt-apply-root-root-iff--344f4c391192bca7e72c0111.md) | 199 | `result-track:344f4c391192bca7e72c0111a6d4fb3d1ce0b33fcbd0b6e2c1673355f2c69c6e` |
| 24 | `lemma` | [zero_lt_pairingIn_iff](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/zero-lt-pairingin-iff--47f0978bc7328c7821c247e0.md) | 217 | `result-track:47f0978bc7328c7821c247e0ddeb514bce04f04370d6d74ff05c7bde9d21868a` |
| 25 | `lemma` | [coxeterWeight_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/declarations/coxeterweight-nonneg--eacbeef9ae6b5dc45abd188a.md) | 222 | `result-track:eacbeef9ae6b5dc45abd188aadf375dddd8e682ee5c3b1f043948dbc17a10381` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
