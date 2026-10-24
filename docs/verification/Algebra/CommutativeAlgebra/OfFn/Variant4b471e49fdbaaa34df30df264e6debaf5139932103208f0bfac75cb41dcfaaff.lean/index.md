# Verification target: GRWTSK.Algebra.CommutativeAlgebra.OfFn.Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d8521f1f06382f7e2d26a3352e0627b85af89d9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d8521f1f06382f7e2d26a3352e0627b85af89d9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFn](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/tofn--6363e72bc5c146d3c74cbf52.md) | 34 | `declaration-track:6363e72bc5c146d3c74cbf523f701d5151cea54bcc3ed3a00529e90419a94332` |
| 2 | `theorem` | [toFn_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/tofn-zero--45f19faacf545eef5cb5778b.md) | 36 | `result-track:45f19faacf545eef5cb5778b622b18621c5132a63e5708617b2f4d24254a2ae4` |
| 3 | `def` | [ofFn](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/offn--99e3d563ca00742aed8a36f3.md) | 44 | `declaration-track:99e3d563ca00742aed8a36f3d4808340f41d6d005b37efb8d322cad5574c2699` |
| 4 | `theorem` | [ofFn_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/offn-zero--9428714cfa831f72b8c1e904.md) | 57 | `result-track:9428714cfa831f72b8c1e90429fac03e82c6a04bae9c6de3c658f1adc60c03a8` |
| 5 | `theorem` | [ofFn_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/offn-zero--80eb0e21fc72648db8e0f7c2.md) | 60 | `result-track:80eb0e21fc72648db8e0f7c2680c47635d1840e8860ebaaeede2b59336cccdca` |
| 6 | `lemma` | [ne_zero_of_ofFn_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/ne-zero-of-offn-ne-zero--043fb6e8f43b74413a8b5f4d.md) | 62 | `result-track:043fb6e8f43b74413a8b5f4d727d4045149d37d3e3b4a9272913545a58bb0ded` |
| 7 | `theorem` | [ofFn_coeff_eq_val_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/offn-coeff-eq-val-of-lt--bc838bf9494c744510c6f9f4.md) | 69 | `result-track:bc838bf9494c744510c6f9f4770c30c17b0f9dc04d451209a95eb39e6a769c07` |
| 8 | `theorem` | [ofFn_coeff_eq_zero_of_ge](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/offn-coeff-eq-zero-of-ge--0ca8af2cd13f359dea31b6a7.md) | 75 | `result-track:0ca8af2cd13f359dea31b6a729006293b2b34f70247fafcc93a69252b10319e0` |
| 9 | `theorem` | [ofFn_natDegree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/offn-natdegree-lt--d84c58b8af8e9ca097218990.md) | 80 | `result-track:d84c58b8af8e9ca0972189908f37a7d44fc92b1fc8c5a2ddca49f41e6a91ef93` |
| 10 | `theorem` | [ofFn_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/offn-degree-lt--e271dc27b46609f105430e32.md) | 85 | `result-track:e271dc27b46609f105430e3244b10b546915e74f1cecbdddb73f1371b1a85a0c` |
| 11 | `theorem` | [ofFn_eq_sum_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/offn-eq-sum-monomial--eb4b4d73a8f905ece7b3d553.md) | 92 | `result-track:eb4b4d73a8f905ece7b3d5539bb94750874199925b939175e93971c389c27e5d` |
| 12 | `theorem` | [toFn_comp_ofFn_eq_id](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/tofn-comp-offn-eq-id--8c4fde4d6699ef2e3aaafec2.md) | 100 | `result-track:8c4fde4d6699ef2e3aaafec2edbb3071d07194e9a41215471474c5ec75ce8a05` |
| 13 | `theorem` | [injective_ofFn](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/injective-offn--01a125767f77d1ce7685b167.md) | 103 | `result-track:01a125767f77d1ce7685b167c0c7f5dbdde433fac32980f8d588de20d5b94649` |
| 14 | `theorem` | [surjective_toFn](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/surjective-tofn--a202168b0b0bca6288f4f77e.md) | 107 | `result-track:a202168b0b0bca6288f4f77e81aca03d1da6e1f6adb29a4eaf4f3f820ee765a6` |
| 15 | `theorem` | [ofFn_comp_toFn_eq_id_of_natDegree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/OfFn/Variant4b471e49fdbaaa34df30df264e6debaf5139932103208f0bfac75cb41dcfaaff.lean/declarations/offn-comp-tofn-eq-id-of-natdegree-lt--2179f6134dd9569ac701328b.md) | 111 | `result-track:2179f6134dd9569ac701328bd149d1a62d15a642aeb1602cbc977111d6850804` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
