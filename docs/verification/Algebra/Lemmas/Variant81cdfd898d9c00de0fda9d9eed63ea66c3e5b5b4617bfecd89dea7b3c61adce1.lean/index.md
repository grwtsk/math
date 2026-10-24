# Verification target: GRWTSK.Algebra.Lemmas.Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2089efe493b230bd5266c826bbd29d20c9b9652",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2089efe493b230bd5266c826bbd29d20c9b9652`.

Source path: `GRWTSK/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [dvd_smul_of_dvd](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/dvd-smul-of-dvd--3005fa8d4576646e8d660395.md) | 31 | `result-track:3005fa8d4576646e8d6603958cc11a8ea07ed23e73b09ea856c5ebc5f9802587` |
| 2 | `lemma` | [dvd_nsmul_of_dvd](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/dvd-nsmul-of-dvd--f35d12b0e107cab29bdd8ed8.md) | 35 | `result-track:f35d12b0e107cab29bdd8ed8b9e19e4555563c25d91f8c1229bf950ff9eaf50d` |
| 3 | `lemma` | [dvd_zsmul_of_dvd](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/dvd-zsmul-of-dvd--6f8a3ac01ca396dbbb679b34.md) | 38 | `result-track:6f8a3ac01ca396dbbb679b340dd28da5b274fac860d530de6d084c78f6dc5e3a` |
| 4 | `lemma` | [pow_dvd_add_pow_of_pow_eq_zero_right](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/pow-dvd-add-pow-of-pow-eq-zero-right--36c216f22fb13c5691f71312.md) | 49 | `result-track:36c216f22fb13c5691f71312e4a4931671a5bcdffaf3179730364022b7ab6c1b` |
| 5 | `lemma` | [pow_dvd_add_pow_of_pow_eq_zero_left](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/pow-dvd-add-pow-of-pow-eq-zero-left--8a754aaba1e798a640df288b.md) | 59 | `result-track:8a754aaba1e798a640df288be090ea54c1d979557a091747a7e4d40dc2d0f14c` |
| 6 | `lemma` | [pow_dvd_pow_of_sub_pow_eq_zero](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/pow-dvd-pow-of-sub-pow-eq-zero--8ae04c6279f4b4e1d757ae86.md) | 69 | `result-track:8ae04c6279f4b4e1d757ae8665fa0c418b886b3b39b5e55e6d3b86d7cf319014` |
| 7 | `lemma` | [pow_dvd_pow_of_add_pow_eq_zero](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/pow-dvd-pow-of-add-pow-eq-zero--31d7dfc890be417f68c3a723.md) | 75 | `result-track:31d7dfc890be417f68c3a7231c67315c92b299c4d3237ed3d6052052eec6baeb` |
| 8 | `lemma` | [pow_dvd_sub_pow_of_pow_eq_zero_right](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/pow-dvd-sub-pow-of-pow-eq-zero-right--3c9d9d2a4178bb7259b9b5ce.md) | 82 | `result-track:3c9d9d2a4178bb7259b9b5ce5d0f3bec79d5003c7ad45cc5097f63aeeb201b73` |
| 9 | `lemma` | [pow_dvd_sub_pow_of_pow_eq_zero_left](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/pow-dvd-sub-pow-of-pow-eq-zero-left--23c3bcafdcc22213bb4c5960.md) | 86 | `result-track:23c3bcafdcc22213bb4c596049e5d816991afcd27e213714696a51cc4befe845` |
| 10 | `lemma` | [add_pow_dvd_pow_of_pow_eq_zero_right](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/add-pow-dvd-pow-of-pow-eq-zero-right--1eb41b8376259477e03b2b19.md) | 92 | `result-track:1eb41b8376259477e03b2b192ec30d34b4940236a033f387dcfcee1a95c7c62a` |
| 11 | `lemma` | [add_pow_dvd_pow_of_pow_eq_zero_left](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/add-pow-dvd-pow-of-pow-eq-zero-left--80ee5ed4899283b9885f9b99.md) | 96 | `result-track:80ee5ed4899283b9885f9b99294410773d46ca3f10250b8f805c6df3a3b1d2f3` |
| 12 | `lemma` | [dvd_mul_sub_mul_mul_left_of_dvd](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/dvd-mul-sub-mul-mul-left-of-dvd--0cc0b368532221c8776f6eab.md) | 107 | `result-track:0cc0b368532221c8776f6eab1ed74e3dd005288ee991746326e5c2c5ec562e44` |
| 13 | `lemma` | [dvd_mul_sub_mul_mul_right_of_dvd](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/dvd-mul-sub-mul-mul-right-of-dvd--852d14f2def23fce77ac0f5f.md) | 116 | `result-track:852d14f2def23fce77ac0f5f50c03f4093a24e7c64d1378777701c0b3d4dce99` |
| 14 | `lemma` | [dvd_mul_sub_mul_mul_gcd_of_dvd](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/dvd-mul-sub-mul-mul-gcd-of-dvd--9295e16a6fdcbcdec4521424.md) | 121 | `result-track:9295e16a6fdcbcdec45214243aa0a5ec27c0a310108c3843850392078951ca0d` |
| 15 | `theorem` | [associated_abs_left_iff](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/associated-abs-left-iff--2b4d3954567a162d1c3f3245.md) | 134 | `result-track:2b4d3954567a162d1c3f32454afccd427327bde0eb2a0893e3f4047bc184ae12` |
| 16 | `theorem` | [associated_abs_right_iff](../../../../mathematics/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/declarations/associated-abs-right-iff--ee3dd0b1112631ed39de6702.md) | 140 | `result-track:ee3dd0b1112631ed39de6702047914baa4d05b5574d4a4cdd8c17d65c26e1080` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
