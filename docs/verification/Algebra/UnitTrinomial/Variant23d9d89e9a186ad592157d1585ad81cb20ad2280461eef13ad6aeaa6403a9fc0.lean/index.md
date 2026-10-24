# Verification target: GRWTSK.Algebra.UnitTrinomial.Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb08b9a744563e6be6d4a3a37fef27c5c3c5cc8c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/index.md) · [Full source](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb08b9a744563e6be6d4a3a37fef27c5c3c5cc8c`.

Source path: `GRWTSK/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trinomial](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/trinomial--738e24e6e7ed110f62e079dc.md) | 43 | `declaration-track:738e24e6e7ed110f62e079dc1335c70b2aea548a9717a4d76ae2a5f09a6297e1` |
| 2 | `theorem` | [trinomial_def](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/trinomial-def--530440a3ff94baf111091982.md) | 46 | `result-track:530440a3ff94baf11109198247ab1cc048c79d48284c5d4777d3089fc6a484ef` |
| 3 | `theorem` | [trinomial_leading_coeff'](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/trinomial-leading-coeff--676ed79157cbd5559971f8b5.md) | 51 | `result-track:676ed79157cbd5559971f8b5c097ebf133e1a5c833f89cc8231436005832b34f` |
| 4 | `theorem` | [trinomial_middle_coeff](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/trinomial-middle-coeff--7b0ccc7acb11909008367d94.md) | 56 | `result-track:7b0ccc7acb11909008367d940dd75bf90538876eceace29dccfe54415613690c` |
| 5 | `theorem` | [trinomial_trailing_coeff'](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/trinomial-trailing-coeff--d483daa4b5e760f12ccd808f.md) | 61 | `result-track:d483daa4b5e760f12ccd808fb90a782e2079be1aa35efea14c7e282c089bb6b9` |
| 6 | `theorem` | [trinomial_natDegree](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/trinomial-natdegree--719b54b2aa90ce4db67b3e6c.md) | 66 | `result-track:719b54b2aa90ce4db67b3e6cc4d3d576e2104256e16dbbc2d32dfded39399aa5` |
| 7 | `theorem` | [trinomial_natTrailingDegree](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/trinomial-nattrailingdegree--4a19eebce6c14f613b73ec54.md) | 80 | `result-track:4a19eebce6c14f613b73ec54607d4863b969ba9f32bfe6388d6488c6cfefeac4` |
| 8 | `theorem` | [trinomial_leadingCoeff](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/trinomial-leadingcoeff--07d3c2057d5da4f1e7ccf295.md) | 93 | `result-track:07d3c2057d5da4f1e7ccf29549c3c8970b0a30d0151dcf73d8052a8a05914a6d` |
| 9 | `theorem` | [trinomial_trailingCoeff](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/trinomial-trailingcoeff--c082ebc701bdb1b6b28e329e.md) | 97 | `result-track:c082ebc701bdb1b6b28e329e006661f0b228ff940338ab47d39ebb999e8b0522` |
| 10 | `theorem` | [trinomial_monic](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/trinomial-monic--60e785b80e26c6b58bc270a2.md) | 101 | `result-track:60e785b80e26c6b58bc270a28e35a8b48f098d28f153e50afefb459e4e4a9b87` |
| 11 | `theorem` | [trinomial_mirror](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/trinomial-mirror--e024610add7c7baa5d43b4f8.md) | 105 | `result-track:e024610add7c7baa5d43b4f804ac92bb26dc470a91b0d093ce8d590100a6fc49` |
| 12 | `theorem` | [trinomial_support](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/trinomial-support--aacf64ad84cffb664fdd9708.md) | 114 | `result-track:aacf64ad84cffb664fdd970850d5720d4d088220c06238f6b9cb7232f51dcf78` |
| 13 | `def` | [IsUnitTrinomial](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/isunittrinomial--fda1351a6f0bd148149d8633.md) | 123 | `declaration-track:fda1351a6f0bd148149d863368e9405a79820808c57f059d4e7ea0c95df9b613` |
| 14 | `theorem` | [not_isUnit](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/not-isunit--29cc921d57b0107e406b5cec.md) | 130 | `result-track:29cc921d57b0107e406b5cec6244abbc0d7200645dbc0bc0e18ecd9f3ea712d5` |
| 15 | `theorem` | [card_support_eq_three](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/card-support-eq-three--4537ea524bb1591cb408d6de.md) | 137 | `result-track:4537ea524bb1591cb408d6de90cfc4faf61e7cdf5b5204e34c96ae6fd2c39f90` |
| 16 | `theorem` | [ne_zero](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/ne-zero--583b322c579aa87456a395e2.md) | 141 | `result-track:583b322c579aa87456a395e210b9254b0814ebcd1c152781ff78e5ab7a2e51e7` |
| 17 | `theorem` | [coeff_isUnit](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/coeff-isunit--5303611bb4951bb210877d0a.md) | 145 | `result-track:5303611bb4951bb210877d0a03f5d10c359aaf853e1a06b9f2967a82b201ca53` |
| 18 | `theorem` | [leadingCoeff_isUnit](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/leadingcoeff-isunit--c4bfdea122a1bf5450fe3061.md) | 155 | `result-track:c4bfdea122a1bf5450fe3061ec9448a0b57832eb0110ffb37c830fa6d09fa253` |
| 19 | `theorem` | [trailingCoeff_isUnit](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/trailingcoeff-isunit--a10f34150baa95596198426e.md) | 158 | `result-track:a10f34150baa95596198426e8bccfd1911aaf8b0635df28c4df7458298c0bc68` |
| 20 | `theorem` | [isUnitTrinomial_iff](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/isunittrinomial-iff--3d7375d3f7c368fae7ec7432.md) | 163 | `result-track:3d7375d3f7c368fae7ec7432b53687ed212ec92f605439efaf8a716862c92a89` |
| 21 | `theorem` | [isUnitTrinomial_iff'](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/isunittrinomial-iff--ab7b03b095c294e9ce3f20ac.md) | 178 | `result-track:ab7b03b095c294e9ce3f20ac010aefd040bc4a23180999af1a9d5ee56bcfd491` |
| 22 | `theorem` | [isUnitTrinomial_iff''](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/isunittrinomial-iff--30b846bf3f4b66e4008b8e8a.md) | 199 | `result-track:30b846bf3f4b66e4008b8e8a14eab72c4487ce011648c5b935d9308ec713fb23` |
| 23 | `theorem` | [irreducible_aux1](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/irreducible-aux1--8cada1309a14a5417e196ca5.md) | 205 | `result-track:8cada1309a14a5417e196ca52ef5e9994152de097b8189a756818dc267f7c90e` |
| 24 | `theorem` | [irreducible_aux2](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/irreducible-aux2--690670c04687bb0b9b44880c.md) | 232 | `result-track:690670c04687bb0b9b44880c52e437cc1e72eff6697a3c4e61cc6eac9bc9a7dd` |
| 25 | `theorem` | [irreducible_aux3](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/irreducible-aux3--eba8c302c2c92f7eb39fa18a.md) | 249 | `result-track:eba8c302c2c92f7eb39fa18a1697e9621798ba404d5041ba34970cc08623b762` |
| 26 | `theorem` | [irreducible_of_coprime](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/irreducible-of-coprime--0650f48ae43c6116cce25242.md) | 277 | `result-track:0650f48ae43c6116cce2524286b89bd520feb93791b4155c299ed11d50544e6b` |
| 27 | `theorem` | [irreducible_of_isCoprime](../../../../mathematics/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/declarations/irreducible-of-iscoprime--874464993b344c567234f991.md) | 310 | `result-track:874464993b344c567234f9914cb6ffea8a355510ce7d6c1058de5196864570af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
