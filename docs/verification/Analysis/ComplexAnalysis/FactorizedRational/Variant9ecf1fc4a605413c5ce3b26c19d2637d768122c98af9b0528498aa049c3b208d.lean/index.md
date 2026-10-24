# Verification target: GRWTSK.Analysis.ComplexAnalysis.FactorizedRational.Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbe66c7dd187061a3d6beccaad0ace845f6a120a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbe66c7dd187061a3d6beccaad0ace845f6a120a`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Meromorphic.Divisor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.NormalForm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mulSupport](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/declarations/mulsupport--f913962fb669afab089094da.md) | 54 | `result-track:f913962fb669afab089094da940ba67128216450cbb13ab3caf78291d44507fc` |
| 2 | `lemma` | [finprod_eq_fun](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/declarations/finprod-eq-fun--b65b94ba2a0e9a15cb686a1b.md) | 69 | `result-track:b65b94ba2a0e9a15cb686a1b4acffe9188ed26565d18f13f247cacc5cf169534` |
| 3 | `theorem` | [analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/declarations/analyticat--5059fde5cb6597f798559022.md) | 83 | `result-track:5059fde5cb6597f798559022ddfcde317210daa9c0bcf1816869b8d06935e013` |
| 4 | `theorem` | [ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/declarations/ne-zero--27c9bbdb602f14a1868dbc4e.md) | 96 | `result-track:27c9bbdb602f14a1868dbc4ee45a390b3826ac3951d2f8f4e8b9cf9733815bb3` |
| 5 | `lemma` | [extractFactor](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/declarations/extractfactor--731a71351a801372ac61dbbe.md) | 109 | `result-track:731a71351a801372ac61dbbe5e75278d97a3bd98cff114d115a01b049e784d56` |
| 6 | `theorem` | [meromorphicNFOn_univ](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/declarations/meromorphicnfon-univ--454c9fb128edfc142480eaef.md) | 128 | `result-track:454c9fb128edfc142480eaef2466fe1538e79c5365db017f7af1ef27808085da` |
| 7 | `theorem` | [meromorphicNFOn](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/declarations/meromorphicnfon--9da59b86a56cfa25f52acbb5.md) | 144 | `result-track:9da59b86a56cfa25f52acbb510fe1fbc75d4918389c31367c02fbb1b8a30ce66` |
| 8 | `theorem` | [meromorphicOrderAt_eq](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/declarations/meromorphicorderat-eq--5497397dffe944f71cb7ea71.md) | 154 | `result-track:5497397dffe944f71cb7ea7106fac1fcc5026a6bb932bf7b074d53c1a37a8b9d` |
| 9 | `theorem` | [meromorphicOrderAt_ne_top](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/declarations/meromorphicorderat-ne-top--bf69ee2edd982c250a3cf459.md) | 169 | `result-track:bf69ee2edd982c250a3cf459a374f6a9fd9453c4375dee4b26690010989948fb` |
| 10 | `theorem` | [divisor](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/declarations/divisor--81f31f5c5d1a461b76bb6f67.md) | 183 | `result-track:81f31f5c5d1a461b76bb6f6725148cd8acf179b5e1958f11da323f8d61fae409` |
| 11 | `theorem` | [MeromorphicOn.extract_zeros_poles](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/declarations/meromorphicon-extract-zeros-poles--2a82baf8c6d5376c0218d105.md) | 211 | `result-track:2a82baf8c6d5376c0218d105ec7d9bc53a178dae4253ab2a37bfc7c7eea22887` |
| 12 | `theorem` | [MeromorphicOn.extract_zeros_poles_log](../../../../../mathematics/Analysis/ComplexAnalysis/FactorizedRational/Variant9ecf1fc4a605413c5ce3b26c19d2637d768122c98af9b0528498aa049c3b208d.lean/declarations/meromorphicon-extract-zeros-poles-log--d6c3eac243a8346e42a1bd09.md) | 253 | `result-track:d6c3eac243a8346e42a1bd0943a89ffebeed6e87c9a0b148a7fd42b4b0070eb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
