# Verification target: GRWTSK.Topology.GeneralTopology.IndicatorFunction.Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce817acdc5544e9ddf6a8d1f99b89ef0a25cd9c9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce817acdc5544e9ddf6a8d1f99b89ef0a25cd9c9`.

Source path: `GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Tendsto` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mulIndicator_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/mulindicator-eventuallyeq--f6d26fc3efa5227a04472e3c.md) | 30 | `result-track:f6d26fc3efa5227a04472e3cb4285bf6cee0ac463dbd4c71cdc92cf93ce6b04c` |
| 2 | `theorem` | [mulIndicator_union_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/mulindicator-union-eventuallyeq--f28c732fee51900b48c7435c.md) | 44 | `result-track:f28c732fee51900b48c7435c0a3f3859e24f8bd63ce8f3258dc84ba8633a6787` |
| 3 | `theorem` | [mulIndicator_eventuallyLE_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/mulindicator-eventuallyle-mulindicator--afc43cc2f325ffd5507e790b.md) | 55 | `result-track:afc43cc2f325ffd5507e790bb90c38011ec5fac62ae8fbd5af578c133cb3dc3e` |
| 4 | `theorem` | [Monotone.mulIndicator_eventuallyEq_iUnion](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/monotone-mulindicator-eventuallyeq-iunion--a8fb636cdeec90e8faf7abf4.md) | 62 | `result-track:a8fb636cdeec90e8faf7abf4a97f49e019d55da119187b65998aabc822e027ef` |
| 5 | `theorem` | [Monotone.tendsto_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/monotone-tendsto-mulindicator--d45452bc6185c630ce800675.md) | 68 | `result-track:d45452bc6185c630ce8006756abdec83525190372c554aca343ba8d6cdd84be3` |
| 6 | `theorem` | [Antitone.mulIndicator_eventuallyEq_iInter](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/antitone-mulindicator-eventuallyeq-iinter--2d50bbaa8bfc25373a138d44.md) | 74 | `result-track:2d50bbaa8bfc25373a138d448043ac8c432a959c8ac79bef05cbb77c40a70287` |
| 7 | `theorem` | [Antitone.tendsto_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/antitone-tendsto-mulindicator--537b8fb9c578fd5b2967ee5e.md) | 80 | `result-track:537b8fb9c578fd5b2967ee5e054cf1b5d8c1e2ab18c9f1b493281dd7dd210cd1` |
| 8 | `theorem` | [mulIndicator_biUnion_finset_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/mulindicator-biunion-finset-eventuallyeq--d2def716c9b6533d6c5150bd.md) | 86 | `result-track:d2def716c9b6533d6c5150bd88c79e4e8fca305b34e8980abd9cc75cf35c1a31` |
| 9 | `theorem` | [tendsto_mulIndicator_biUnion_finset](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/tendsto-mulindicator-biunion-finset--88d99db881d763d91c7aff1d.md) | 94 | `result-track:88d99db881d763d91c7aff1d7b60d58ee9fdec85d82ef9e07e506ecb061b482b` |
| 10 | `theorem` | [Filter.EventuallyEq.mulSupport](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/filter-eventuallyeq-mulsupport--4daa537ae65eebce3a8ef77c.md) | 100 | `result-track:4daa537ae65eebce3a8ef77c875de321806a5371ac7ef656923beae6ec47dae7` |
| 11 | `theorem` | [Filter.EventuallyEq.mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/filter-eventuallyeq-mulindicator--dbe34ff234e759cb0a89dd36.md) | 106 | `result-track:dbe34ff234e759cb0a89dd36857478f9aa2f7a70abf303b0d559279957408003` |
| 12 | `theorem` | [Filter.EventuallyEq.mulIndicator_one](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/filter-eventuallyeq-mulindicator-one--94b6b7c61709a60d4c2e81b4.md) | 111 | `result-track:94b6b7c61709a60d4c2e81b44e7caa47a37c5ae1d05503d2bb44c0d19b11052d` |
| 13 | `theorem` | [Filter.EventuallyEq.of_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/filter-eventuallyeq-of-mulindicator--bb760e779c3bfc964244c6b4.md) | 116 | `result-track:bb760e779c3bfc964244c6b436ff34259c2cea7e2279a7603a3e528dfaf41b51` |
| 14 | `theorem` | [Filter.EventuallyEq.of_mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/filter-eventuallyeq-of-mulindicator-const--9cee278b786d29118f02a15a.md) | 125 | `result-track:9cee278b786d29118f02a15af0c7565893e2aa89d1f2bb76ddbdb2c5aa56ffab` |
| 15 | `theorem` | [Filter.mulIndicator_const_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant6e4daa9e2541022e32dc9a5b77f98e2e9dd869bf9453f4c7af776caad28fa50b.lean/declarations/filter-mulindicator-const-eventuallyeq--8112f08e0e213a762b5bbcbd.md) | 130 | `result-track:8112f08e0e213a762b5bbcbd1e80b8dd929afc7be34b07beea9cd523176cf8c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
