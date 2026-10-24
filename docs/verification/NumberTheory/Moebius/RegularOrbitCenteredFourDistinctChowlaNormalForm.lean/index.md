# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctChowlaNormalForm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c86b2260ef13e4ab4813717f396a9bcaf1e40ab2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c86b2260ef13e4ab4813717f396a9bcaf1e40ab2`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredAffineFourMobiusCollisions`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredFourMobiusShiftAnchor](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/declarations/centeredfourmobiusshiftanchor--27f77cf638ff94eb6a25eba9.md) | 17 | `declaration-track:27f77cf638ff94eb6a25eba9d11f291114d4fda05e6d7247f1ef04368cd87643` |
| 2 | `def` | [centeredFourMobiusOffsets](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/declarations/centeredfourmobiusoffsets--fb877d0a31abd183c96f8257.md) | 21 | `declaration-track:fb877d0a31abd183c96f825779ff561cf8a21d545d565ba6ee2863b95ccad212` |
| 3 | `def` | [centeredFourMobiusBase](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/declarations/centeredfourmobiusbase--6eeb1736e9499f824dc2072a.md) | 29 | `declaration-track:6eeb1736e9499f824dc2072ae36ef30b1e305782ae2218110cbbfea73e50a399` |
| 4 | `theorem` | [firstPairBase_truncatedOffset_counterexample](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/declarations/firstpairbase-truncatedoffset-counterexample--3e6130dfdbf58d2f2ced54be.md) | 35 | `result-track:3e6130dfdbf58d2f2ced54be4b3c57789b5732bc599480b9b158b70d574106d0` |
| 5 | `theorem` | [centeredFourMobius_arguments_normalize](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/declarations/centeredfourmobius-arguments-normalize--fa9d624d095751a66947e17c.md) | 39 | `result-track:fa9d624d095751a66947e17c1ddc8a1a4519021d844e09df4a83678586d8d7bb` |
| 6 | `theorem` | [centeredFourMobiusOffsets_injective](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/declarations/centeredfourmobiusoffsets-injective--dcd29c1cf04bf9a3534009d3.md) | 57 | `result-track:dcd29c1cf04bf9a3534009d3c61ea50883cac0a97cd0d5a50e15cb4b3854fa10` |
| 7 | `structure` | [FourDistinctChowlaDatum](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/declarations/fourdistinctchowladatum--670af7d1a319586e5b182eb8.md) | 71 | `declaration-track:670af7d1a319586e5b182eb818e227f224cbee145682527cb7a346a49b304da4` |
| 8 | `def` | [centeredFourDistinctChowlaDatum](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/declarations/centeredfourdistinctchowladatum--03ddd7040ca884c5974196ed.md) | 78 | `declaration-track:03ddd7040ca884c5974196edbf1a6036711ebd862cbfff92d9e103ea199337fd` |
| 9 | `def` | [fourDistinctChowlaCoefficient](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/declarations/fourdistinctchowlacoefficient--7e3db0024948644f2c43c100.md) | 91 | `declaration-track:7e3db0024948644f2c43c1001963dabeb5491eac1d466e4859b62d08a6d86ddc` |
| 10 | `def` | [FourDistinctChowlaFiniteSupportEnvelope](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/declarations/fourdistinctchowlafinitesupportenvelope--ecff1bf166e704fe2dea6d5a.md) | 97 | `declaration-track:ecff1bf166e704fe2dea6d5aa6d4175e233c920eb3c7e6e51a7b301aeee5815c` |
| 11 | `structure` | [CenteredToFourDistinctChowlaAdapterData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/declarations/centeredtofourdistinctchowlaadapterdata--5d0ee5ca546a88203c37c8ee.md) | 104 | `declaration-track:5d0ee5ca546a88203c37c8ee27cfec147b14ff410144a9d09a74c4ec11a93b5b` |
| 12 | `def` | [CenteredToFourDistinctChowlaAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/declarations/centeredtofourdistinctchowlaadapter--7ab028755f48d2ebef2801c6.md) | 116 | `declaration-track:7ab028755f48d2ebef2801c69296d622c8ea3d87d7b63942318dfbef205563e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
