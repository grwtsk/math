# Verification target: GRWTSK.NumberTheory.EllipticCurve.Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "137f8f4f17f8a9617b59149eadd128dd67753725",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `137f8f4f17f8a9617b59149eadd128dd67753725`.

Source path: `GRWTSK/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean.json)

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
| 1 | `def` | [Point.naiveHeight](../../../../mathematics/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean/declarations/point-naiveheight--95767074e634d3aefb2fe2f1.md) | 46 | `declaration-track:95767074e634d3aefb2fe2f1ce76d020cca5429cd7a583527a5348ef918e4d12` |
| 2 | `lemma` | [Point.naiveHeight_eq_logHeight](../../../../mathematics/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean/declarations/point-naiveheight-eq-logheight--840eff0df0dbad845ff6c6dd.md) | 49 | `result-track:840eff0df0dbad845ff6c6dd2d3bfe4d98ab1b74388194bc71d45e7afbb93895` |
| 3 | `lemma` | [Point.naiveHeight_eq_logHeight₁](../../../../mathematics/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean/declarations/point-naiveheight-eq-logheight--295f884634e3d255f8f8b5be.md) | 52 | `result-track:295f884634e3d255f8f8b5bee6ba5b322f7907af9d7ecb35743e5c6e45d4bd63` |
| 4 | `lemma` | [abs_logHeight_sym2x_sub_le](../../../../mathematics/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean/declarations/abs-logheight-sym2x-sub-le--71325c134456fbfa80ee2251.md) | 60 | `result-track:71325c134456fbfa80ee2251156796c3f8e0c6beb1e4234ce4172793b52e171f` |
| 5 | `theorem` | [abs_logHeight_addSubMap_sub_two_mul_logHeight_le](../../../../mathematics/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean/declarations/abs-logheight-addsubmap-sub-two-mul-logheight-le--479264a7dd1365ccbabe3afe.md) | 79 | `result-track:479264a7dd1365ccbabe3afe555473cb87225963578a9f7e713914540aa98167` |
| 6 | `theorem` | [approx_parallelogram_law](../../../../mathematics/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean/declarations/approx-parallelogram-law--eb47b37b024f8146996561da.md) | 89 | `result-track:eb47b37b024f8146996561da4183f259f016a247a4d48571c4aa590fab4ffadb` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean/declarations/instance--329b376055a083f1df363645.md) | 112 | `declaration-track:329b376055a083f1df3636458851e1fb4e5e2693498fcc41163d90bce7d5dc62` |
| 8 | `lemma` | [finite_naiveHeight_le](../../../../mathematics/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean/declarations/finite-naiveheight-le--c5b9d1897ad9881666039d09.md) | 125 | `result-track:c5b9d1897ad9881666039d09356bcb55543f942c8f77d3c79d22fc3927c280b9` |
| 9 | `theorem` | [finite_torsion](../../../../mathematics/NumberTheory/EllipticCurve/Variant7455c80c484b248a506773ef40e03bd9df42ce244d3e4fec09468a6457d535ad.lean/declarations/finite-torsion--29c5d76fb766d348c1c99023.md) | 132 | `result-track:29c5d76fb766d348c1c99023bf704883e0e95eb4d174672b6123cc685843a8e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
