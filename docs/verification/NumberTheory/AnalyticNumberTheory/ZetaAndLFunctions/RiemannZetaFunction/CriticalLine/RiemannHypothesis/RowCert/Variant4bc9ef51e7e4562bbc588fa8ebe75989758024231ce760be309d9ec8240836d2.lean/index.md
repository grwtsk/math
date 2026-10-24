# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RowCert.Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14e0cdf58aef84f0eee74e4f54275339f5fd3d30",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14e0cdf58aef84f0eee74e4f54275339f5fd3d30`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PairCeiling.NearCUE` — import line 12; external provider; requires a separately pinned dependency.
- `Zeta23.PairCeiling.NumericCert` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RowCertData](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean/declarations/rowcertdata--502b2b60b1844c54da7087e9.md) | 24 | `declaration-track:502b2b60b1844c54da7087e9903e0ac2462862b40e74fc1c105f19449e6b7908` |
| 2 | `def` | [rowsOK](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean/declarations/rowsok--64fa271b2d5ac90f6a077a6c.md) | 34 | `declaration-track:64fa271b2d5ac90f6a077a6c86ed0fe00220c60a002f10e7c792732de4f09a48` |
| 3 | `def` | [sumLo](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean/declarations/sumlo--5565220f84204f3c2471b2b9.md) | 43 | `declaration-track:5565220f84204f3c2471b2b99bcae759a40fb745bd26417abae419a1912c6b30` |
| 4 | `def` | [sumHi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean/declarations/sumhi--d6717a70b6c6c83364e4734e.md) | 47 | `declaration-track:d6717a70b6c6c83364e4734e10d9e5cc761aa4b51ae5a98e709a8058123d4a7d` |
| 5 | `def` | [checkRows](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean/declarations/checkrows--4a64636598987169d2b20358.md) | 52 | `declaration-track:4a64636598987169d2b203586d577d52927e0ae1a75bdb522d46a0533b7bc110` |
| 6 | `lemma` | [rows_sound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean/declarations/rows-sound--d00fc8e80929898a4d785484.md) | 65 | `result-track:d00fc8e80929898a4d785484464b34aae86d64868e16f429f179f78b32016595` |
| 7 | `lemma` | [sums_sound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean/declarations/sums-sound--d100c60854e298128eb5512d.md) | 113 | `result-track:d100c60854e298128eb5512d6ed27dd77173fd734017f0927d817e97216976b2` |
| 8 | `theorem` | [cert_of_checkRows](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean/declarations/cert-of-checkrows--81f0dbed5bd4e8b14db1c50c.md) | 134 | `result-track:81f0dbed5bd4e8b14db1c50c173d85d14b0e0f948bf6346bf92029663defdd07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
