# Verification target: GRWTSK.Algebra.GroupTheory.Exponent.Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "101b7ec34cb57205ee063b79e82d9c8907025607",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `101b7ec34cb57205ee063b79e82d9c8907025607`.

Source path: `GRWTSK/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Quotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.NoncommPiCoprod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Finset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExponentExists](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponentexists--a788d800bb45e7a4b2bea831.md) | 60 | `declaration-track:a788d800bb45e7a4b2bea8311a060fc6faa7483edadde72005978d4aa8429455` |
| 2 | `def` | [exponent](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponent--8b587f230aae580a09b15489.md) | 70 | `declaration-track:8b587f230aae580a09b1548992572ba8a93ea674560de64206075f16287df51e` |
| 3 | `theorem` | [exponentExists_iff_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponentexists-iff-ne-zero--0d2ce9a7b4218f155fcee9d0.md) | 78 | `result-track:0d2ce9a7b4218f155fcee9d026392b5cb81ab84f158d96a14b1f3c928979e8fc` |
| 4 | `theorem` | [exponent_eq_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponent-eq-zero-iff--967e92f69a028c4998760c50.md) | 88 | `result-track:967e92f69a028c4998760c50e22a76a5e1e108dfd26807b1e3cf75356e5fb03b` |
| 5 | `theorem` | [exponent_eq_zero_of_order_zero](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponent-eq-zero-of-order-zero--169dac84d30362e574587012.md) | 94 | `result-track:169dac84d30362e57458701291704a54b8cad297bb97a067c5de26ed2051662f` |
| 6 | `theorem` | [pow_exponent_eq_one](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/pow-exponent-eq-one--bc19bfa716b1d32383dd692c.md) | 100 | `result-track:bc19bfa716b1d32383dd692c01a294782e1174512ad2fd5b4495ce7420e75599` |
| 7 | `theorem` | [pow_eq_mod_exponent](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/pow-eq-mod-exponent--e0abc8a848fe3dd4898be378.md) | 109 | `result-track:e0abc8a848fe3dd4898be378d45405945a477563a31c46f76fc07f388be25a22` |
| 8 | `theorem` | [exponent_pos_of_exists](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponent-pos-of-exists--69cecd50513a095918602af9.md) | 118 | `result-track:69cecd50513a095918602af934f868f8d742b03566ef02a59d4490be8be57c5e` |
| 9 | `theorem` | [exponent_min'](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponent-min--100638c758354998df9ac6e5.md) | 127 | `result-track:100638c758354998df9ac6e595aca7109a2de40c8d581222ef0c2afe2993cf2a` |
| 10 | `theorem` | [exponent_min](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponent-min--70dd7415388d3497a8b0a5ee.md) | 136 | `result-track:70dd7415388d3497a8b0a5ee733db743d0faa699cd992a63a8e06bebef3171a0` |
| 11 | `theorem` | [exp_eq_one_of_subsingleton](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exp-eq-one-of-subsingleton--de8a2dfc2fdeb2fa41eb1901.md) | 144 | `result-track:de8a2dfc2fdeb2fa41eb1901887bd0b2c784eb489e7f9bde0c1f4b8b54a7b047` |
| 12 | `theorem` | [order_dvd_exponent](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/order-dvd-exponent--b875d3a5c5b6955fd6e1bf67.md) | 155 | `result-track:b875d3a5c5b6955fd6e1bf670a7745a3019563b30ad4e2d2f3662aab55f9aa2f` |
| 13 | `theorem` | [exponent_dvd_of_forall_pow_eq_one](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponent-dvd-of-forall-pow-eq-one--9f9461dbc6fa3ebe7bd63672.md) | 163 | `result-track:9f9461dbc6fa3ebe7bd63672ca87f7ebced1f0bdae68ecc63906fa83b78538a0` |
| 14 | `theorem` | [lcm_orderOf_dvd_exponent](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/lcm-orderof-dvd-exponent--f2afd300baecdf238ce2c3be.md) | 180 | `result-track:f2afd300baecdf238ce2c3bef8828dc77acd75620f4549542c3ff76f8e2670d5` |
| 15 | `theorem` | [_root_.Nat.Prime.exists_orderOf_eq_pow_factorization_exponent](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/root-nat-prime-exists-orderof-eq-pow-factorization-exponent--183ddf62ce7fa4ab9c75c7a7.md) | 189 | `result-track:183ddf62ce7fa4ab9c75c7a7097f3768b5661ce4d6a87c60a4056386c0540c79` |
| 16 | `theorem` | [exponent_ne_zero_iff_range_orderOf_finite](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponent-ne-zero-iff-range-orderof-finite--050b5a37536bd4e221473b6d.md) | 221 | `result-track:050b5a37536bd4e221473b6d5a701d80def8f04dda5a080aac1d377e706fe92c` |
| 17 | `theorem` | [exponent_eq_zero_iff_range_orderOf_infinite](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponent-eq-zero-iff-range-orderof-infinite--c0411af7d9c4169d2c0ee7d6.md) | 246 | `result-track:c0411af7d9c4169d2c0ee7d6dc692d70239bd35dbc37ac0d140341b4d819c73a` |
| 18 | `theorem` | [lcm_order_eq_exponent](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/lcm-order-eq-exponent--09075a7a4cc0621101d609f0.md) | 254 | `result-track:09075a7a4cc0621101d609f0da96dd9f8fd31cc8677bbbcc5888f7d3c2305534` |
| 19 | `theorem` | [exponent_ne_zero_of_finite](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponent-ne-zero-of-finite--7c59de77f7f1dd447383a2f7.md) | 269 | `result-track:7c59de77f7f1dd447383a2f794e68a207b86b6341edebb5a71286ef420401dd7` |
| 20 | `theorem` | [exponent_eq_iSup_orderOf](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponent-eq-isup-orderof--74e360d98f199509d0721a30.md) | 282 | `result-track:74e360d98f199509d0721a3048b1c06757dac52904ab4bd3bba78379ac52e52b` |
| 21 | `theorem` | [exponent_eq_iSup_orderOf'](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponent-eq-isup-orderof--80ef98e83a163b37c3bfa184.md) | 328 | `result-track:80ef98e83a163b37c3bfa1842f951880dc19c1c1d82acba628723d97b6c93e00` |
| 22 | `theorem` | [exponent_eq_max'_orderOf](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/exponent-eq-max-orderof--16d4eaba1620451d87d702d5.md) | 345 | `result-track:16d4eaba1620451d87d702d5fb5771eec7fb72daa0d52d2f27191b1a43cdf187` |
| 23 | `theorem` | [card_dvd_exponent_pow_rank](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/card-dvd-exponent-pow-rank--bc275d0570edc8a6f83dbc36.md) | 365 | `result-track:bc275d0570edc8a6f83dbc366f66d5ffa386d60c57f51918babfc166c7193c36` |
| 24 | `theorem` | [card_dvd_exponent_pow_rank'](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/declarations/card-dvd-exponent-pow-rank--c01788a07ac17f259d623edc.md) | 381 | `result-track:c01788a07ac17f259d623edc21c4cccc563e5c74126fe7235316dafb9995cad8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
