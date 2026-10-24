# Verification target: GRWTSK.NumberTheory.Moebius.CoreNonboundaryReciprocalSquareL1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "924e1353fa1f845b173628b25495cae64c05382f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `924e1353fa1f845b173628b25495cae64c05382f`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreBoundaryClassicalWeakMertens`](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coreNonboundaryAmbientTerminalL1Majorant](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/corenonboundaryambientterminall1majorant--ef467569634a7c2731bbda91.md) | 21 | `declaration-track:ef467569634a7c2731bbda91465654dd4293f5d331fcd9e93c29ffce0ecca77f` |
| 2 | `def` | [coreNonboundaryDepthAmbientL1Majorant](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/corenonboundarydepthambientl1majorant--0ee379779fd9fc85d01b44d2.md) | 27 | `declaration-track:0ee379779fd9fc85d01b44d28c6d5fd832aedfaf6e8bfaee3ee36d409f8c4892` |
| 3 | `theorem` | [harmonicAmbientShortIntervalL1_nonneg](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/harmonicambientshortintervall1-nonneg--79766cfb526843b1b2292204.md) | 33 | `result-track:79766cfb526843b1b2292204761da6ac844319b7f6f976424eb47e3fb5e92d18` |
| 4 | `theorem` | [coreNonboundaryDepthShortIntervalL1Majorant_le_ambient](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/corenonboundarydepthshortintervall1majorant-le-ambient--6427a0e7acf28e8384beaaf6.md) | 41 | `result-track:6427a0e7acf28e8384beaaf672ebaf1a0895f02edda51746d6c7ec770efa8448` |
| 5 | `theorem` | [sum_succ_range_filter_eq_Ico](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/sum-succ-range-filter-eq-ico--6bc7af392af1b14a3d8c0cc8.md) | 75 | `result-track:6bc7af392af1b14a3d8c0cc8989ec24f8d8777f80e22467b1b5a06970f0acd0e` |
| 6 | `theorem` | [coreNonboundaryAmbientTerminalL1Majorant_eq_selector](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/corenonboundaryambientterminall1majorant-eq-selector--29a85f9f76cb712d5a798124.md) | 101 | `result-track:29a85f9f76cb712d5a798124d5bb74968d512ffd84e944797bdebbdb1c908043` |
| 7 | `theorem` | [harmonicAmbientLongInteriorL1Majorant_eq_selector](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/harmonicambientlonginteriorl1majorant-eq-selector--9b99fb84c4910906f0a8630a.md) | 141 | `result-track:9b99fb84c4910906f0a8630affda427310c054698f30f7d6de92f983380db826` |
| 8 | `theorem` | [coreNonboundaryDepthAmbientL1Majorant_eq_lengthwise](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/corenonboundarydepthambientl1majorant-eq-lengthwise--a4c086d9bb805fcfd75b60cd.md) | 196 | `result-track:a4c086d9bb805fcfd75b60cd85268b9fcdaba8db907954a02d62979fa8a1203e` |
| 9 | `def` | [coreNonboundaryAmbientLengthPacket](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/corenonboundaryambientlengthpacket--f1f7c860adbbd02ce1672f2a.md) | 214 | `declaration-track:f1f7c860adbbd02ce1672f2a6de216169473f09fe6ffc04c6bad8c903344debd` |
| 10 | `theorem` | [sum_coreNonboundaryDepthAmbientL1Majorant_eq_lengthPacket](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/sum-corenonboundarydepthambientl1majorant-eq-lengthpacket--0b2be356317833057156dd0a.md) | 221 | `result-track:0b2be356317833057156dd0a781690d9f0f49d882436c9f68d86c4c461441e21` |
| 11 | `theorem` | [coreNonboundaryShortIntervalL1Packet_le_lengthPacket](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/corenonboundaryshortintervall1packet-le-lengthpacket--d41faeeaf8db628345cd5f69.md) | 250 | `result-track:d41faeeaf8db628345cd5f69980f0f087feddf40a21b0df204fe40af82b04996` |
| 12 | `def` | [reciprocalSquareAmbientShortIntervalL1Packet](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/reciprocalsquareambientshortintervall1packet--cb1431bebc7c10f0bcaef014.md) | 268 | `declaration-track:cb1431bebc7c10f0bcaef014e744928e81fe552e149de1cc69158bae52b97d71` |
| 13 | `theorem` | [coreNonboundaryAmbientLengthPacket_le_reciprocalSquare](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/corenonboundaryambientlengthpacket-le-reciprocalsquare--a84be33fb32a5c3620e4cf53.md) | 276 | `result-track:a84be33fb32a5c3620e4cf533579ebc6d9deb9f9aa265750db7977ab2050fa49` |
| 14 | `def` | [SubpolynomialReciprocalSquareAmbientShortIntervalL1Packet](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/subpolynomialreciprocalsquareambientshortintervall1packet--ace223241eda22072c3c7e79.md) | 303 | `declaration-track:ace223241eda22072c3c7e79dae3a81788e0b1b71c0843b7140d228abd99a5bc` |
| 15 | `theorem` | [subpolynomialCoreNonboundaryShortIntervalL1Packet_of_reciprocalSquare](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/subpolynomialcorenonboundaryshortintervall1packet-of-reciprocalsquare--c540421f5a3992e764c85b0c.md) | 310 | `result-track:c540421f5a3992e764c85b0cee68a574880e4216a2f5a75b3bbb0b060b20cbf0` |
| 16 | `theorem` | [riemannHypothesis_of_classicalWeakMertensStep_and_reciprocalSquareL1](../../../../mathematics/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/declarations/riemannhypothesis-of-classicalweakmertensstep-and-reciprocalsquarel1--7cbf118981f779cc0a07c939.md) | 331 | `result-track:7cbf118981f779cc0a07c939e877f111cd751e1ba413310216930a0b583578ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
