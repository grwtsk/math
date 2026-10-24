# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CausalQuantizer.Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18f532633ab1cf2128113476c4c679f0a3228d0d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18f532633ab1cf2128113476c4c679f0a3228d0d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.QuantizerTower` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.Quantization.Core` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quantizerIdentitySystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556.lean/declarations/quantizeridentitysystem--1205f1dc2632ab65c64b1fc9.md) | 21 | `declaration-track:1205f1dc2632ab65c64b1fc9725377dd6211d6ac8d0a99e2973dbff1d682043e` |
| 2 | `theorem` | [quantizerIdentitySystem_run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556.lean/declarations/quantizeridentitysystem-run--87f5b3c9797b2f2108db9ec5.md) | 30 | `result-track:87f5b3c9797b2f2108db9ec53e973b0d20d235845fe4d4974c2a378a04e65d92` |
| 3 | `theorem` | [causalEquivalent_identity_iff_indistinguishable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556.lean/declarations/causalequivalent-identity-iff-indistinguishable--60beb993fbd1335fca7e3bf4.md) | 43 | `result-track:60beb993fbd1335fca7e3bf47e9639bc30985e191b2ee3a6bf4d7e6e0466b8bf` |
| 4 | `def` | [identityCausalStateEquivEffectiveState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556.lean/declarations/identitycausalstateequiveffectivestate--87010b427f66da464ae76363.md) | 59 | `declaration-track:87010b427f66da464ae76363fa082d0ec66c19223e0088cc38fd582bae5d4a69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
