# Verification target: GRWTSK.Algebra.Ideal.Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37d708f91b49df8b5b3f9c4ffdd8622176194b05",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37d708f91b49df8b5b3f9c4ffdd8622176194b05`.

Source path: `GRWTSK/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal.closure](../../../../mathematics/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean/declarations/ideal-closure--eda33e1344658c7e493e6a73.md) | 33 | `declaration-track:eda33e1344658c7e493e6a7370596f8fbcb5305146b9fd7f1cb547b68331624f` |
| 2 | `theorem` | [Ideal.coe_closure](../../../../mathematics/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean/declarations/ideal-coe-closure--c1b517b5a3d0f208bb9907f4.md) | 41 | `result-track:c1b517b5a3d0f208bb9907f4f9c1b35b18a15627cb45f49b4e3828a1cce42c35` |
| 3 | `theorem` | [Ideal.closure_eq_of_isClosed](../../../../mathematics/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean/declarations/ideal-closure-eq-of-isclosed--b5bfdd7a0e2569784826c687.md) | 47 | `result-track:b5bfdd7a0e2569784826c6871d13facfa41126117f7e4374a0aed29eab7172e3` |
| 4 | `instance` | [topologicalRingQuotientTopology](../../../../mathematics/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean/declarations/topologicalringquotienttopology--75caf0d9f27ddc5ddb3f5c15.md) | 58 | `declaration-track:75caf0d9f27ddc5ddb3f5c15bec5342a7a8b9868241a28f1d9831a878011260e` |
| 5 | `theorem` | [QuotientRing.isOpenMap_coe](../../../../mathematics/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean/declarations/quotientring-isopenmap-coe--a38d64e093753185066ba96b.md) | 64 | `result-track:a38d64e093753185066ba96b690b2225409b0c88fd12ac788437c295e602b171` |
| 6 | `theorem` | [QuotientRing.isOpenQuotientMap_mk](../../../../mathematics/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean/declarations/quotientring-isopenquotientmap-mk--9cebe6c80acf83a02e326c3e.md) | 67 | `result-track:9cebe6c80acf83a02e326c3e1b35dbd1995a5f98ed262c29ebddf6faf3447b76` |
| 7 | `theorem` | [QuotientRing.isQuotientMap_coe_coe](../../../../mathematics/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean/declarations/quotientring-isquotientmap-coe-coe--8004379fac0529641cc4244e.md) | 70 | `result-track:8004379fac0529641cc4244e93399c0f4af53717ef3a083c53b0dbff0b01cfa4` |
| 8 | `instance` | [topologicalRing_quotient](../../../../mathematics/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean/declarations/topologicalring-quotient--fc3c083644d0a5be42a2c0a0.md) | 76 | `declaration-track:fc3c083644d0a5be42a2c0a00d00685a1622ebb8239718f3245022895cb25601` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant7fbefc2d93a4cd32ef5aeffbb42137bf61879b92cb8f320a9547268a52515c6f.lean/declarations/instance--430c7671be4e90505c741924.md) | 81 | `declaration-track:430c7671be4e90505c7419249d1980d27bd594ae4168d13811530f9166f2687f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
