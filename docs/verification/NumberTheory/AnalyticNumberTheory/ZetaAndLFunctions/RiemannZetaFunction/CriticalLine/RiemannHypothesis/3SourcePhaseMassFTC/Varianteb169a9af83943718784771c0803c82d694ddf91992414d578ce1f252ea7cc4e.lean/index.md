# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.3SourcePhaseMassFTC.Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c578e10de7d0c48f93a2e2bf58fae93f37c98e1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c578e10de7d0c48f93a2e2bf58fae93f37c98e1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedTailPrimeBlock` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_sub_one_eq_phase_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean/declarations/criticalprimetest-sub-one-eq-phase-prefix--b24f26bb7f4ba86bfcef9eeb.md) | 32 | `result-track:b24f26bb7f4ba86bfcef9eebd524256755b0825b1670100bdd4773dcb130f05e` |
| 2 | `theorem` | [positive_phase_prefix_le_mass](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean/declarations/positive-phase-prefix-le-mass--362e59ba1abb1cd42d0477f7.md) | 46 | `result-track:362e59ba1abb1cd42d0477f7d94fb3de6bc633ec8254759c57c2c4aa202ca4a1` |
| 3 | `theorem` | [positiveMass_ge_criticalPrimeTest_sub_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean/declarations/positivemass-ge-criticalprimetest-sub-one--c2e8ff0501ac94767ddfda15.md) | 59 | `result-track:c2e8ff0501ac94767ddfda15a76647b637e5f99495599a4e476e334c73caf841` |
| 4 | `theorem` | [criticalPrimeTest_early_point_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean/declarations/criticalprimetest-early-point-ge--da801c5f008dd216ba198f36.md) | 68 | `result-track:da801c5f008dd216ba198f3699912e2923c94356db5d3b981eee6cbaaa4a30b0` |
| 5 | `theorem` | [positiveMass_ge_early_exponential](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean/declarations/positivemass-ge-early-exponential--50646de21db289323010c04b.md) | 77 | `result-track:50646de21db289323010c04b1785feb3b162386638966cb0d74d25e9f0433bfd` |
| 6 | `theorem` | [negativeMass_ge_early_exponential](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean/declarations/negativemass-ge-early-exponential--d9b83645449c6e314c15ef37.md) | 85 | `result-track:d9b83645449c6e314c15ef37ea9fefee454cb43d2755938ccf1e053a34dd7b97` |
| 7 | `theorem` | [criticalPrimeTest_variation_ge_early_exponential](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean/declarations/criticalprimetest-variation-ge-early-exponential--527ee8147d02c159f0dcd7ac.md) | 91 | `result-track:527ee8147d02c159f0dcd7ac896edd5cdb1a963a8e4569e20cf014f32aeed080` |
| 8 | `theorem` | [pairedTailTest_variation_ge_early_exponential](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean/declarations/pairedtailtest-variation-ge-early-exponential--343df622e09996c7b4e55b90.md) | 98 | `result-track:343df622e09996c7b4e55b90344f774ff812d36a25b4957bebf62b520e6777f0` |
| 9 | `theorem` | [positiveMass_ge_linear](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean/declarations/positivemass-ge-linear--99815f19e69c97646b47a6e6.md) | 105 | `result-track:99815f19e69c97646b47a6e69cb7038277ea9b8cbb93b21263f4a3ecdc8b113e` |
| 10 | `theorem` | [positiveMass_not_eventually_bounded](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Varianteb169a9af83943718784771c0803c82d694ddf91992414d578ce1f252ea7cc4e.lean/declarations/positivemass-not-eventually-bounded--c9df676d881a24bb2288345f.md) | 112 | `result-track:c9df676d881a24bb2288345f2721b0fc9e024017463223a81786ce3060c3aacc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
