# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IntegralNormalization.Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "621a6f3a2cf1093b92408396bb13acbd36457e72",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `621a6f3a2cf1093b92408396bb13acbd36457e72`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Monic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.ScaleRoots` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization--5b04a72efa8def2e0fe7b024.md) | 43 | `declaration-track:5b04a72efa8def2e0fe7b024db9733eb8ea9747e92acbf43bd14665f3616b18f` |
| 2 | `theorem` | [integralNormalization_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-zero--d53354319dcfe9c2f50b8d51.md) | 48 | `result-track:d53354319dcfe9c2f50b8d519e53655d3fbc50616bc1fcc15a38c06bf6daa1f6` |
| 3 | `theorem` | [integralNormalization_C](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-c--87f2598bac7425c4622109e9.md) | 52 | `result-track:87f2598bac7425c4622109e9d75e707c356957f5999dfdea51e235bec158fc95` |
| 4 | `theorem` | [integralNormalization_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-coeff--149a0ef11b5f8eafb8c14829.md) | 57 | `result-track:149a0ef11b5f8eafb8c14829da02cc24aabc4144315914df778aa394dd6f9989` |
| 5 | `theorem` | [support_integralNormalization_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/support-integralnormalization-subset--6fe8aaa1b968731b30f7762e.md) | 64 | `result-track:6fe8aaa1b968731b30f7762ec9a4a71571c1dbea1df6f055394d330c73ed4051` |
| 6 | `theorem` | [integralNormalization_coeff_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-coeff-degree--f459176e840cd3a7d1d34320.md) | 72 | `result-track:f459176e840cd3a7d1d343205de7d121b69fc43f1756ad1ef2a43bd4bdcf33e9` |
| 7 | `theorem` | [integralNormalization_coeff_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-coeff-natdegree--0bcda824b537ce558a33afa5.md) | 75 | `result-track:0bcda824b537ce558a33afa5c5cac0cd7cc2c267c79f3ef96fbb7c9d68fae716` |
| 8 | `theorem` | [integralNormalization_coeff_degree_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-coeff-degree-ne--94e75698acd95f2f3632bc10.md) | 79 | `result-track:94e75698acd95f2f3632bc10bce93af95091f47089cbbd969c5715dd60f3cbbf` |
| 9 | `theorem` | [integralNormalization_coeff_ne_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-coeff-ne-natdegree--5fb27a46b62d268f96fe780a.md) | 83 | `result-track:5fb27a46b62d268f96fe780a40a0a38889a016ff9c3168f117a9e39a29850a41` |
| 10 | `theorem` | [monic_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/monic-integralnormalization--f0c5a59e36fa0e8ca7595981.md) | 87 | `result-track:f0c5a59e36fa0e8ca75959815746bb6e72133ffe41052b03d13b47128735b42d` |
| 11 | `theorem` | [integralNormalization_coeff_mul_leadingCoeff_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-coeff-mul-leadingcoeff-pow--6c0eba147e6f0fbc5c1a32cc.md) | 93 | `result-track:6c0eba147e6f0fbc5c1a32ccb602056924748e18600f1c42228196bdf77a10df` |
| 12 | `theorem` | [integralNormalization_mul_C_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-mul-c-leadingcoeff--13edd4d7e6facf9dd554477f.md) | 107 | `result-track:13edd4d7e6facf9dd554477ff6e06a540a4649c0c0eacd9cf9ffe3804c737d0e` |
| 13 | `theorem` | [integralNormalization_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-degree--196dfe742b05d54782672316.md) | 120 | `result-track:196dfe742b05d54782672316e20989b8ac7d6629e8a192552dfcba355841c1ac` |
| 14 | `theorem` | [leadingCoeff_smul_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/leadingcoeff-smul-integralnormalization--d1fa097ec448ec321111e197.md) | 128 | `result-track:d1fa097ec448ec321111e197fce63f0c0683b0919b277ae46c37d56c9e132903` |
| 15 | `theorem` | [integralNormalization_eval₂_leadingCoeff_mul_of_commute](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-eval-leadingcoeff-mul-of-commute--5ae1465d42a9c4c855c62072.md) | 132 | `result-track:5ae1465d42a9c4c855c62072462e0b251ef2c3b64aec7869b9a82495803400e2` |
| 16 | `theorem` | [integralNormalization_eval₂_leadingCoeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-eval-leadingcoeff-mul--c9b5fe769549c440098aba55.md) | 143 | `result-track:c9b5fe769549c440098aba55e60448953932504c7862751bbc7c37f7d3a72155` |
| 17 | `theorem` | [integralNormalization_eval₂_eq_zero_of_commute](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-eval-eq-zero-of-commute--dfcf84db7e12a657ce2ded1c.md) | 148 | `result-track:dfcf84db7e12a657ce2ded1c97e87aaadc4087052477375febe6524dc854b8e2` |
| 18 | `theorem` | [integralNormalization_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-eval-eq-zero--09ab9ef2eba5b128f0172111.md) | 160 | `result-track:09ab9ef2eba5b128f017211163e46b19f3990449a9cb66fdffdcce5a57ed9254` |
| 19 | `theorem` | [integralNormalization_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/integralnormalization-aeval-eq-zero--49f0a1f4befd2e24334f7168.md) | 165 | `result-track:49f0a1f4befd2e24334f71685587252e1606653e9ce4e066b7f62478763332c9` |
| 20 | `theorem` | [support_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/declarations/support-integralnormalization--033c0c29f06cda475bc90e2b.md) | 178 | `result-track:033c0c29f06cda475bc90e2b9eef93abe170861bc7f6888390da78be91879904` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
