# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DyadicIntervals.Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef379ff4cc53302062e090836f17f4df71e05a71",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef379ff4cc53302062e090836f17f4df71e05a71`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TypeIIDyadicInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/typeiidyadicinterval--3d2c268d00f2c98d8bc2e8b8.md) | 44 | `declaration-track:3d2c268d00f2c98d8bc2e8b8c4e8598523836061b449cdd4ea4a097fadb166a6` |
| 2 | `def` | [level](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/level--332cb3e69828e17775ae674c.md) | 51 | `declaration-track:332cb3e69828e17775ae674c90ccd8e3ff197cff34020ddf9a2934401b69db2a` |
| 3 | `def` | [block](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/block--27331276ad1b980f908d686a.md) | 55 | `declaration-track:27331276ad1b980f908d686a454fcced8e2ffbefc9f14d57e20258fc6641c5cc` |
| 4 | `def` | [width](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/width--6bc356a7ee5d4c09ba140ff5.md) | 59 | `declaration-track:6bc356a7ee5d4c09ba140ff59a8aff6311cae7196a0f6631b69102718721167d` |
| 5 | `def` | [lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/lower--c0b9bb2468e0b48534587146.md) | 63 | `declaration-track:c0b9bb2468e0b48534587146f6b0e47869a5973e2001c7761bd71a70d31527ae` |
| 6 | `def` | [upperExclusive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/upperexclusive--c3c3ce5053c0b24f4c588b19.md) | 67 | `declaration-track:c3c3ce5053c0b24f4c588b19b2a4167914fbdee12650950c0c38441569dd6da7` |
| 7 | `def` | [upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/upper--aa939accb3663569b2789e5b.md) | 71 | `declaration-track:aa939accb3663569b2789e5bbe06c004f343dd7652ab732cb55f2881406562c9` |
| 8 | `def` | [carrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/carrier--052b266c3cfaa0d24bfa56ae.md) | 76 | `declaration-track:052b266c3cfaa0d24bfa56ae05bd9944a6ecc963ea28a7015f089a1a7a5f13aa` |
| 9 | `theorem` | [width_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/width-pos--908c5c87ac495e0b8e73bd6f.md) | 80 | `result-track:908c5c87ac495e0b8e73bd6fbfd32ecbadb28666269a00aa732b8b3d67d81062` |
| 10 | `theorem` | [lower_add_width](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/lower-add-width--7167ebabbf24a9556a4ff017.md) | 85 | `result-track:7167ebabbf24a9556a4ff0173d1e0b0f942e81abe66c5d301554570c2c072d68` |
| 11 | `theorem` | [upper_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/upper-add-one--b6d561fcbb1808c5af64793a.md) | 91 | `result-track:b6d561fcbb1808c5af64793a2e3c97185340fd56bea8850faf0a7c73dcdf6ca2` |
| 12 | `theorem` | [lower_le_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/lower-le-upper--291cfc259d97100256e55ca0.md) | 99 | `result-track:291cfc259d97100256e55ca0f7c575041dbcc2d30edfae9c5606764c9f418158` |
| 13 | `theorem` | [upper_le_scale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/upper-le-scale--b1640b323281a139759ac68e.md) | 107 | `result-track:b1640b323281a139759ac68e6f703c83f0516817e90e7c8e946cd29929545a04` |
| 14 | `theorem` | [mem_carrier_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/mem-carrier-iff--3a2b2c906c77e08ec68b764f.md) | 114 | `result-track:3a2b2c906c77e08ec68b764f188e87bc80a3aa0ae51132e2143c55440a33a15d` |
| 15 | `theorem` | [eq_of_lower_eq_and_upper_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/eq-of-lower-eq-and-upper-eq--b5621bcdd705345a730cae14.md) | 123 | `result-track:b5621bcdd705345a730cae147f4f77edfc46be0de7ec551f4143d0203728e5aa` |
| 16 | `def` | [typeIIDyadicIntervals](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/typeiidyadicintervals--ceb8cd78b01861b34819cfad.md) | 152 | `declaration-track:ceb8cd78b01861b34819cfadbff92f251072ed3cefca113b056d3a813a93c98c` |
| 17 | `theorem` | [mem_typeIIDyadicIntervals](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/mem-typeiidyadicintervals--df34257d7b5380ae75ce0b95.md) | 156 | `result-track:df34257d7b5380ae75ce0b957bfa7ede3f1b9063c7057fc8f20f8de668512344` |
| 18 | `def` | [productCutoffBeforeMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/productcutoffbeforematrix--2a0777428f6819c5014693a5.md) | 164 | `declaration-track:2a0777428f6819c5014693a538b28d83d2663626937ccdca4a640378bdcf1a32` |
| 19 | `def` | [productDyadicIntervalMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/productdyadicintervalmatrix--2a71835b86cc25ff6994e5c4.md) | 172 | `declaration-track:2a71835b86cc25ff6994e5c4dcd3d0c31374fb35df01adbc98a14f7d074478ce` |
| 20 | `theorem` | [productDyadicIntervalMatrix_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/productdyadicintervalmatrix-apply--d446272d2eb3d42b76a61fe1.md) | 179 | `result-track:d446272d2eb3d42b76a61fe1a5d332ebbaeb0b1a5389c12ba9116dfec7c469a3` |
| 21 | `theorem` | [productDyadicIntervalMatrix_eq_sum_fibers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/productdyadicintervalmatrix-eq-sum-fibers--55d2efa9b6c8fc0bebe1eee4.md) | 208 | `result-track:55d2efa9b6c8fc0bebe1eee4885efafeb0ac2188946562a9ff690b5f00d6ea36` |
| 22 | `theorem` | [bilinearMatrixPairing_dyadicInterval_eq_endpoint_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/bilinearmatrixpairing-dyadicinterval-eq-endpoint-sub--f4c8777eb745093f02f37cb4.md) | 238 | `result-track:f4c8777eb745093f02f37cb4f56f559b44668da93953b32eb0140bcad486891d` |
| 23 | `theorem` | [bilinearMatrixPairing_dyadicInterval_eq_sum_fibers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/declarations/bilinearmatrixpairing-dyadicinterval-eq-sum-fibers--5be262611da3f6b17bc2a7ff.md) | 255 | `result-track:5be262611da3f6b17bc2a7ff2d5d36a852d8a7c3afb79b2917414b3533367357` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
