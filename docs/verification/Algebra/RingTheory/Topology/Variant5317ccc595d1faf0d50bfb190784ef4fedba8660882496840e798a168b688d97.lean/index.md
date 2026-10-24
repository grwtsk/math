# Verification target: GRWTSK.Algebra.RingTheory.Topology.Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fbaf4094b3b53b9fed832c3a215999826a9f8fe",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fbaf4094b3b53b9fed832c3a215999826a9f8fe`.

Source path: `GRWTSK/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean.json)

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
| 1 | `lemma` | [IsAdic.isHausdorff_iff](../../../../../mathematics/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean/declarations/isadic-ishausdorff-iff--b612da3ec8b72604a6e31ff2.md) | 39 | `result-track:b612da3ec8b72604a6e31ff2c31b7251cddb2f1d3733ccbf399e4b6a691d6ca8` |
| 2 | `lemma` | [IsAdic.isPrecomplete_iff](../../../../../mathematics/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean/declarations/isadic-isprecomplete-iff--1afd9c03587c3c47790340fc.md) | 54 | `result-track:1afd9c03587c3c47790340fc01507e2bf7d137d13db29b26672d769d7ffd624e` |
| 3 | `lemma` | [IsAdic.isAdicComplete_iff](../../../../../mathematics/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean/declarations/isadic-isadiccomplete-iff--2da74ac397814e08a082b40e.md) | 84 | `result-track:2da74ac397814e08a082b40ed8e4ac8aed1203344485f2ca4b3177a172fdf124` |
| 4 | `theorem` | [IsPrecomplete.congr_ringEquiv](../../../../../mathematics/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean/declarations/isprecomplete-congr-ringequiv--f754d7a4f356bc16e8fa1863.md) | 93 | `result-track:f754d7a4f356bc16e8fa1863e29cab14c9db536e8d5e76bad0ef152d0a801945` |
| 5 | `theorem` | [IsHausdorff.congr_ringEquiv](../../../../../mathematics/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean/declarations/ishausdorff-congr-ringequiv--23e4a47a71174753e2d78fe9.md) | 100 | `result-track:23e4a47a71174753e2d78fe94483ed45cd82247179ed2cc9ba4265e9aeebaa6a` |
| 6 | `theorem` | [IsAdicComplete.congr_ringEquiv](../../../../../mathematics/Algebra/RingTheory/Topology/Variant5317ccc595d1faf0d50bfb190784ef4fedba8660882496840e798a168b688d97.lean/declarations/isadiccomplete-congr-ringequiv--025ea76cdd681a486bff163a.md) | 107 | `result-track:025ea76cdd681a486bff163aed4e8339b6a70dc6d702395e28f522398fffb2ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
