# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.State.Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82b8b85373e16c69b49d5ac0f60adb56260653bd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/State/Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/State/Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/State/Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82b8b85373e16c69b49d5ac0f60adb56260653bd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/State/Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/State/Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.Index` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TensorState](../../../../mathematics/FoundationsLogicAndTypeTheory/State/Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8.lean/declarations/tensorstate--8a8354cdf7f990d251e62fc8.md) | 25 | `declaration-track:8a8354cdf7f990d251e62fc8b044b1073dffcd858eaf941c36867b37434844d0` |
| 2 | `structure` | [SemanticTensorEncodingCertificate](../../../../mathematics/FoundationsLogicAndTypeTheory/State/Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8.lean/declarations/semantictensorencodingcertificate--a19869162e5061928ad53297.md) | 32 | `declaration-track:a19869162e5061928ad5329797d6feb247cea290c3ad1ed6885fcddc63631c63` |
| 3 | `theorem` | [SemanticTensorEncodingCertificate.recovers](../../../../mathematics/FoundationsLogicAndTypeTheory/State/Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8.lean/declarations/semantictensorencodingcertificate-recovers--ef32875f2fd3a94eceba18ca.md) | 54 | `result-track:ef32875f2fd3a94eceba18ca67521f5c51e2555e38ec17d12e2e79c7fe647825` |
| 4 | `structure` | [InjectiveSemanticTensorEncodingCertificate](../../../../mathematics/FoundationsLogicAndTypeTheory/State/Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8.lean/declarations/injectivesemantictensorencodingcertificate--d5f91535932bef07c499d3aa.md) | 67 | `declaration-track:d5f91535932bef07c499d3aa79544c63eedb498c3dd8d9c7434d2d61cec8c19c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
