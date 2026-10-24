# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Partition.Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1097d41dc97634c27c5ae78e717feabcb946a1f9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1097d41dc97634c27c5ae78e717feabcb946a1f9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Antidiag.Finsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Partition` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.NatAntidiagonal` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Inverse` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialOddGF](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/partialoddgf--8b4a3c4570aeb76e750e8412.md) | 74 | `declaration-track:8b4a3c4570aeb76e750e841292a3d3474cdc9b477a62f6d38e3acb3cd8512de0` |
| 2 | `def` | [partialDistinctGF](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/partialdistinctgf--ef9b3a92ec3e7d19e09e9245.md) | 85 | `declaration-track:ef9b3a92ec3e7d19e09e92458554d49ff5f3ab0281df2a94224b0ac0676a2ef3` |
| 3 | `def` | [indicatorSeries](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/indicatorseries--942495992ffa334e4bcc39cc.md) | 95 | `declaration-track:942495992ffa334e4bcc39cc746e7bfa07bf3f0ce4101dc3beddc6b0033906e8` |
| 4 | `theorem` | [coeff_indicator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/coeff-indicator--4ba58f4a37e1ae0cd6fbaa41.md) | 99 | `result-track:4ba58f4a37e1ae0cd6fbaa4164f91965e06b082cc8bf35204f21477485acf605` |
| 5 | `theorem` | [coeff_indicator_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/coeff-indicator-pos--640188521762399f2dcbd251.md) | 103 | `result-track:640188521762399f2dcbd2518d63290c0dbe4c398a70f9327d31b810dbde49fa` |
| 6 | `theorem` | [coeff_indicator_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/coeff-indicator-neg--50dd8cd2903171454e0f30f0.md) | 106 | `result-track:50dd8cd2903171454e0f30f0b2e6924b3ea62f9278718401834b5c327b781c8e` |
| 7 | `theorem` | [constantCoeff_indicator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/constantcoeff-indicator--ceaf5ffc5c30a091446dc842.md) | 110 | `result-track:ceaf5ffc5c30a091446dc842fa151f258845602cf3933400d0f8e77034eb9c2a` |
| 8 | `theorem` | [two_series](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/two-series--fa12eae512b33206353b7b8b.md) | 114 | `result-track:fa12eae512b33206353b7b8b3d6e6e550f36ab812cc6cef278d68343cfc20c43` |
| 9 | `theorem` | [num_series'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/num-series--955f65de158c9435416c6b08.md) | 123 | `result-track:955f65de158c9435416c6b08b762524533632059e46de4b618ab3eaf65e6438b` |
| 10 | `def` | [mkOdd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/mkodd--332cf9ba643a44efd5728a58.md) | 163 | `declaration-track:332cf9ba643a44efd5728a584d88e0b822efef8f2fe93a2c7d280e9867d8fc5d` |
| 11 | `theorem` | [partialGF_prop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/partialgf-prop--b89be64d4e3dbb068aad51a8.md) | 168 | `result-track:b89be64d4e3dbb068aad51a811009bfce175b8dbb6ec6a7b4f8b3e363ca12915` |
| 12 | `theorem` | [partialOddGF_prop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/partialoddgf-prop--7b1fdbe99bdbbbd67743ec85.md) | 254 | `result-track:7b1fdbe99bdbbbd67743ec85cde718fc400266e77fd3a16c8321809380a73cca` |
| 13 | `theorem` | [oddGF_prop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/oddgf-prop--2f5be5773003d2f1e2de08b6.md) | 277 | `result-track:2f5be5773003d2f1e2de08b6ba62709a3c0d14e5b1eab0c8a5ce389631a88e58` |
| 14 | `theorem` | [partialDistinctGF_prop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/partialdistinctgf-prop--74c363759284deaac7fdc32d.md) | 298 | `result-track:74c363759284deaac7fdc32d95cf01dedfab0bc95b4658d73cc192f55ac68df9` |
| 15 | `theorem` | [distinctGF_prop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/distinctgf-prop--0d3a9d7cc3761677e4310284.md) | 319 | `result-track:0d3a9d7cc3761677e4310284f21c05c0eeb74a068eb839109798325791000be1` |
| 16 | `theorem` | [same_gf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/same-gf--95d2f0fe9dc2766ff0d097b8.md) | 336 | `result-track:95d2f0fe9dc2766ff0d097b87f888b7beb0e2a505a8d3816a21f9c6886e7013f` |
| 17 | `theorem` | [same_coeffs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/same-coeffs--f462b0168d38305f0bc15d55.md) | 373 | `result-track:f462b0168d38305f0bc15d55d935e33b41e4293edc9866073f1fbc8065686dbe` |
| 18 | `theorem` | [partition_theorem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/declarations/partition-theorem--77c8d3d9fd742f5cd214eb52.md) | 380 | `result-track:77c8d3d9fd742f5cd214eb52de75467d1f7b0bb6470f55498b9fe301e94a223a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
