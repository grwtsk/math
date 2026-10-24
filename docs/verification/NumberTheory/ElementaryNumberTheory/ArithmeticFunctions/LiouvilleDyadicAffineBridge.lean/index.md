# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleDyadicAffineBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "413654e13fbf04087bd6aef6b1bf1621aee01eb4",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `413654e13fbf04087bd6aef6b1bf1621aee01eb4`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Liouville` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [liouville_at_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/liouville-at-two--77be04d7ca700052c7d88142.md) | 40 | `result-track:77be04d7ca700052c7d8814282bc9e51c4e855debcf498d55a9bebec0c49b102` |
| 2 | `theorem` | [liouville_twice](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/liouville-twice--348f5425a37a1d54ede8d838.md) | 48 | `result-track:348f5425a37a1d54ede8d83878aa26afe0b4dee89231c45fb8067c36a01e9ad3` |
| 3 | `theorem` | [liouville_positive_square](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/liouville-positive-square--d39b723cd68220b2283fc4b0.md) | 56 | `result-track:d39b723cd68220b2283fc4b09f186fe66c68127329ee350bab2d14fb1b35df2e` |
| 4 | `theorem` | [liouville_proportional_product](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/liouville-proportional-product--a049c863952e8a119d1f878c.md) | 70 | `result-track:a049c863952e8a119d1f878c0507dd5939eec0d2432ff2f37a385ddfd35b17b3` |
| 5 | `theorem` | [liouville_proportional_pair_term](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/liouville-proportional-pair-term--d115ab852058b0d1ccb3d62a.md) | 84 | `result-track:d115ab852058b0d1ccb3d62a7cf0ae8fa4d5d95da4e222d9c645629c8293d2fc` |
| 6 | `theorem` | [liouville_proportional_prefix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/liouville-proportional-prefix--9996e42b70ddeae40f18ec70.md) | 90 | `result-track:9996e42b70ddeae40f18ec704f6ea25242072a621114b6dda3e1773ca41f085a` |
| 7 | `def` | [proportionalLiouvilleMean](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/proportionalliouvillemean--bb9ea9d039c6ffe6320057a9.md) | 103 | `declaration-track:bb9ea9d039c6ffe6320057a9b8d4f6c08b94f7fc07252b9bac84b773257ff99b` |
| 8 | `theorem` | [proportionalLiouvilleMean_eq_neg_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/proportionalliouvillemean-eq-neg-one--c316b2b6a35ef203577ae652.md) | 110 | `result-track:c316b2b6a35ef203577ae652f003282d4a9880e4680c5a6366a891b2edfa9e94` |
| 9 | `theorem` | [proportional_bound_below_one_impossible](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/proportional-bound-below-one-impossible--745d300962cecf931bf32636.md) | 127 | `result-track:745d300962cecf931bf3263688254661198c00073e830e49f543b85aa3ee2062` |
| 10 | `def` | [adjacentLiouvilleTerm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/adjacentliouvilleterm--2ad246e8587d8cacb17b0346.md) | 134 | `declaration-track:2ad246e8587d8cacb17b0346d537fadebbb523006ff07a2e81689ea4487caea0` |
| 11 | `def` | [dyadicAffineTerm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/dyadicaffineterm--69be525896d4447c73368efd.md) | 140 | `declaration-track:69be525896d4447c73368efda0eaeb3f9ada576f848624606b7199a948c3ee35` |
| 12 | `theorem` | [adjacentLiouville_pair_dyadic](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/adjacentliouville-pair-dyadic--5fb685f100dbad36819f9213.md) | 147 | `result-track:5fb685f100dbad36819f9213d8ace9643dba1eb2d74bf9d7183e40586990ec6a` |
| 13 | `theorem` | [sum_even_odd_reindex](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/sum-even-odd-reindex--0ae5233fde767d38edc0e4a0.md) | 160 | `result-track:0ae5233fde767d38edc0e4a059743898c49d3a8d0fe2234fc35d82bde16a7762` |
| 14 | `theorem` | [adjacentLiouville_prefix_dyadic](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/adjacentliouville-prefix-dyadic--bfa9460b662a8e5660af53d9.md) | 185 | `result-track:bfa9460b662a8e5660af53d959040a5bdd61f4ebc7c33bf1fee4f763c337b417` |
| 15 | `def` | [leftDyadicAffineSum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/leftdyadicaffinesum--394fa9df5e9427540bae43f6.md) | 194 | `declaration-track:394fa9df5e9427540bae43f6f530d61b4d066885fbf781a109ba76f597ebfee1` |
| 16 | `def` | [rightDyadicAffineSum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/rightdyadicaffinesum--69b619565550bc11440d2a28.md) | 199 | `declaration-track:69b619565550bc11440d2a28ef4994354f42e31391d651f91bdee648bea8376d` |
| 17 | `theorem` | [adjacentLiouville_prefix_affine](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/adjacentliouville-prefix-affine--870a7df5e822144cfae07b87.md) | 206 | `result-track:870a7df5e822144cfae07b8776e3238a53bfbbbd68d86044b58f2e677ea6e904` |
| 18 | `theorem` | [adjacentLiouville_abs_le_of_affine_bounds](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/adjacentliouville-abs-le-of-affine-bounds--a0258382b1f2fcb572c07bfe.md) | 220 | `result-track:a0258382b1f2fcb572c07bfe551df631a11a4f34ecbba51a0128ef678c7b77f1` |
| 19 | `theorem` | [dyadicAffine_determinant_controls](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/declarations/dyadicaffine-determinant-controls--ab9fb4cb0c865374b0578d60.md) | 233 | `result-track:ab9fb4cb0c865374b0578d60ddadf4efc18741296eaee9b3d1a9f4048ad6008d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
