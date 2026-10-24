# Verification target: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyRestrictedObservability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f3349c77d863f9fdc1dc66abcd013a32a2597c2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f3349c77d863f9fdc1dc66abcd013a32a2597c2`.

Source path: `GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyTerminalColumnObstruction`](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CanonicalFourFamilyRealPacket](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalfourfamilyrealpacket--c1d6cfabb07699f3d1b020dd.md) | 46 | `declaration-track:c1d6cfabb07699f3d1b020dd321af5e55df0789b574d56667e9f99faf5892141` |
| 2 | `def` | [canonicalFourFamilyTerminalErase](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalfourfamilyterminalerase--fdb9c381cae3ea690db00db1.md) | 50 | `declaration-track:fdb9c381cae3ea690db00db1a7d53becbc3aec1c56772751babc7e587a795807` |
| 3 | `theorem` | [canonicalFourFamilyTerminalErase_idempotent](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalfourfamilyterminalerase-idempotent--ffb05b18279173d82948be74.md) | 55 | `result-track:ffb05b18279173d82948be74e10aba4c9b3e1783a7e1bcee08734fc93d8d99a9` |
| 4 | `theorem` | [canonicalFourFamilyGreenMatrixApply_eq_terminalErase](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalfourfamilygreenmatrixapply-eq-terminalerase--651706ee3496265818f25c94.md) | 67 | `result-track:651706ee3496265818f25c948f788302613c7f326ef0576a03457392e3797949` |
| 5 | `theorem` | [canonicalFourFamilyWindowReadout_eq_terminalErase](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalfourfamilywindowreadout-eq-terminalerase--10ab7bc1d7ca566be30d3c40.md) | 87 | `result-track:10ab7bc1d7ca566be30d3c40fdd6ec361774d328b7adc90dc438af6767fce20b` |
| 6 | `theorem` | [canonicalFourFamilyWindowOutputEnergy_eq_terminalErase](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalfourfamilywindowoutputenergy-eq-terminalerase--9460d9610d6126f6ee2c1562.md) | 96 | `result-track:9460d9610d6126f6ee2c1562b7d8dd4848060f84ce0bd9057bd7c9e7f907d8d5` |
| 7 | `theorem` | [terminalErase_injectiveOn_of_observable_injectiveOn](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/terminalerase-injectiveon-of-observable-injectiveon--672fa83619aff7c976935d66.md) | 109 | `result-track:672fa83619aff7c976935d66796da06a0285be429a40769a263217f775973503` |
| 8 | `def` | [canonicalFourFamilyCenterSupport](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalfourfamilycentersupport--49708f99ffd3359581363f82.md) | 128 | `declaration-track:49708f99ffd3359581363f8285c01269b1441fece593eb4b08453597455328af` |
| 9 | `def` | [CanonicalFourFamilySupportAdmissible](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalfourfamilysupportadmissible--824443e0dc2f2fbea27d3d13.md) | 138 | `declaration-track:824443e0dc2f2fbea27d3d1349f08ab22c0c253cc78f09dcbea65b49502e7aeb` |
| 10 | `def` | [CanonicalFourFamilySupportAdmissibleSpace](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalfourfamilysupportadmissiblespace--f82b17b445c578852217ad85.md) | 142 | `declaration-track:f82b17b445c578852217ad85dc9ffe70f00af0e81244c4384a8d31de663f5aa8` |
| 11 | `theorem` | [canonicalTerminalAnchor_center_has_authentic_support](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalterminalanchor-center-has-authentic-support--0d19f70ca7c810939975bc51.md) | 148 | `result-track:0d19f70ca7c810939975bc51568baf0deabcd0cac093ea29ecc1bbeb1c6afce7` |
| 12 | `theorem` | [canonicalFourFamilyTerminalDelta_supportAdmissible](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalfourfamilyterminaldelta-supportadmissible--8c03a5e7dd0b00961c3691a1.md) | 169 | `result-track:8c03a5e7dd0b00961c3691a1a784936f9a79eef96395f6afb0d290d9908037e3` |
| 13 | `def` | [HasCanonicalFourFamilyRestrictedLowerFrame](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/hascanonicalfourfamilyrestrictedlowerframe--33ee5d1bab8d3fafff017b7e.md) | 186 | `declaration-track:33ee5d1bab8d3fafff017b7e1595c1a3b4df622b8e10a828b94221ae88422a54` |
| 14 | `theorem` | [not_restrictedLowerFrame_of_terminalDelta_mem](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/not-restrictedlowerframe-of-terminaldelta-mem--6ff422c888124d53c166e839.md) | 194 | `result-track:6ff422c888124d53c166e839ed7aebe7858484990fdb8ea437447a94189bc567` |
| 15 | `theorem` | [not_hasCanonicalFourFamilySupportOnlyLowerFrame](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/not-hascanonicalfourfamilysupportonlylowerframe--187dabf4b20decf5e4b62b01.md) | 211 | `result-track:187dabf4b20decf5e4b62b01a6b93c2f565066a89b5c8c3b2af39b645f6f256e` |
| 16 | `def` | [CanonicalFourFamilySingleArithmeticConfiguration](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalfourfamilysinglearithmeticconfiguration--1dd9d0c3c0be85886e6e5b1b.md) | 221 | `declaration-track:1dd9d0c3c0be85886e6e5b1beccda65093458fa02489e1d7bfcdf1a79e2d28b2` |
| 17 | `def` | [CanonicalFourFamilySingleArithmeticDifferenceSet](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalfourfamilysinglearithmeticdifferenceset--c270456ba4b425d62ee5939e.md) | 227 | `declaration-track:c270456ba4b425d62ee5939e15bcc7ebcfb8bea0ecd497cfed619bf8bf31f9f0` |
| 18 | `theorem` | [canonicalSingleArithmeticDifferenceSet_eq_zero](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/declarations/canonicalsinglearithmeticdifferenceset-eq-zero--b0f6e21c47d72dfd783b170f.md) | 234 | `result-track:b0f6e21c47d72dfd783b170f9ed54188456ed149ae9b9d38ad9aba7f45455492` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
