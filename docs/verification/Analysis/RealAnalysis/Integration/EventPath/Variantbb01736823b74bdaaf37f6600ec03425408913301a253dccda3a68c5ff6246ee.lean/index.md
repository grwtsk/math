# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EventPath.Variantbb01736823b74bdaaf37f6600ec03425408913301a253dccda3a68c5ff6246ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca7ceaad6dcba39bb671f55e59f0cd6c675f9ac4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EventPath/Variantbb01736823b74bdaaf37f6600ec03425408913301a253dccda3a68c5ff6246ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EventPath/Variantbb01736823b74bdaaf37f6600ec03425408913301a253dccda3a68c5ff6246ee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EventPath/Variantbb01736823b74bdaaf37f6600ec03425408913301a253dccda3a68c5ff6246ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca7ceaad6dcba39bb671f55e59f0cd6c675f9ac4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EventPath/Variantbb01736823b74bdaaf37f6600ec03425408913301a253dccda3a68c5ff6246ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EventPath/Variantbb01736823b74bdaaf37f6600ec03425408913301a253dccda3a68c5ff6246ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.Cochain` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.CochainElements.DegreeZeroCochain` — import line 3; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.EventElements.NameFeatureVectorZero` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EventPath](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EventPath/Variantbb01736823b74bdaaf37f6600ec03425408913301a253dccda3a68c5ff6246ee.lean/declarations/eventpath--e93fb228da841ab6d3f4ed79.md) | 10 | `declaration-track:e93fb228da841ab6d3f4ed793e8fc243c076a612170d8576eba9b8c81bde641c` |
| 2 | `structure` | [ExactPathCertificate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EventPath/Variantbb01736823b74bdaaf37f6600ec03425408913301a253dccda3a68c5ff6246ee.lean/declarations/exactpathcertificate--9f3cee443e9ebf960e216b80.md) | 15 | `declaration-track:9f3cee443e9ebf960e216b8060f98f6f2532de72a8634b7e8eace10dcdc0278f` |
| 3 | `theorem` | [coboundary_integral_closedWalk_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EventPath/Variantbb01736823b74bdaaf37f6600ec03425408913301a253dccda3a68c5ff6246ee.lean/declarations/coboundary-integral-closedwalk-eq-zero--2e8b643c07efc7288afde8b1.md) | 19 | `result-track:2e8b643c07efc7288afde8b115ac981309b62653db57fb79fce4cf9957b4e7ae` |
| 4 | `theorem` | [parallel_paths_have_equal_integral_of_exact_cochain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EventPath/Variantbb01736823b74bdaaf37f6600ec03425408913301a253dccda3a68c5ff6246ee.lean/declarations/parallel-paths-have-equal-integral-of-exact-cochain--4e4bdecc03749c204aae47ef.md) | 27 | `result-track:4e4bdecc03749c204aae47efcdd3ca8bd6d9dcd7437eca0fc59ca9dd480475a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
