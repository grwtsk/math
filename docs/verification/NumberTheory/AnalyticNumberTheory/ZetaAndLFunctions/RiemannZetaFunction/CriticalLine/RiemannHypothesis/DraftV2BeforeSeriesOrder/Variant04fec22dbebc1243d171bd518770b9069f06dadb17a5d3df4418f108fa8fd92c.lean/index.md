# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DraftV2BeforeSeriesOrder.Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "943bd30d06a783e5143ad37a77bd0ca58ed90697",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `943bd30d06a783e5143ad37a77bd0ca58ed90697`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squarePrefixCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareprefixcoefficient--6af724cfbdfdddfd3779bace.md) | 27 | `declaration-track:6af724cfbdfdddfd3779bace060f7415c5aaef4addcd71292c89cbdf986ed1b7` |
| 2 | `def` | [squarePrefixBaseline](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareprefixbaseline--8ecf23c6cac3e2e192beb116.md) | 30 | `declaration-track:8ecf23c6cac3e2e192beb1161eca59848154a42b10d1634d2c74651994d326a2` |
| 3 | `def` | [squarePrefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareprefix--adef87f94a90115f477b4077.md) | 33 | `declaration-track:adef87f94a90115f477b4077389d4edc37dfd5e830ec2f177807e3acd1d59999` |
| 4 | `def` | [squareTail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squaretail--4254bb7d2e83224c48594115.md) | 37 | `declaration-track:4254bb7d2e83224c485941153acc93151f33586b18bd50ecd685a5e0e9454b34` |
| 5 | `def` | [squareTailWork](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squaretailwork--17cd7d5151defa1c5a02aea3.md) | 40 | `declaration-track:17cd7d5151defa1c5a02aea3fd901aca47cbd69897b3041259a7cd05a88b182f` |
| 6 | `def` | [squareTailNegativeMean](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squaretailnegativemean--1a323ef1e526424a2cbe1f5a.md) | 44 | `declaration-track:1a323ef1e526424a2cbe1f5a7a240c2865c2bddd187526600319d8535cd5656a` |
| 7 | `def` | [squareTailPairedWork](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squaretailpairedwork--1d162f5bccfac756b73dcf78.md) | 48 | `declaration-track:1d162f5bccfac756b73dcf78740bf6455b5b26d99b773b545540d75d0eef28e5` |
| 8 | `theorem` | [squarePrefixCoefficient_eq_slice](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareprefixcoefficient-eq-slice--e5148ab3bb5b237c5be6eba9.md) | 53 | `result-track:e5148ab3bb5b237c5be6eba9043f90b7a82cc2aeea6d673716afcf14cc5ad73d` |
| 9 | `theorem` | [squarePrefixCoefficient_summable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareprefixcoefficient-summable--fd755ee3169a9fe0bd5c5058.md) | 66 | `result-track:fd755ee3169a9fe0bd5c5058b3c15336893f88924640dafe23ce854644b2f0bc` |
| 10 | `theorem` | [squarePrefixCoefficient_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareprefixcoefficient-pos--fd864a6139aa979079089774.md) | 74 | `result-track:fd864a6139aa9790790897747c5d7494122a6bd05fc8eea94da7d31dc9a9c888` |
| 11 | `theorem` | [squarePrefixBaseline_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareprefixbaseline-nonneg--7af3e57f792603c6b8c90d37.md) | 79 | `result-track:7af3e57f792603c6b8c90d3713de7abaccf715bf0a451234357289298c3452c3` |
| 12 | `theorem` | [squarePrefixBaseline_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareprefixbaseline-pos--5e0d22266eb0528cf9ce2976.md) | 82 | `result-track:5e0d22266eb0528cf9ce2976f4e07e0ffa704c3dc51d3db6a022d4820195e4bd` |
| 13 | `theorem` | [squarePrefix_eq_steps](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareprefix-eq-steps--da78a80b6925b39bd976e595.md) | 88 | `result-track:da78a80b6925b39bd976e595cdcbcf92e2b25c6d5eb4236530022293346d5bbd` |
| 14 | `theorem` | [squarePrefix_mul_deriv_intervalIntegrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareprefix-mul-deriv-intervalintegrable--500f5fa6cb79001f28c14a2c.md) | 102 | `result-track:500f5fa6cb79001f28c14a2cb5ae4adc833899d9ad2bde27222681b8810c250f` |
| 15 | `theorem` | [squareTail_mul_deriv_intervalIntegrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squaretail-mul-deriv-intervalintegrable--072e18e57ba22f57641784b2.md) | 124 | `result-track:072e18e57ba22f57641784b2e72f7d04d7acc9660946e4074ad0eb12128825fc` |
| 16 | `theorem` | [squarePrefix_source_work](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareprefix-source-work--3ca1890e1b44e38b2a119084.md) | 133 | `result-track:3ca1890e1b44e38b2a1190844fc1ebfe23b562446acfe210f7e7ffba1f0d9684` |
| 17 | `theorem` | [squareTailWork_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squaretailwork-eq--96c6ce3a28abc4ab0edb5747.md) | 165 | `result-track:96c6ce3a28abc4ab0edb57471e1ea06203f71f9b504931e2a56785e29c63ff3c` |
| 18 | `theorem` | [squareTail_intervalIntegrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squaretail-intervalintegrable--672059875332cfbdc28e3c6d.md) | 181 | `result-track:672059875332cfbdc28e3c6d2587f6f229bfd62ff47131b68c4a277fde8105d6` |
| 19 | `theorem` | [squareTailPairedWork_eq_work_add_mean](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squaretailpairedwork-eq-work-add-mean--83f88b191c4a504f75c122cf.md) | 188 | `result-track:83f88b191c4a504f75c122cf266ce254b110f45b77e016961d2d344b150e5bc6` |
| 20 | `def` | [squareRemovedPairedWork](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareremovedpairedwork--0b9d486634f1a62ef534a69f.md) | 210 | `declaration-track:0b9d486634f1a62ef534a69f20fca3605421137efcd7b3cf1959fc9e44f3c16d` |
| 21 | `def` | [squareRemovedRemainder](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareremovedremainder--6a2e55f4691bba135a2d2c60.md) | 216 | `declaration-track:6a2e55f4691bba135a2d2c609ab7b4357ee37e0d0afbbf14616e49248a19e5c4` |
| 22 | `theorem` | [squareRemovedPairedWork_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/squareremovedpairedwork-eq--c4e7b2a54a618cc3c65150d6.md) | 221 | `result-track:c4e7b2a54a618cc3c65150d68886d52bda5ac11513113f3282d6ab7a73603522` |
| 23 | `theorem` | [mertensResidual_eq_squareRemoved](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/declarations/mertensresidual-eq-squareremoved--7e6f58f6e4b8c4fa3eebbcd8.md) | 238 | `result-track:7e6f58f6e4b8c4fa3eebbcd8637f6bffd12fa39769ee20363d65a8a2964128b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
