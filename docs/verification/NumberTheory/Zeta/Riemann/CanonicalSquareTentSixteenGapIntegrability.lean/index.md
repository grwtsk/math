# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenGapIntegrability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c822176ce651c91abf23b2860e8120566681d346",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenGapIntegrability.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenGapIntegrability.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenGapIntegrability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c822176ce651c91abf23b2860e8120566681d346`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenGapIntegrability.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenGapIntegrability.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenPivot`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenPivot.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stageThreeSixteenGap_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenGapIntegrability.lean/declarations/stagethreesixteengap-nonnegative--542123a738ef7a1515376c7b.md) | 27 | `result-track:542123a738ef7a1515376c7b02f6722420501653e6cddec82d5a182a3eb495bc` |
| 2 | `theorem` | [stageFourSixteenGap_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenGapIntegrability.lean/declarations/stagefoursixteengap-nonnegative--d4e89ab142e00e0ab17ea0a9.md) | 50 | `result-track:d4e89ab142e00e0ab17ea0a98a150ce018072c105ab4e0d8e8577042f2f481bd` |
| 3 | `theorem` | [stageThreeSixteenGap_integrableOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenGapIntegrability.lean/declarations/stagethreesixteengap-integrableon--554e23fd5e627e0dc753232a.md) | 73 | `result-track:554e23fd5e627e0dc753232aca97d59b3072595a300a74c7070a77b898bf80aa` |
| 4 | `theorem` | [stageFourSixteenGap_integrableOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenGapIntegrability.lean/declarations/stagefoursixteengap-integrableon--2556495b04c4a4158d3291f2.md) | 79 | `result-track:2556495b04c4a4158d3291f20955d10239b6a5f01357a5aa657c1da2f78453f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
