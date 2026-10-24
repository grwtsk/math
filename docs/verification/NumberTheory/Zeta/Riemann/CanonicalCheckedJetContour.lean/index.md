# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalCheckedJetContour

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c25f299e9a617c1ac7c8c971da257e16e3c06a01",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c25f299e9a617c1ac7c8c971da257e16e3c06a01`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalCheckedPoleJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CheckedJetContour`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedJetContour.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [packets](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean/declarations/packets--dc1dc3554f10eac0a09ee41f.md) | 25 | `declaration-track:dc1dc3554f10eac0a09ee41fd1c694bff03678e0c7f563b36a688909d4eff8b1` |
| 2 | `theorem` | [packets_length](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean/declarations/packets-length--0ae21c2a0027803bce71b4de.md) | 28 | `result-track:0ae21c2a0027803bce71b4dec1048cce8d8c855a11ca6a42f1d1c2b3b316885e` |
| 3 | `theorem` | [packetAt_packets](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean/declarations/packetat-packets--4330a62c01768ae3427ca89d.md) | 32 | `result-track:4330a62c01768ae3427ca89df78016bc70ddef3058752e487c1986f9437fbd9a` |
| 4 | `theorem` | [edgeCheck_packets](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean/declarations/edgecheck-packets--b492e06ea62997273ff9dd61.md) | 41 | `result-track:b492e06ea62997273ff9dd611bcc4c950f9019a9dd111564d7181a4e582586f5` |
| 5 | `theorem` | [check_packets](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean/declarations/check-packets--ec9e1122e5ef278767258183.md) | 53 | `result-track:ec9e1122e5ef27876725818306dd1b50eeda17a237583444e46225f5e8b524ca` |
| 6 | `theorem` | [evaluate_packets](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean/declarations/evaluate-packets--fa28e8c5a989dbd698a53877.md) | 66 | `result-track:fa28e8c5a989dbd698a53877f6499a43531d57683564d27a63e6de0329b8846e` |
| 7 | `theorem` | [evaluate_packets_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean/declarations/evaluate-packets-eq--c5d1e6a8167add17bec7e20c.md) | 73 | `result-track:c5d1e6a8167add17bec7e20cfae058f891f4536553b8db0111673efdabc74ba7` |
| 8 | `theorem` | [evaluateRectangle_packets_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean/declarations/evaluaterectangle-packets-eq--0671f62759216bdd7481cceb.md) | 86 | `result-track:0671f62759216bdd7481ccebbc92b4f508a346cde172858209a4676f762730a6` |
| 9 | `theorem` | [count_eq_of_packets](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean/declarations/count-eq-of-packets--e48c15232f24b83b4f206886.md) | 98 | `result-track:e48c15232f24b83b4f206886cce170058aef813190646d961bf2c164b917a216` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
