# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripVerticalPath

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5caf53356e86b5763b6c9ded0d9c0ab48ba541f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5caf53356e86b5763b6c9ded0d9c0ab48ba541f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOverlapAudit`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [VerticalEdgeKind](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/verticaledgekind--17bca8f246ab9e9ff376c456.md) | 39 | `declaration-track:17bca8f246ab9e9ff376c456f94eccbf08c610c8e2c8787bf5af192dc3b47529` |
| 2 | `def` | [IsExact](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/isexact--016d13168594f6a18d6745be.md) | 51 | `declaration-track:016d13168594f6a18d6745be9e16e129a925543bf36685162960d871da703b95` |
| 3 | `def` | [HasExactCoordinateEvidence](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/hasexactcoordinateevidence--d2160aadd2fc252fce2c94ab.md) | 62 | `declaration-track:d2160aadd2fc252fce2c94ab679de63677c0a8cccaeabc0b52c9e8d95eb9056f` |
| 4 | `structure` | [SourceBoundVerticalStep](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/sourceboundverticalstep--054636b74fde04bf19cce8d7.md) | 73 | `declaration-track:054636b74fde04bf19cce8d70f2dbb11c45605a47bdd4f44601659e8f252ad31` |
| 5 | `inductive` | [VerticalPath](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/verticalpath--bb52844051ea51c35894995a.md) | 97 | `declaration-track:bb52844051ea51c35894995a6ff853c90d0ac57a58b719e5dc04e530adebb773` |
| 6 | `theorem` | [toVerticalStep](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/toverticalstep--ecf60525b3752e241d8cd0ee.md) | 109 | `result-track:ecf60525b3752e241d8cd0eed8c5f99b03714b61161b0d404aa7b172b63eb30b` |
| 7 | `def` | [trans](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/trans--3e6b0f3e0fd57e3eff90c078.md) | 118 | `declaration-track:3e6b0f3e0fd57e3eff90c078a34c222532fff39a35b567a2baca4fc3df5b8037` |
| 8 | `theorem` | [transports](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/transports--2721e77144f9a25d143604de.md) | 129 | `result-track:2721e77144f9a25d143604de8bc93cd4fd824f6b11f68ab786c3470f4b71eab1` |
| 9 | `theorem` | [height_mono](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/height-mono--9ca1134545ae8ec1b31dc813.md) | 137 | `result-track:9ca1134545ae8ec1b31dc813020964201cd756f59f4effc8b3835f7ed7b2f0e3` |
| 10 | `theorem` | [nonempty_trans](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/nonempty-trans--b96f39b43babe6eee221d3cd.md) | 146 | `result-track:b96f39b43babe6eee221d3cd53149565ec4c88cb78dcb50d558f7f4fb822c945` |
| 11 | `theorem` | [required_status_eq_equivalent_of_directionalGapsDischarged](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/required-status-eq-equivalent-of-directionalgapsdischarged--780efea1d9fe5611c7dc978b.md) | 162 | `result-track:780efea1d9fe5611c7dc978b718833767813077a4fb75e07079005f179f02250` |
| 12 | `structure` | [CompleteVerticalCoverage](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/completeverticalcoverage--7f858798e9bd73e4977ffb88.md) | 188 | `declaration-track:7f858798e9bd73e4977ffb884e847d24b79541578a53c14260b63bf8e99dc531` |
| 13 | `theorem` | [fullPathThrough](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/fullpaththrough--9b153c865f318dedecca3423.md) | 214 | `result-track:9b153c865f318dedecca342361c4d4ef00805602a57d388d129fda5a61a1ea12` |
| 14 | `theorem` | [required_statement_implies_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/required-statement-implies-rh--e9b991355f69142ea5bedb37.md) | 230 | `result-track:e9b991355f69142ea5bedb37742790158d2986eabef7271f1892eb6f0d286a40` |
| 15 | `theorem` | [rh_of_proved_required_statement](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/rh-of-proved-required-statement--d3b575fba5512f41b9fea928.md) | 250 | `result-track:d3b575fba5512f41b9fea9287a6113f08e8d2ce5c75983635276764ed0f11be3` |
| 16 | `theorem` | [globalStatement_iff_rh_of_complete](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/declarations/globalstatement-iff-rh-of-complete--221b26ab4121316cf0dd3436.md) | 262 | `result-track:221b26ab4121316cf0dd34363fdd6ba7e847351f6e8fd68a5da6e2f01c2adca1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
