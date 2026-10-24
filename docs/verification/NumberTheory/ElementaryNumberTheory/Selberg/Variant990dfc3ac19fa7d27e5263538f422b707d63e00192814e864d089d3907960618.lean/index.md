# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Selberg.Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9ebcce06b6944c9d13099895314b98acc3835c1",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9ebcce06b6944c9d13099895314b98acc3835c1`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lemma` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [selbergBoundingSum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selbergboundingsum--79ae9e23ed9b8d8a1a6c1845.md) | 41 | `declaration-track:79ae9e23ed9b8d8a1a6c1845400f37419682fbe8433014b58eeb980c1249bdf7` |
| 2 | `theorem` | [selbergBoundingSum_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selbergboundingsum-pos--e0bf56f3466a20c3bf628387.md) | 47 | `result-track:e0bf56f3466a20c3bf628387c7b43e79375f053d2078e2381945b21c898bdb55` |
| 3 | `theorem` | [selbergBoundingSum_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selbergboundingsum-ne-zero--905a3e0e52384a513936cb5e.md) | 61 | `result-track:905a3e0e52384a513936cb5eeb896772af1e10327c44a55c2f3e09709837d51a` |
| 4 | `theorem` | [selbergBoundingSum_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selbergboundingsum-nonneg--cb1eaa8844e8e313afb241de.md) | 65 | `result-track:cb1eaa8844e8e313afb241deaec28f8743f52ac9b902333bc0c360a21df13cab` |
| 5 | `def` | [selbergWeights](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selbergweights--11dde150728bf5a8a6333942.md) | 67 | `declaration-track:11dde150728bf5a8a6333942f2782de9809f28f103956fa27ebecedd94bd35a4` |
| 6 | `theorem` | [selbergWeights_eq_zero_of_not_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selbergweights-eq-zero-of-not-dvd--1eeac4de9b4f0bc6c8a5ff24.md) | 77 | `result-track:1eeac4de9b4f0bc6c8a5ff248ea2a1c049a2474d734b35f60ddeed2c77939d77` |
| 7 | `theorem` | [selbergWeights_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selbergweights-eq-zero--d79653c462c943030778a672.md) | 81 | `result-track:d79653c462c943030778a67207f572333bce69c8fc891324aebe268f61045da4` |
| 8 | `theorem` | [selbergWeights_mul_mu_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selbergweights-mul-mu-nonneg--8c0a5950854e8ce57e1bf025.md) | 97 | `result-track:8c0a5950854e8ce57e1bf025d2e7d6de5e189cee97a821b85ef8ea6e45f60f00` |
| 9 | `lemma` | [sum_mul_subst](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/sum-mul-subst--b3ab72fef5e8d71bb2c7a713.md) | 116 | `result-track:b3ab72fef5e8d71bb2c7a7130338af4906c20942e804e3e20a254846efae03b4` |
| 10 | `theorem` | [selbergWeights_eq_dvds_sum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selbergweights-eq-dvds-sum--ba6f5e8c3502659512b42bb4.md) | 157 | `result-track:ba6f5e8c3502659512b42bb4166f9b0586c2b4d39260b641625e621cda423173` |
| 11 | `theorem` | [selbergWeights_diagonalisation](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selbergweights-diagonalisation--49497d6310bf2a28716c4108.md) | 199 | `result-track:49497d6310bf2a28716c4108d8d4d72a1e49a577020093b99ff64dabafcdcb5e` |
| 12 | `def` | [selbergMuPlus](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selbergmuplus--49681a0c190c6693da2a348c.md) | 233 | `declaration-track:49681a0c190c6693da2a348cd8c4db9188c2010e8c3daeadda1ab3a0ba464285` |
| 13 | `theorem` | [weight_one_of_selberg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/weight-one-of-selberg--42dd8701295384ff3f8a1c70.md) | 239 | `result-track:42dd8701295384ff3f8a1c70cd0d156849130ab8195de479e739a8e2ddeadf51` |
| 14 | `theorem` | [selbergμPlus_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selberg-plus-eq-zero--a266023634c39feb88157758.md) | 248 | `result-track:a266023634c39feb88157758643c9202e896682589ab2d44ca7b9b5d379aee45` |
| 15 | `def` | [selbergUbSieve](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selbergubsieve--a3b5541d69f0ffb7c37d8786.md) | 252 | `declaration-track:a3b5541d69f0ffb7c37d8786b1f53eeaba53f9d74c5c708988b8c6df4d924e30` |
| 16 | `theorem` | [mainSum_eq_diag_quad_form](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/mainsum-eq-diag-quad-form--1885be336cd3f4ed37f7e27c.md) | 256 | `result-track:1885be336cd3f4ed37f7e27c8bbf887d6df578b280faea04d2d35940e8d65302` |
| 17 | `theorem` | [selberg_bound_simple_mainSum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selberg-bound-simple-mainsum--25f6c0f79fddad1bd08f8bab.md) | 263 | `result-track:25f6c0f79fddad1bd08f8bab980404859ea9523a3127471ef0af2a9d7a4fa711` |
| 18 | `lemma` | [eq_gcd_mul_of_dvd_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/eq-gcd-mul-of-dvd-of-coprime--9ad745faa40827b6aa9f9b7a.md) | 281 | `result-track:9ad745faa40827b6aa9f9b7a030ba892377ed98c717bb26549bb57c00094517d` |
| 19 | `lemma` | [_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/helper--546f0fb8b35ad85d49212aeb.md) | 288 | `result-track:546f0fb8b35ad85d49212aeb3d05b8508c0817ecf2a04e55bf7fa1e38f13d764` |
| 20 | `theorem` | [selbergBoundingSum_ge](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selbergboundingsum-ge--e283777af38b5ae42117e81a.md) | 310 | `result-track:e283777af38b5ae42117e81a0a1b12127ca188e02fa36aa0dec8a03bd848afa3` |
| 21 | `theorem` | [selberg_bound_weights](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selberg-bound-weights--89e148110cebe5eae8f261ec.md) | 380 | `result-track:89e148110cebe5eae8f261ec0bb277ddd76691f9235475208b4dc78ede1b61a4` |
| 22 | `theorem` | [selberg_bound_muPlus](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selberg-bound-muplus--cd572eb31354aba7a7fbad5a.md) | 395 | `result-track:cd572eb31354aba7a7fbad5aca3363192adc41b81fbe2e0bc9aaf75b0c25a18e` |
| 23 | `theorem` | [selberg_bound_simple_errSum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selberg-bound-simple-errsum--d5b7423a9a5f337c4324d4ba.md) | 425 | `result-track:d5b7423a9a5f337c4324d4bafe452e36ee322c4d30293745ca23a8139b285967` |
| 24 | `theorem` | [selberg_bound_simple](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Selberg/Variant990dfc3ac19fa7d27e5263538f422b707d63e00192814e864d089d3907960618.lean/declarations/selberg-bound-simple--8936f42ef4b3b03dbad7d579.md) | 436 | `result-track:8936f42ef4b3b03dbad7d579370cbd7b10894af163304c9811cb54ecf23457ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
