# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CausalQuantizer.Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef5dab6a79d1ae2d4fb99069c010c17deb50831c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef5dab6a79d1ae2d4fb99069c010c17deb50831c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.QuantizerTower` — import line 1; external provider; requires a separately pinned dependency.
- `BinaryMatrix.Quantization` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quantizerIdentitySystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean/declarations/quantizeridentitysystem--300acbd4eb2c79afca7f9827.md) | 21 | `declaration-track:300acbd4eb2c79afca7f98271981537740b4847d4e2182c5b966258e65b22ab6` |
| 2 | `theorem` | [quantizerIdentitySystem_run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean/declarations/quantizeridentitysystem-run--366bf6c59d5fb4b53cde874c.md) | 30 | `result-track:366bf6c59d5fb4b53cde874c7feb2c45bde899b5e52ea75bfdb49138e26138ae` |
| 3 | `theorem` | [causalEquivalent_identity_iff_indistinguishable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean/declarations/causalequivalent-identity-iff-indistinguishable--5f6c83dfe44cf064c8ba2d1a.md) | 43 | `result-track:5f6c83dfe44cf064c8ba2d1a9dbcb0ea0f3e1934bc8cd8b9392bf4e9e8c89774` |
| 4 | `def` | [identityCausalStateEquivEffectiveState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant8bb738f7e0b97a6b226602d20ea2bfc67ea3da18fc1910343266772e6a79b8f6.lean/declarations/identitycausalstateequiveffectivestate--931bd0a9b98130bb9823d996.md) | 59 | `declaration-track:931bd0a9b98130bb9823d99619b66af931c5840d229f3e052a9eb0e2f4cdbf92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
