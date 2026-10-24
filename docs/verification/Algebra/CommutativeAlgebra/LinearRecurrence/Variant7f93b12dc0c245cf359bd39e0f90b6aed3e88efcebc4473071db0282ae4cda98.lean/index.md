# Verification target: GRWTSK.Algebra.CommutativeAlgebra.LinearRecurrence.Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a358d2b69e6578f0fad2b261830fe68139248ca6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a358d2b69e6578f0fad2b261830fe68139248ca6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Constructions` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearRecurrence](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/linearrecurrence--ad6e6d7daf9f64921155defd.md) | 55 | `declaration-track:ad6e6d7daf9f64921155defd5200c5a24687cf44260c15319cacaf0042c7407f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/instance--49c1245cae3842d3ead46a91.md) | 61 | `declaration-track:49c1245cae3842d3ead46a91632ccd8dc34cdb9fac292b2315c967a0dfa8d527` |
| 3 | `def` | [IsSolution](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/issolution--858d52baf962ee27b69450b7.md) | 72 | `declaration-track:858d52baf962ee27b69450b7b3750f6c4256194f1c1819031c2dcac7655df784` |
| 4 | `def` | [mkSol](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/mksol--433791dc7c04bbc4ae5e958b.md) | 77 | `declaration-track:433791dc7c04bbc4ae5e958bab71ec843973051131e572e1277fe01902cf4597` |
| 5 | `theorem` | [is_sol_mkSol](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/is-sol-mksol--577d5fbd1285485258ca7a58.md) | 86 | `result-track:577d5fbd1285485258ca7a5833f2a5eee02d8ab2b6a9dfa2d37b538552a8d603` |
| 6 | `theorem` | [mkSol_eq_init](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/mksol-eq-init--d5f5b2a971867f398bf8eb72.md) | 92 | `result-track:d5f5b2a971867f398bf8eb729281841dabe93fde51900928a56b3d32ee8254b5` |
| 7 | `theorem` | [eq_mk_of_is_sol_of_eq_init](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/eq-mk-of-is-sol-of-eq-init--735a2f7f7d1b700894de9638.md) | 99 | `result-track:735a2f7f7d1b700894de9638b0b05ad7feffeef6dd64b542a7e11e94a8ddc4aa` |
| 8 | `theorem` | [eq_mk_of_is_sol_of_eq_init'](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/eq-mk-of-is-sol-of-eq-init--b50a98aab9101d1cdf19e9f4.md) | 115 | `result-track:b50a98aab9101d1cdf19e9f48e46cdf14c867353112c54d5a969fcd07768c561` |
| 9 | `def` | [solSpace](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/solspace--acd4b01a125c9fffbfd783a3.md) | 120 | `declaration-track:acd4b01a125c9fffbfd783a384f5519da8df15d115b8806360948892dcecc501` |
| 10 | `theorem` | [is_sol_iff_mem_solSpace](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/is-sol-iff-mem-solspace--ee4ab195c3a3e56f4951a1c3.md) | 128 | `result-track:ee4ab195c3a3e56f4951a1c348c9da377c3c81ad68e6f1c3d93aca3563446c08` |
| 11 | `def` | [toInit](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/toinit--eadccf91a83f0a04af676952.md) | 133 | `declaration-track:eadccf91a83f0a04af676952896e8c13a38b5bad46b152c194e444a152b80921` |
| 12 | `theorem` | [sol_eq_of_eq_init](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/sol-eq-of-eq-init--a47a6415447047b8a884d5fe.md) | 146 | `result-track:a47a6415447047b8a884d5feb6c45104eae538a5102f8aabc3e7d983abfb1317` |
| 13 | `def` | [tupleSucc](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/tuplesucc--0f9e157f1219b5336e811870.md) | 164 | `declaration-track:0f9e157f1219b5336e81187083d603dd4cb5b877dd5e01369ce21ffd2dd83901` |
| 14 | `theorem` | [solSpace_rank](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/solspace-rank--e11268f4d09cb6d1dc4e524c.md) | 183 | `result-track:e11268f4d09cb6d1dc4e524c891e485c66c110bdce669fac9008512a50d164c5` |
| 15 | `def` | [charPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/charpoly--b62ffdd9c70d4854c72d78ac.md) | 195 | `declaration-track:b62ffdd9c70d4854c72d78acd0497e824a8e22760ed43bcd827aae6a9c7766c0` |
| 16 | `theorem` | [geom_sol_iff_root_charPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7f93b12dc0c245cf359bd39e0f90b6aed3e88efcebc4473071db0282ae4cda98.lean/declarations/geom-sol-iff-root-charpoly--c5ffa96f97e5ea94c102a2e5.md) | 200 | `result-track:c5ffa96f97e5ea94c102a2e50277b49806d259aef118cec15f0d7062d5f7e36c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
