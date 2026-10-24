# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AsPolynomial.Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "998e66a6ffe39a4a66f3811e6bd3607e86eca316",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `998e66a6ffe39a4a66f3811e6bd3607e86eca316`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.RatFunc.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.EuclideanDomain` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/c--b6772e96416e251939243826.md) | 46 | `declaration-track:b6772e96416e251939243826b4b7bf38bbcf55d0176aa979ef7c64e2c2dbdee9` |
| 2 | `theorem` | [algebraMap_eq_C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/algebramap-eq-c--9fe0bf8e138a691c71571942.md) | 49 | `result-track:9fe0bf8e138a691c71571942be97dde105efc33a0cb0234e016567dba1cf10f9` |
| 3 | `theorem` | [algebraMap_C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/algebramap-c--a1b4ccade3f93cc4c82e7cd3.md) | 53 | `result-track:a1b4ccade3f93cc4c82e7cd3d654b2295bc67e0d7a513918366dfc39a1ee6b81` |
| 4 | `theorem` | [algebraMap_comp_C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/algebramap-comp-c--5dfae6584db30ec8d55cfbaa.md) | 57 | `result-track:5dfae6584db30ec8d55cfbaabbcfd5a6b41136bc1bfe2f2404e119b58077d713` |
| 5 | `theorem` | [smul_eq_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/smul-eq-c-mul--b1b3630a7be5ab1379391582.md) | 60 | `result-track:b1b3630a7be5ab1379391582493843815c9d31f16aa0d0c0a65806fb30b24c95` |
| 6 | `def` | [X](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/x--0dbd5c30d840ec8997036dd3.md) | 64 | `declaration-track:0dbd5c30d840ec8997036dd3059f92aa17bcf644584d4493d9d1df6640d003a2` |
| 7 | `theorem` | [algebraMap_X](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/algebramap-x--c6e29553affee19f1bb4b51a.md) | 68 | `result-track:c6e29553affee19f1bb4b51afc8f89e2c1dcb694ca94939f39cde1a1d40bbf74` |
| 8 | `theorem` | [num_C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/num-c--2b7b00b4e8f99e04e516aac1.md) | 78 | `result-track:2b7b00b4e8f99e04e516aac1991b0eaec1ef8449fbbb7f00c88f51bd947feff6` |
| 9 | `theorem` | [denom_C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/denom-c--f99c93e55b6731d6fa277f1e.md) | 82 | `result-track:f99c93e55b6731d6fa277f1e8d3f7b0c34e6f05c7888e4060a3bd9311e33e629` |
| 10 | `theorem` | [num_X](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/num-x--4f45e13f65672bc49f8667eb.md) | 86 | `result-track:4f45e13f65672bc49f8667eb20ceb5737211fd2762dc87e0897bb0ef544c7b8f` |
| 11 | `theorem` | [denom_X](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/denom-x--a89f169c225856742e82b30b.md) | 90 | `result-track:a89f169c225856742e82b30b7db90c70459a41a3f2af5c6cc5d045145494c4ec` |
| 12 | `theorem` | [X_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/x-ne-zero--bb5f807329285f9aa28846dc.md) | 93 | `result-track:bb5f807329285f9aa28846dc5c5a87dcd215b0c9a944976960f9824d84ff14ee` |
| 13 | `def` | [eval](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/eval--cf24182ebd060f7c56ebfd91.md) | 104 | `declaration-track:cf24182ebd060f7c56ebfd91603aae63dd19ec49331aaa401294ebb8aa24df6c` |
| 14 | `theorem` | [eval_eq_zero_of_eval₂_denom_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/eval-eq-zero-of-eval-denom-eq-zero--79ac08af3673340722d21112.md) | 109 | `result-track:79ac08af3673340722d21112f0b75afe827a01676a9620d4d41687bab66ecf00` |
| 15 | `theorem` | [eval₂_denom_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/eval-denom-ne-zero--9a1fea979952623721b202d7.md) | 112 | `result-track:9a1fea979952623721b202d734d05cb60618f5f6618d7f2cd5a905aa4796ad27` |
| 16 | `theorem` | [eval_C](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/eval-c--79af4df4c6befecbe1aa17bf.md) | 119 | `result-track:79af4df4c6befecbe1aa17bfe6063304f0b3e3c0c2162ff74ec13dfd7b0423f0` |
| 17 | `theorem` | [eval_X](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/eval-x--e5d38089cbbdc87659c7f3d0.md) | 122 | `result-track:e5d38089cbbdc87659c7f3d00c9d77cf53a033b11ac0420af9f08cdf1ed57bf0` |
| 18 | `theorem` | [eval_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/eval-zero--dc97730347fe931ae5bec907.md) | 125 | `result-track:dc97730347fe931ae5bec907b0540a866006d96a91a876c85a32993c6fdeee85` |
| 19 | `theorem` | [eval_one](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/eval-one--1dea17892903e4500a0b8621.md) | 128 | `result-track:1dea17892903e4500a0b862152b9abfcd568c0cfbf523d976c4b92b0de777000` |
| 20 | `theorem` | [eval_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/eval-algebramap--99bf0a03ea3c840bdb36c5ef.md) | 131 | `result-track:99bf0a03ea3c840bdb36c5ef972cf20cd9152382be4c7990b8da707b07b921c1` |
| 21 | `theorem` | [eval_add](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/eval-add--0241b6d8a2be2de5ba2c1097.md) | 142 | `result-track:0241b6d8a2be2de5ba2c10970c4a195c3b56d28e91c895898053b32bff71e556` |
| 22 | `theorem` | [eval_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/eval-mul--6b44ad8c4c4661295ac10751.md) | 161 | `result-track:6b44ad8c4c4661295ac107517202f66e4b5ad37d8d07eaddf4811fe8c4394ca9` |
| 23 | `def` | [idealX](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/idealx--890e09b741bae60295ab9900.md) | 190 | `declaration-track:890e09b741bae60295ab99005f41744aedf754ade9a863d42a5a1173b89743cc` |
| 24 | `theorem` | [idealX_span](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/idealx-span--f44e72d9de036c474f34e524.md) | 196 | `result-track:f44e72d9de036c474f34e5240e6c7b1bd76ab876ab53c048021f2031a724ecd2` |
| 25 | `theorem` | [valuation_X_eq_neg_one](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/valuation-x-eq-neg-one--ece015cd465990c9f438fade.md) | 199 | `result-track:ece015cd465990c9f438fade84ba4a58d15cac4577d36db85ac956ebac5d72bb` |
| 26 | `theorem` | [valuation_of_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/valuation-of-mk--a9542da4439ad616e0bd366f.md) | 205 | `result-track:a9542da4439ad616e0bd366f7bba6bc8f7a6c0d8306abfe6a1143a1d09f74e56` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/instance--f6fe77110f041f1666ff8c3b.md) | 218 | `declaration-track:f6fe77110f041f1666ff8c3be1073f9dd87f88c538375c8636eb1e8f91c88a94` |
| 28 | `theorem` | [WithZero.valued_def](../../../../../mathematics/Algebra/CommutativeAlgebra/AsPolynomial/Variant67ba713264221dd105582cebec0fae2c97339b1a36fc07a15506a9e2422b8654.lean/declarations/withzero-valued-def--35d084c480976f7664ba1077.md) | 221 | `result-track:35d084c480976f7664ba107748046b0ef08512daf2873491baeb599343af4be1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
