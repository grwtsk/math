# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "503f4fef95b7134a08d8712908ccd5ecd37c4686",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `503f4fef95b7134a08d8712908ccd5ecd37c4686`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Abelianization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Centralizer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Alternating` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [odd_of_centralizer_le_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/odd-of-centralizer-le-alternatinggroup--a124b97dcb30458505ae5381.md) | 51 | `result-track:a124b97dcb30458505ae5381f0f2c2aa96de0d2b314b1451d45a573d94fe9376` |
| 2 | `theorem` | [map_subtype_of_cycleType](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/map-subtype-of-cycletype--08630a67a7457f7d3015f1c1.md) | 73 | `result-track:08630a67a7457f7d3015f1c1e805a85987efc06bddba6b1ca641187efb0f331c` |
| 3 | `theorem` | [card_of_cycleType_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/card-of-cycletype-mul-eq--4affe2b2a9c76202a50ad4c9.md) | 94 | `result-track:4affe2b2a9c76202a50ad4c982fa6dbcc01bb88da0bf4c611326dce0693489e5` |
| 4 | `theorem` | [card_of_cycleType](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/card-of-cycletype--6680d9d03693dc759f947705.md) | 107 | `result-track:6680d9d03693dc759f947705c1164842d252e080b8b43d7519b4878aa1fefbfd` |
| 5 | `lemma` | [card_of_cycleType_singleton](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/card-of-cycletype-singleton--c40d815eef1033d0cf4fe18f.md) | 130 | `result-track:c40d815eef1033d0cf4fe18f5af27b78c4987af8f2fdabf29d496811e8a260c5` |
| 6 | `theorem` | [card_le_of_centralizer_le_alternating](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/card-le-of-centralizer-le-alternating--7e7c23da73d35cb4bff2dd6c.md) | 144 | `result-track:7e7c23da73d35cb4bff2dd6cfe73af19ab7ef3f5544b1da43dd354fe3c542064` |
| 7 | `theorem` | [count_le_one_of_centralizer_le_alternating](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/count-le-one-of-centralizer-le-alternating--314349558a169003d026a27c.md) | 157 | `result-track:314349558a169003d026a27c38030426765ed892c0621a3e43fcd9e4b44b4ab2` |
| 8 | `theorem` | [OnCycleFactors.kerParam_range_eq_centralizer_of_count_le_one](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/oncyclefactors-kerparam-range-eq-centralizer-of-count-le-one--e561ea69d272e6f668e6fc8c.md) | 209 | `result-track:e561ea69d272e6f668e6fc8c2081095ef4da8fe61240af23b7e79fa1c29de409` |
| 9 | `theorem` | [centralizer_le_alternating_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/centralizer-le-alternating-iff--c8fa37989365b70bcc9e96ef.md) | 224 | `result-track:c8fa37989365b70bcc9e96ef5e2d9d5ea038b158339b998ff5a3a6e0589ada71` |
| 10 | `theorem` | [mem_commutatorSet_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/mem-commutatorset-alternatinggroup--cb3e65a8e04e0e702a746b4f.md) | 260 | `result-track:cb3e65a8e04e0e702a746b4f00aa8575aa57ccbbdf9c5cbf7c10ed509299ddcf` |
| 11 | `theorem` | [mem_commutator_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/mem-commutator-alternatinggroup--e61dce8fdd7baf6129d0978f.md) | 265 | `result-track:e61dce8fdd7baf6129d0978f32bc506193361a2f9462b4fd7f4f9ab9535d76de` |
| 12 | `theorem` | [alternatingGroup.commutator_perm_le](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/alternatinggroup-commutator-perm-le--5c037b2c8aae0c25bcb2a1e4.md) | 278 | `result-track:5c037b2c8aae0c25bcb2a1e4e194822b934fd4d545985f98dede5a8b6d5cdf44` |
| 13 | `theorem` | [commutator_alternatingGroup_eq_top](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/commutator-alternatinggroup-eq-top--0c65745b56f2ccff920800db.md) | 286 | `result-track:0c65745b56f2ccff920800db57183dc87cb2db6160df02fe4dc2cdac95e29222` |
| 14 | `theorem` | [commutator_alternatingGroup_eq_self](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/commutator-alternatinggroup-eq-self--4ae6f0e9f9854bb293ff1aac.md) | 296 | `result-track:4ae6f0e9f9854bb293ff1aacc62c4293c88a6b5c304db48d2b68aeea84288295` |
| 15 | `theorem` | [alternatingGroup.commutator_perm_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/declarations/alternatinggroup-commutator-perm-eq--7e85ffb3a685f80984095672.md) | 302 | `result-track:7e85ffb3a685f809840956727ee61d1d8c1696548f266c09f88ffb597cf4803b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
