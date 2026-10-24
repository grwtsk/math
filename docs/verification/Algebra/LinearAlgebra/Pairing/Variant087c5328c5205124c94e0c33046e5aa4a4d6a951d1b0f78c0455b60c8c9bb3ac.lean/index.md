# Verification target: GRWTSK.Algebra.LinearAlgebra.Pairing.Variant087c5328c5205124c94e0c33046e5aa4a4d6a951d1b0f78c0455b60c8c9bb3ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68385838843a3e2e66d202f86308f3b25b15ee9b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pairing/Variant087c5328c5205124c94e0c33046e5aa4a4d6a951d1b0f78c0455b60c8c9bb3ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant087c5328c5205124c94e0c33046e5aa4a4d6a951d1b0f78c0455b60c8c9bb3ac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant087c5328c5205124c94e0c33046e5aa4a4d6a951d1b0f78c0455b60c8c9bb3ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68385838843a3e2e66d202f86308f3b25b15ee9b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pairing/Variant087c5328c5205124c94e0c33046e5aa4a4d6a951d1b0f78c0455b60c8c9bb3ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pairing/Variant087c5328c5205124c94e0c33046e5aa4a4d6a951d1b0f78c0455b60c8c9bb3ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorPower.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multilinearMapToDual](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant087c5328c5205124c94e0c33046e5aa4a4d6a951d1b0f78c0455b60c8c9bb3ac.lean/declarations/multilinearmaptodual--41d2d89aac212be53626804f.md) | 37 | `declaration-track:41d2d89aac212be53626804fad5e4d940d504a7d9adbe5340a293e00cd5dcc1b` |
| 2 | `theorem` | [multilinearMapToDual_apply_tprod](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant087c5328c5205124c94e0c33046e5aa4a4d6a951d1b0f78c0455b60c8c9bb3ac.lean/declarations/multilinearmaptodual-apply-tprod--8779b7685895ee8deb817c08.md) | 64 | `result-track:8779b7685895ee8deb817c08f14b8b151e9b384b35146b79b4d0143cc7e7cded` |
| 3 | `def` | [pairingDual](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant087c5328c5205124c94e0c33046e5aa4a4d6a951d1b0f78c0455b60c8c9bb3ac.lean/declarations/pairingdual--2fbfecd63de877401a73de5b.md) | 69 | `declaration-track:2fbfecd63de877401a73de5b97c237b5a6ca823c98afdfadc85cf3a7ea0418ee` |
| 4 | `lemma` | [pairingDual_tprod_tprod](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant087c5328c5205124c94e0c33046e5aa4a4d6a951d1b0f78c0455b60c8c9bb3ac.lean/declarations/pairingdual-tprod-tprod--73148df74048c8038e11899d.md) | 75 | `result-track:73148df74048c8038e11899d76644238a4dc70db0041f318eac8e29c80603d8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
