# Verification target: GRWTSK.Algebra.RingTheory.Trivial.Variant418258c9caab624d5515900a9940ced619381b23934732e75dedd28f64ef6b00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3bf00832e5f820818612325f21dda9373cd0a17",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Trivial/Variant418258c9caab624d5515900a9940ced619381b23934732e75dedd28f64ef6b00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant418258c9caab624d5515900a9940ced619381b23934732e75dedd28f64ef6b00.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant418258c9caab624d5515900a9940ced619381b23934732e75dedd28f64ef6b00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3bf00832e5f820818612325f21dda9373cd0a17`.

Source path: `GRWTSK/Algebra/RingTheory/Trivial/Variant418258c9caab624d5515900a9940ced619381b23934732e75dedd28f64ef6b00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Trivial/Variant418258c9caab624d5515900a9940ced619381b23934732e75dedd28f64ef6b00.lean.json)

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
| 1 | `def` | [trivialRel](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant418258c9caab624d5515900a9940ced619381b23934732e75dedd28f64ef6b00.lean/declarations/trivialrel--2ec47dca59dad88b461a34c8.md) | 35 | `declaration-track:2ec47dca59dad88b461a34c8eeb8fe2d2e209424bf9d33830125c10b8fab884c` |
| 2 | `lemma` | [eq_trivialRel_of_compatible_one](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant418258c9caab624d5515900a9940ced619381b23934732e75dedd28f64ef6b00.lean/declarations/eq-trivialrel-of-compatible-one--6c8775eda975a047381301cd.md) | 45 | `result-track:6c8775eda975a047381301cd716aa5bf7d3c1ca2a411ba8d3965d8c77dcc8b8b` |
| 3 | `lemma` | [trivialRel_eq_ofValuation_one](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant418258c9caab624d5515900a9940ced619381b23934732e75dedd28f64ef6b00.lean/declarations/trivialrel-eq-ofvaluation-one--d5e5f8d98a4e81e5a68b0904.md) | 53 | `result-track:d5e5f8d98a4e81e5a68b09049988d047c2221ef1ba54f6943aca8418492f7a97` |
| 4 | `lemma` | [subsingleton_units_valueGroupWithZero_of_trivialRel](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant418258c9caab624d5515900a9940ced619381b23934732e75dedd28f64ef6b00.lean/declarations/subsingleton-units-valuegroupwithzero-of-trivialrel--00ac9c39d41378b4a49b89af.md) | 59 | `result-track:00ac9c39d41378b4a49b89af4f5de84d64267bc140670fcf92474faf967ef812` |
| 5 | `lemma` | [not_isNontrivial_of_trivialRel](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant418258c9caab624d5515900a9940ced619381b23934732e75dedd28f64ef6b00.lean/declarations/not-isnontrivial-of-trivialrel--d223b61f810a14aafd60cf50.md) | 70 | `result-track:d223b61f810a14aafd60cf5069eca770c987b77f735c2b1e4fd5942aae1c53c0` |
| 6 | `lemma` | [isDiscrete_trivialRel](../../../../../mathematics/Algebra/RingTheory/Trivial/Variant418258c9caab624d5515900a9940ced619381b23934732e75dedd28f64ef6b00.lean/declarations/isdiscrete-trivialrel--806e60e5a882348cd86ff537.md) | 78 | `result-track:806e60e5a882348cd86ff537c6049efb04c757c29aff5e1ced9bcf3581c83f73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
