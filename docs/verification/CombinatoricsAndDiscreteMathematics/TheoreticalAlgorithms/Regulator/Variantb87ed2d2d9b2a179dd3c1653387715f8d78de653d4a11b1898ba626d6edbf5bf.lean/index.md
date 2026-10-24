# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Regulator.Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79f92e6ded6b351608553ab3cd412bceef929b03",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79f92e6ded6b351608553ab3cd412bceef929b03`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Heights` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RegulatorData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean/declarations/regulatordata--ac981458870274b3dd92791f.md) | 33 | `declaration-track:ac981458870274b3dd92791f0131592688030da03730b824a0855f7e7bd379ea` |
| 2 | `structure` | [RegulatorCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean/declarations/regulatorcertificate--dcfe9852f3cbcaeb1140a197.md) | 47 | `declaration-track:dcfe9852f3cbcaeb1140a197e1cb54bdecbe6f454fc6c62b2c626a5c84eebb25` |
| 3 | `def` | [RegulatorCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean/declarations/regulatorcertificate-certifiedforbsd--4b3f99768b32f532f562c18d.md) | 70 | `declaration-track:4b3f99768b32f532f562c18d950afce73836dcb0ce694f4fdb1ddf51dc4b1db9` |
| 4 | `theorem` | [RegulatorCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean/declarations/regulatorcertificate-certifiedforbsd-of-fields--38acd57a64711d8ba63fd739.md) | 85 | `result-track:38acd57a64711d8ba63fd739157b3debb3be45871625dcf8f5b6891e89a2794c` |
| 5 | `structure` | [RegulatorCanonicalHeightCompatibilityCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean/declarations/regulatorcanonicalheightcompatibilitycertificate--c890a60860df7f6a0f11587f.md) | 115 | `declaration-track:c890a60860df7f6a0f11587f8c3cf5a12d6a36ab7103d41358d13d38dc0b71f4` |
| 6 | `def` | [RegulatorCanonicalHeightCompatibilityCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean/declarations/regulatorcanonicalheightcompatibilitycertificate-certifiedforbsd--3e45d53339b381baa4dc3e69.md) | 151 | `declaration-track:3e45d53339b381baa4dc3e695b22135d33d0b3e18e351283ecb25c9bc7797fc7` |
| 7 | `theorem` | [RegulatorCanonicalHeightCompatibilityCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean/declarations/regulatorcanonicalheightcompatibilitycertificate-certifiedforbsd-of-fiel--7772d80ef4382ce71fc009e9.md) | 171 | `result-track:7772d80ef4382ce71fc009e9ac39156a48f5fe8cf32a15045764098e04e0f9d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
