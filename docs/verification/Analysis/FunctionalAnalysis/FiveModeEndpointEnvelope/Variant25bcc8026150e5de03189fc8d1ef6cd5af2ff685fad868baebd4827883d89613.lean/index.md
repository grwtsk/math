# Verification target: GRWTSK.Analysis.FunctionalAnalysis.FiveModeEndpointEnvelope.Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99466a3e5461282fdeb9d1e5e7753901ee0701a5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99466a3e5461282fdeb9d1e5e7753901ee0701a5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Jensen` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointEnvelope](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/declarations/endpointenvelope--30533314eb7179c92f6f5924.md) | 26 | `declaration-track:30533314eb7179c92f6f5924201bb657d0136faf34b7ad21deba37831d0ef176` |
| 2 | `def` | [endpointEnvelopeFirst](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/declarations/endpointenvelopefirst--585c0e952ed309b9bfc7ecf3.md) | 27 | `declaration-track:585c0e952ed309b9bfc7ecf3f794dab833f067b116f3c7b251c2bf422f3bce77` |
| 3 | `def` | [endpointEnvelopeSecond](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/declarations/endpointenvelopesecond--e8b4bd979666237fb59838d5.md) | 28 | `declaration-track:e8b4bd979666237fb59838d5ba046f900f7a5886c5409501de5b008f0db74354` |
| 4 | `theorem` | [endpointEnvelope_hasDerivAt](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/declarations/endpointenvelope-hasderivat--91079065b6b43a5fb30fd397.md) | 31 | `result-track:91079065b6b43a5fb30fd39705744714bf220dd99186a040f8ee2f1cc065a50f` |
| 5 | `theorem` | [endpointEnvelopeFirst_hasDerivAt](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/declarations/endpointenvelopefirst-hasderivat--23e4199c20a6dab90576ebba.md) | 40 | `result-track:23e4199c20a6dab90576ebba672100e286fb7bce7052f1866d4edfc08b4aead8` |
| 6 | `theorem` | [endpointEnvelope_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/declarations/endpointenvelope-convex--088b69a92b8968453b8e2d58.md) | 49 | `result-track:088b69a92b8968453b8e2d584e421602333b180aa5e2ff71cada9d0aff921ede` |
| 7 | `theorem` | [endpointEnvelope_le_endpoint_max](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/declarations/endpointenvelope-le-endpoint-max--b04b712ad8dcc7c88ecc4ec6.md) | 66 | `result-track:b04b712ad8dcc7c88ecc4ec65135592387bab147d719e4986293bc49547c1847` |
| 8 | `theorem` | [endpointEnvelope_le_rational_max](../../../../../mathematics/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/declarations/endpointenvelope-le-rational-max--942c4681c80edaf83e5af6b8.md) | 71 | `result-track:942c4681c80edaf83e5af6b88be29f636eec5dddc1244718bae318231befd466` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
