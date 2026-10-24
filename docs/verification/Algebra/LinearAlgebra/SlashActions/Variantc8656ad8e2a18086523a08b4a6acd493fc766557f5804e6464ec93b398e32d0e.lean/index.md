# Verification target: GRWTSK.Algebra.LinearAlgebra.SlashActions.Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0367fab1220c515ade50ab2e5ed6d6960ee78fb6",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0367fab1220c515ade50ab2e5ed6d6960ee78fb6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.MoebiusAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SlashAction](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/slashaction--1dfbdddd9bbdf4475db1241b.md) | 32 | `declaration-track:1dfbdddd9bbdf4475db1241bf015597a2849026c2683999c00f6a81ee0e1cfa4` |
| 2 | `theorem` | [SlashAction.neg_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/slashaction-neg-slash--d6d2da7618757ed84460a08d.md) | 46 | `result-track:d6d2da7618757ed84460a08da13a1e8af02b228cda9d3f430ebdc802011079fa` |
| 3 | `def` | [monoidHomSlashAction](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/monoidhomslashaction--6b9408d33b9e7a28a1825bb5.md) | 54 | `declaration-track:6b9408d33b9e7a28a1825bb54eeb8772d9d5625169bf60c1544c32b7efed30cd` |
| 4 | `def` | [slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/slash--b0b16185f0ccc0de58ae2119.md) | 67 | `declaration-track:b0b16185f0ccc0de58ae2119a5be13d639e2fe0c5446e269ded3dd6b38a1aa37` |
| 5 | `theorem` | [slash_mul](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/slash-mul--6a36cac7f9c7a02150687b1f.md) | 77 | `result-track:6a36cac7f9c7a02150687b1f2e294e8484f1e349abd69cd8c7c9327ccc92bd09` |
| 6 | `theorem` | [add_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/add-slash--bc3da3377fc6f439a8a27f58.md) | 91 | `result-track:bc3da3377fc6f439a8a27f58d4514a0ea0d4f72a4e3e21ff148a00473a314f79` |
| 7 | `theorem` | [slash_one](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/slash-one--f7d98c7b818f7072645d6c7e.md) | 96 | `result-track:f7d98c7b818f7072645d6c7e3718b41425b993bb3bb12ac0b37bb22d5af14e3b` |
| 8 | `theorem` | [zero_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/zero-slash--327cd477d3eb5353fb012765.md) | 99 | `result-track:327cd477d3eb5353fb0127650bfc2a07549891c86ca7fe20504bdb03b8400ee1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/instance--0272b7c32e465932cb9084bd.md) | 102 | `declaration-track:0272b7c32e465932cb9084bd41f328dfe79c9025a2aafb855f818c159104f458` |
| 10 | `theorem` | [slash_def](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/slash-def--0fe14b5d065887307a3d715f.md) | 111 | `result-track:0fe14b5d065887307a3d715f05b03f6016c575604b2dbb272f55fcbcebcab697` |
| 11 | `theorem` | [slash_apply](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/slash-apply--0ce108ed910d8bf3e3b5ed6a.md) | 115 | `result-track:0ce108ed910d8bf3e3b5ed6a40167f2664796cbc4cef57eab0fee0523e834560` |
| 12 | `theorem` | [smul_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/smul-slash--4d60fd74e2f11711fd112beb.md) | 119 | `result-track:4d60fd74e2f11711fd112beb6dd28599a16bffab6044780e3f588a316c2da439` |
| 13 | `instance` | [SLAction](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/slaction--3ee50f1629523fee6d91836f.md) | 124 | `declaration-track:3ee50f1629523fee6d91836fc6771324d5d47e395047a306eae90e336871635b` |
| 14 | `theorem` | [SL_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/sl-slash--fb6b3cf8b5080b7deb79fc0d.md) | 128 | `result-track:fb6b3cf8b5080b7deb79fc0dfca9d72bf0cac5a1141997cac098545f5f4e3c86` |
| 15 | `theorem` | [SL_slash_def](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/sl-slash-def--56855a835059c50a093d4897.md) | 131 | `result-track:56855a835059c50a093d48978b0be7f09fcdb54fa6ee10471f620a62b9f9ddb8` |
| 16 | `theorem` | [SL_slash_apply](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/sl-slash-apply--5e8e20d1e81d53b05b7304a3.md) | 136 | `result-track:5e8e20d1e81d53b05b7304a35afc9253d04095d6f4c57823d013538823aa9d95` |
| 17 | `theorem` | [SL_smul_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/sl-smul-slash--48e92fc900cdc2c982bcc3e6.md) | 141 | `result-track:48e92fc900cdc2c982bcc3e66da175f907f131b34de434ba2bc29f805dd29a14` |
| 18 | `theorem` | [is_invariant_const](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/is-invariant-const--8b7334f77ea2168fb85e5946.md) | 147 | `result-track:8b7334f77ea2168fb85e59466d924047062d60fbb56873df63e9a0109af2b895` |
| 19 | `theorem` | [is_invariant_one](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/is-invariant-one--853f1855e47d0eea6f98acef.md) | 153 | `result-track:853f1855e47d0eea6f98acef209538bc346ab6588a46ebc7caa41cdd79d6d5db` |
| 20 | `theorem` | [is_invariant_one'](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/is-invariant-one--6ca903daf259fba8768316e9.md) | 158 | `result-track:6ca903daf259fba8768316e92336a31105d4013411a95e18e118531e59e4ed1d` |
| 21 | `theorem` | [slash_action_eq'_iff](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/slash-action-eq-iff--b4dbe3c75166a5255da728d7.md) | 164 | `result-track:b4dbe3c75166a5255da728d76eaadc2f1d657273fd05a8668f0db1c241089382` |
| 22 | `theorem` | [mul_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/mul-slash--4145ceef62f36c9efecd7f1d.md) | 172 | `result-track:4145ceef62f36c9efecd7f1d331ae8ac03bb53678e8b3588433048dab2fd2075` |
| 23 | `theorem` | [mul_slash_SL2](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/declarations/mul-slash-sl2--5a03c1be99219ce26a9baf41.md) | 185 | `result-track:5a03c1be99219ce26a9baf41782ecbadaaacfd53fdb53c85071b793bfca6f6fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
