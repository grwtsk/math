# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CatalanJacobiResolvent.Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f001d4b47c2205be652e6a1aafff105876f671b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f001d4b47c2205be652e6a1aafff105876f671b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.CatalanJacobi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Catalan` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Inverse` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Expand` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evenMomentSeries](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/evenmomentseries--943ae27407077b52aeb43bed.md) | 33 | `declaration-track:943ae27407077b52aeb43bedc6708116a37487d8eb2a3443e51e68dd1ad32c09` |
| 2 | `lemma` | [evenMomentSeries_eq_catalanSeries](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/evenmomentseries-eq-catalanseries--904591ed7cdfaba2414bd092.md) | 36 | `result-track:904591ed7cdfaba2414bd092763cb6358addadcc9854f625cd9af2f308a0d2e4` |
| 3 | `lemma` | [evenMomentSeries_fixed_point](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/evenmomentseries-fixed-point--387c41db3c032e4ac06263c5.md) | 40 | `result-track:387c41db3c032e4ac06263c58416423d54807856fcf838812002c909d8f684d2` |
| 4 | `def` | [evenMomentSeriesRat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/evenmomentseriesrat--94340c6cca3b7ac2905305d3.md) | 48 | `declaration-track:94340c6cca3b7ac2905305d35ed7e3f0cfadb181f1aa49a61c55cca6d5c5331b` |
| 5 | `lemma` | [evenMomentSeriesRat_coeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/evenmomentseriesrat-coeff--cdc8ef7be0a0753a8459f779.md) | 51 | `result-track:cdc8ef7be0a0753a8459f7793a423d07aacea0f2cadbe3855bc9cae690f8ac5f` |
| 6 | `lemma` | [evenMomentSeriesRat_fixed_point](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/evenmomentseriesrat-fixed-point--cbb7e2ce43b46eacc002b01e.md) | 55 | `result-track:cbb7e2ce43b46eacc002b01ecd554e1eebf5b17db3522771a502934f67715a87` |
| 7 | `lemma` | [evenMomentSeriesRat_constantCoeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/evenmomentseriesrat-constantcoeff--6ee8997f70e6b664b9c200d7.md) | 60 | `result-track:6ee8997f70e6b664b9c200d7aa196d448cd0ed77c48df31d6a17e772ef2ed916` |
| 8 | `lemma` | [evenMomentSeriesRat_mul_denominator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/evenmomentseriesrat-mul-denominator--e95aa438291e9ad7a81b29d1.md) | 64 | `result-track:e95aa438291e9ad7a81b29d1effe9b1e3d99d8f2bac6ae022895bcb729efad75` |
| 9 | `lemma` | [evenMomentSeriesRat_jFraction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/evenmomentseriesrat-jfraction--846a3134b6e3e71e70190138.md) | 74 | `result-track:846a3134b6e3e71e701901383f6cf574a6768ad55d5ee2a40f5641c5ecadb257` |
| 10 | `def` | [formalResolventSeries](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/formalresolventseries--134e262d440c2b36b2dc4284.md) | 82 | `declaration-track:134e262d440c2b36b2dc4284690fd02dc5b91f7e6f5ab4181010d5f89fe7cd8f` |
| 11 | `lemma` | [formalResolventSeries_coeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/formalresolventseries-coeff--f1e08a84ed29718ed516b550.md) | 85 | `result-track:f1e08a84ed29718ed516b5505296d647de5707c1ad6a306aae0686d566cb527b` |
| 12 | `lemma` | [formalResolventSeries_fixed_point](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/formalresolventseries-fixed-point--ef8dc9514d2e9d93736d31c0.md) | 93 | `result-track:ef8dc9514d2e9d93736d31c01da3b970eac73499bf466100ad3282a893a6808e` |
| 13 | `lemma` | [formalResolventSeries_mul_denominator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/formalresolventseries-mul-denominator--f7fb00763f5d9522d0892dac.md) | 98 | `result-track:f7fb00763f5d9522d0892dacda86551a005f6ffa7649635e203f283eab193e1b` |
| 14 | `lemma` | [formalResolventSeries_jFraction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CatalanJacobiResolvent/Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69.lean/declarations/formalresolventseries-jfraction--4aa9607be0495c81e8ee0b16.md) | 109 | `result-track:4aa9607be0495c81e8ee0b167cefa5852199a764ff50d553ecf1ac45df54d256` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
