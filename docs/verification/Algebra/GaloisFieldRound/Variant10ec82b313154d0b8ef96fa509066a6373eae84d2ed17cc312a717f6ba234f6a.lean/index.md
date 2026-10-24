# Verification target: GRWTSK.Algebra.GaloisFieldRound.Variant10ec82b313154d0b8ef96fa509066a6373eae84d2ed17cc312a717f6ba234f6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7656cca7e856eb663c11f77ab18d89f595d95fc1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaloisFieldRound/Variant10ec82b313154d0b8ef96fa509066a6373eae84d2ed17cc312a717f6ba234f6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaloisFieldRound/Variant10ec82b313154d0b8ef96fa509066a6373eae84d2ed17cc312a717f6ba234f6a.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaloisFieldRound/Variant10ec82b313154d0b8ef96fa509066a6373eae84d2ed17cc312a717f6ba234f6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7656cca7e856eb663c11f77ab18d89f595d95fc1`.

Source path: `GRWTSK/Algebra/GaloisFieldRound/Variant10ec82b313154d0b8ef96fa509066a6373eae84d2ed17cc312a717f6ba234f6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaloisFieldRound/Variant10ec82b313154d0b8ef96fa509066a6373eae84d2ed17cc312a717f6ba234f6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.GaloisField` — import line 6; external provider; requires a separately pinned dependency.
- `BinaryMatrix.FiniteFieldRound` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bitCode](../../../../mathematics/Algebra/GaloisFieldRound/Variant10ec82b313154d0b8ef96fa509066a6373eae84d2ed17cc312a717f6ba234f6a.lean/declarations/bitcode--50270569195735628ef06f97.md) | 39 | `declaration-track:50270569195735628ef06f97967743866d6e712f8fd143acac4ca0752140d77a` |
| 2 | `theorem` | [bitCode_add](../../../../mathematics/Algebra/GaloisFieldRound/Variant10ec82b313154d0b8ef96fa509066a6373eae84d2ed17cc312a717f6ba234f6a.lean/declarations/bitcode-add--e8fb377b89d31165016d4068.md) | 48 | `result-track:e8fb377b89d31165016d40681d1968692c5bf96408918ed882ef4be2eadbbbf6` |
| 3 | `def` | [transportToMatrix](../../../../mathematics/Algebra/GaloisFieldRound/Variant10ec82b313154d0b8ef96fa509066a6373eae84d2ed17cc312a717f6ba234f6a.lean/declarations/transporttomatrix--0a7adbd313d72a8d4795890d.md) | 70 | `declaration-track:0a7adbd313d72a8d4795890d3ae43beaa09dce88513bcc5b9f5efc78e598877c` |
| 4 | `theorem` | [flatten_transportToMatrix](../../../../mathematics/Algebra/GaloisFieldRound/Variant10ec82b313154d0b8ef96fa509066a6373eae84d2ed17cc312a717f6ba234f6a.lean/declarations/flatten-transporttomatrix--33d5d5987bf658dec845e2aa.md) | 80 | `result-track:33d5d5987bf658dec845e2aac1562517c7211a73d7c90842c029366c3b096bdd` |
| 5 | `def` | [encodeFieldRound](../../../../mathematics/Algebra/GaloisFieldRound/Variant10ec82b313154d0b8ef96fa509066a6373eae84d2ed17cc312a717f6ba234f6a.lean/declarations/encodefieldround--7524399cc6d7770061d0d394.md) | 91 | `declaration-track:7524399cc6d7770061d0d39419bd82bf9807d1da4afcf73241f4fb21097b283f` |
| 6 | `theorem` | [encodeFieldRound_bijective](../../../../mathematics/Algebra/GaloisFieldRound/Variant10ec82b313154d0b8ef96fa509066a6373eae84d2ed17cc312a717f6ba234f6a.lean/declarations/encodefieldround-bijective--d3674b46a8228828d1120778.md) | 101 | `result-track:d3674b46a8228828d1120778a2fb5d803e5154f792f7fc1f1baedde293f79f4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
