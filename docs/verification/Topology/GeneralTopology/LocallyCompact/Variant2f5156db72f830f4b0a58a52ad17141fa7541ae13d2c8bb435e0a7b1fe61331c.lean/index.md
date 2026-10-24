# Verification target: GRWTSK.Topology.GeneralTopology.LocallyCompact.Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4c7579a52c3d7bcec2af396c0fffc0a8b5f31d8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4c7579a52c3d7bcec2af396c0fffc0a8b5f31d8`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.ProperSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.IsPrincipalPowQuotient` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Archimedean` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.NormedValued` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.ValuedField` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [NormedField.v_eq_valuation](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/normedfield-v-eq-valuation--28a0be5cb0094c07f7d24b4c.md) | 33 | `result-track:28a0be5cb0094c07f7d24b4c61c633fec06a3c6fb698392f81c68673662f64ba` |
| 2 | `lemma` | [mem_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/mem-iff--ff6a0f2990bf571953ec97b7.md) | 41 | `result-track:ff6a0f2990bf571953ec97b77308a9b872aba0c6d94430a2dc38efcb8b6f7ecd` |
| 3 | `lemma` | [norm_le_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/norm-le-one--193a2c41cec7933aa45b285a.md) | 44 | `result-track:193a2c41cec7933aa45b285a78298493bb0d5563f6bb944deb8e86cdf9b2173f` |
| 4 | `lemma` | [norm_coe_unit](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/norm-coe-unit--e55c3d5bafbfc70ad0ca1b29.md) | 47 | `result-track:e55c3d5bafbfc70ad0ca1b29a7c2e2866e054c7abf689c99e0f08cd3b2434b3a` |
| 5 | `lemma` | [norm_unit](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/norm-unit--7d933b5aa8c08899116591d8.md) | 51 | `result-track:7d933b5aa8c08899116591d81ae9bcf736921143135dd07d5e590befd0e120fc` |
| 6 | `lemma` | [isUnit_iff_norm_eq_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/isunit-iff-norm-eq-one--916e88cb31fc9ec1fca87812.md) | 54 | `result-track:916e88cb31fc9ec1fca87812e25a09e483addab5701acc46a22c8b720e27db19` |
| 7 | `lemma` | [norm_irreducible_lt_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/norm-irreducible-lt-one--c6ad6124dde01f5793fc6500.md) | 58 | `result-track:c6ad6124dde01f5793fc650015bc718039fdcbebe5762ec61e67e51a77e60a8b` |
| 8 | `lemma` | [norm_irreducible_pos](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/norm-irreducible-pos--777193cb3d04a66908b06b25.md) | 61 | `result-track:777193cb3d04a66908b06b25f31945fecb0d073eb4b23f54a62126e1db3d1faf` |
| 9 | `lemma` | [coe_span_singleton_eq_closedBall](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/coe-span-singleton-eq-closedball--83a2233cf88afed3854b30bb.md) | 64 | `result-track:83a2233cf88afed3854b30bb1abadac8ac6afa964aa4dae3a6a5364da7820c19` |
| 10 | `lemma` | [_root_.Irreducible.maximalIdeal_eq_closedBall](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/root-irreducible-maximalideal-eq-closedball--3461e443dbb65b5d1307b891.md) | 79 | `result-track:3461e443dbb65b5d1307b89169f2be8f6bd12c9bbc7dd95b04e44e446896d224` |
| 11 | `lemma` | [_root_.Irreducible.maximalIdeal_pow_eq_closedBall_pow](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/root-irreducible-maximalideal-pow-eq-closedball-pow--a81e16aef6b8050adcbd69a3.md) | 84 | `result-track:a81e16aef6b8050adcbd69a366367da6b2c453b1b2ecc854e435d99117954f99` |
| 12 | `lemma` | [finite_quotient_maximalIdeal_pow_of_finite_residueField](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/finite-quotient-maximalideal-pow-of-finite-residuefield--9decd652e441d400eaac1ddb.md) | 96 | `result-track:9decd652e441d400eaac1ddb1549b49c805d7540165e940b317739a8cf1a6807` |
| 13 | `lemma` | [totallyBounded_iff_finite_residueField](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/totallybounded-iff-finite-residuefield--91679654b57af7ba7770f31b.md) | 114 | `result-track:91679654b57af7ba7770f31b57f7962f51469ff0aee266b105ff9ad3e6d918cf` |
| 14 | `lemma` | [exists_norm_coe_lt_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/exists-norm-coe-lt-one--98b350c04aa08be903363019.md) | 159 | `result-track:98b350c04aa08be903363019fa17e6ac2b682488c8a05e900b422c2c81dc7565` |
| 15 | `lemma` | [exists_norm_lt_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/exists-norm-lt-one--37ef1974ff823e32956a6f14.md) | 165 | `result-track:37ef1974ff823e32956a6f146f8363e23037f58720efbebe05d5d0c978d13bb6` |
| 16 | `lemma` | [exists_nnnorm_lt_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/exists-nnnorm-lt-one--10d9a87ca02f31b300dfe514.md) | 169 | `result-track:10d9a87ca02f31b300dfe51411c80433a59221af55b29ef3932c77b55d6bd13a` |
| 17 | `lemma` | [isPrincipalIdealRing_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/isprincipalidealring-of-compactspace--5d39f23cb3e7eb6b63bf766d.md) | 172 | `result-track:5d39f23cb3e7eb6b63bf766d3b7a43560ba3ba77713f2e5fbcceed02a01ad9a4` |
| 18 | `lemma` | [isDiscreteValuationRing_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/isdiscretevaluationring-of-compactspace--8953f44d409bb1d6b8a0ef2e.md) | 278 | `result-track:8953f44d409bb1d6b8a0ef2e4febe638a4312e2301443ee13dcf3d35b3659576` |
| 19 | `lemma` | [compactSpace_iff_completeSpace_and_isDiscreteValuationRing_and_finite_residueField](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/compactspace-iff-completespace-and-isdiscretevaluationring-and-finite-re--523f66736174cb723a329b7a.md) | 304 | `result-track:523f66736174cb723a329b7aeea46e61106630ac22a90a6408023101fab06721` |
| 20 | `lemma` | [properSpace_iff_compactSpace_integer](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/properspace-iff-compactspace-integer--a4b370e195db5c690699e2ca.md) | 316 | `result-track:a4b370e195db5c690699e2ca1d07eadf9f3f1e6dd3d5d8b71b9d80b84e1e5e97` |
| 21 | `lemma` | [properSpace_iff_completeSpace_and_isDiscreteValuationRing_integer_and_finite_residueField](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/declarations/properspace-iff-completespace-and-isdiscretevaluationring-integer-and-fi--a71e5bbc1df44a6dc949678e.md) | 326 | `result-track:a71e5bbc1df44a6dc949678e893c1bbb6d3814aed50d11eeef94def6792b45b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
