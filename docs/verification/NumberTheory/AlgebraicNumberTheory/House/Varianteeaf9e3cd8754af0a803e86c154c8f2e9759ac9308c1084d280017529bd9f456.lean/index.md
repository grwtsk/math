# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.House.Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51917a30dcce0839d79e6550bfd70debf303f6a0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51917a30dcce0839d79e6550bfd70debf303f6a0`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.SiegelsLemma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.EquivReindex` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [house](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/house--46fd7a78b5d7d650c98276de.md) | 35 | `declaration-track:46fd7a78b5d7d650c98276de53dc178392e3211b32b729b85d0da99513bc3cb1` |
| 2 | `theorem` | [house_eq_sup'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/house-eq-sup--9b36f735d8825fe65062c057.md) | 38 | `result-track:9b36f735d8825fe65062c057694ee8c523512ae36ff693060b3ede0bb3fbf96e` |
| 3 | `theorem` | [house_sum_le_sum_house](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/house-sum-le-sum-house--3f0245dd578f62651ff463cc.md) | 42 | `result-track:3f0245dd578f62651ff463cc8ef11a7b4f1d6a05623f865900ffb30c9479c5bf` |
| 4 | `theorem` | [house_nonneg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/house-nonneg--d3dac30a07e48a9573e38fe1.md) | 46 | `result-track:d3dac30a07e48a9573e38fe156e0edaac4ca75287d85f5e663ee40f8fcfe558b` |
| 5 | `theorem` | [house_mul_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/house-mul-le--ceabc444333f7857f6b768b8.md) | 48 | `result-track:ceabc444333f7857f6b768b840ba3150553552772197f57893b85403025f7de7` |
| 6 | `theorem` | [house_intCast](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/house-intcast--d2f975b29041077cf50b5653.md) | 51 | `result-track:d2f975b29041077cf50b56537494e0a973991015d8a228a6deca99d91fb0b758` |
| 7 | `def` | [c](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/c--2c9bebcc6671fa5b561bbf17.md) | 74 | `declaration-track:2c9bebcc6671fa5b561bbf17c28222ae89eab272cb60010678151248f704e1f0` |
| 8 | `theorem` | [c_nonneg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/c-nonneg--ac581c22c51d0119551d7d7f.md) | 76 | `result-track:ac581c22c51d0119551d7d7fd3f0dfbf3bae30f673a92d92acc87cc0477c5d0e` |
| 9 | `theorem` | [basis_repr_norm_le_const_mul_house](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/basis-repr-norm-le-const-mul-house--578732fc697bc9e47766dd0a.md) | 80 | `result-track:578732fc697bc9e47766dd0a54049c72c755faed24ab0076170a3ef5ed87217b` |
| 10 | `def` | [newBasis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/newbasis--f104c7770966306ba4024e7b.md) | 103 | `declaration-track:f104c7770966306ba4024e7bfe4ff05ca165ad2ff95b2c9b16d5f3c88590cdd3` |
| 11 | `def` | [supOfBasis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/supofbasis--c86755e2035bafc22daf672c.md) | 107 | `declaration-track:c86755e2035bafc22daf672cd567972e55e0139c0908c266cc232a582836219d` |
| 12 | `theorem` | [supOfBasis_nonneg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/supofbasis-nonneg--84ef94b0eb21188308e9c962.md) | 112 | `result-track:84ef94b0eb21188308e9c9621f83af45a8ed444bab6edc8dd59c924c05f473a1` |
| 13 | `def` | [a'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/a--34f0452b8106c8814f3a4a89.md) | 120 | `declaration-track:34f0452b8106c8814f3a4a8926dd70510bdf445dee01bc236f2bd1e5c8a934e7` |
| 14 | `def` | [asiegel](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/asiegel--89419e537c7fab0358801043.md) | 125 | `declaration-track:89419e537c7fab03588010432c4fa74eae3c1324dec86b61643aadd1ca67509b` |
| 15 | `theorem` | [asiegel_ne_0](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/asiegel-ne-0--e73f1935e3e25614b9ce6710.md) | 130 | `result-track:e73f1935e3e25614b9ce6710f886765d3cdc09eeb66717dbaf31d7acec449441` |
| 16 | `def` | [ξ](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/anonymous--efc30308520b120c532cdc89.md) | 151 | `declaration-track:efc30308520b120c532cdc893cfb6e9c2f18a1cbbe52163b00880ec76d375ce4` |
| 17 | `theorem` | [ξ_ne_0](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/ne-0--20141c5b04837f70bf405004.md) | 154 | `result-track:20141c5b04837f70bf4050044a581d20cda6b2df1f1f23ce568572fe8d60de50` |
| 18 | `theorem` | [lin_1](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/lin-1--4e09b6aeeeac7e6f9345c48d.md) | 163 | `result-track:4e09b6aeeeac7e6f9345c48d3fec7cd752e64081b5d9e877f903eb343f614652` |
| 19 | `theorem` | [ξ_mulVec_eq_0](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/mulvec-eq-0--924b70af375d4162e23ea4cd.md) | 170 | `result-track:924b70af375d4162e23ea4cd5536e3c443fd7d4e7c34a964737d8aefded57682` |
| 20 | `abbrev` | [c₂](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/c--a19ef27c061d06540e67cede.md) | 205 | `declaration-track:a19ef27c061d06540e67cededd87e0968febe0a4a9ae4c3809e97616f9aadc27` |
| 21 | `theorem` | [c₂_nonneg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/c-nonneg--1aa0e1b56bba788f1786ec98.md) | 207 | `result-track:1aa0e1b56bba788f1786ec987e5d592d6952add18959ae3877ed34bbc93bf16a` |
| 22 | `theorem` | [asiegel_remark](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/asiegel-remark--daa6d1e75613cba112ae650e.md) | 214 | `result-track:daa6d1e75613cba112ae650e74669758731a7d107650115e516b54be7ff30e92` |
| 23 | `def` | [c₁](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/c--6099bcff559cd013927f9a5f.md) | 247 | `declaration-track:6099bcff559cd013927f9a5fe3089eeacb7a9ffae125971c90caebf34dd67927` |
| 24 | `theorem` | [house_le_bound](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/house-le-bound--dab79526a2c995fd7de0fa0a.md) | 250 | `result-track:dab79526a2c995fd7de0fa0a88549c55d6f08dc7be1562d34993277777614d43` |
| 25 | `theorem` | [exists_ne_zero_int_vec_house_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/declarations/exists-ne-zero-int-vec-house-le--e156248f02d742606e21d82d.md) | 292 | `result-track:e156248f02d742606e21d82d63dd767ba7a3600634dbe7b27598a7d03734ada9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
