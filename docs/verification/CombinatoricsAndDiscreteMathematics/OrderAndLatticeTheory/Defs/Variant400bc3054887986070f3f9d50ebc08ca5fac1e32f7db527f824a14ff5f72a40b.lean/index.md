# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Defs.Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5848ca876d2b0d322daa6fd60ad97a9432b0d7c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5848ca876d2b0d322daa6fd60ad97a9432b0d7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Notation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.TypeTags` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ENat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b.lean/declarations/enat--9e348132826886bdf4d94361.md) | 13 | `declaration-track:9e348132826886bdf4d94361a6cd6d09fa63e588dae44c130d4f310d4533a90b` |
| 2 | `instance` | [instNatCast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b.lean/declarations/instnatcast--7fbb26a82bcb96a124b2e286.md) | 19 | `declaration-track:7fbb26a82bcb96a124b2e286098446c2c7a2fdb639e9282e21a75e71ec498377` |
| 3 | `def` | [recTopCoe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b.lean/declarations/rectopcoe--25290c335ff0a02214490f25.md) | 23 | `declaration-track:25290c335ff0a02214490f25bfb58f18d47c5a0085d62c87b8f228006d201612` |
| 4 | `theorem` | [recTopCoe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b.lean/declarations/rectopcoe-top--cfcd8bd92b2f74786d4f9867.md) | 28 | `result-track:cfcd8bd92b2f74786d4f986782713b1a15684294f591df85783a51d70e8c6148` |
| 5 | `theorem` | [recTopCoe_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant400bc3054887986070f3f9d50ebc08ca5fac1e32f7db527f824a14ff5f72a40b.lean/declarations/rectopcoe-coe--21516663ab43f11169c6c09e.md) | 33 | `result-track:21516663ab43f11169c6c09e9ec0b669d107a7a36189751936737e972cdf9530` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
