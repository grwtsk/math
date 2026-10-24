# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c62e9f0c3f9feb3386c9d91c7241c4f250a260a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c62e9f0c3f9feb3386c9d91c7241c4f250a260a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sym.Sym2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean/declarations/sup--f76ff200d56888b18fee77a5.md) | 29 | `declaration-track:f76ff200d56888b18fee77a57f253a117af3e5946bce67b8282256a92b295104` |
| 2 | `theorem` | [sup_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean/declarations/sup-mk--820571111ca9ef8261387dec.md) | 31 | `result-track:820571111ca9ef8261387dec4e3a1a9fd374b2eb1ca4cf4934655f14d514d5f8` |
| 3 | `def` | [inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean/declarations/inf--df3cc7c28b8b48f73b3e33bc.md) | 34 | `declaration-track:df3cc7c28b8b48f73b3e33bcbd22bfbe85cb932e3b1a04242d7a3c901414765d` |
| 4 | `theorem` | [inf_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean/declarations/inf-mk--253399e62f654a885ec485ff.md) | 36 | `result-track:253399e62f654a885ec485ff81de47cbc331ed1f154216996978344143b79f33` |
| 5 | `theorem` | [inf_le_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean/declarations/inf-le-sup--e12dd9128a3f29fc41a827f9.md) | 38 | `result-track:e12dd9128a3f29fc41a827f9ac5d3c4f57b08d8dbe8cd8756b191cb38ee74512` |
| 6 | `def` | [sortEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean/declarations/sortequiv--97ab212fc537b2d6a0034546.md) | 43 | `declaration-track:97ab212fc537b2d6a00345467b282c1025b4c3c2e65d1f316a7ffbfe97bb4082` |
| 7 | `theorem` | [inf_eq_inf_and_sup_eq_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean/declarations/inf-eq-inf-and-sup-eq-sup--44180cc0992c364129042703.md) | 55 | `result-track:44180cc0992c364129042703b9229f30be3d8f9d2d16589842ee62b2114a1d4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
