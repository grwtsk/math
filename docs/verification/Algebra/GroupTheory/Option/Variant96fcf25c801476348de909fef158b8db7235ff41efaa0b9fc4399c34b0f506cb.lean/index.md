# Verification target: GRWTSK.Algebra.GroupTheory.Option.Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30263e35c66fb828dd5e89cb7184579a32b5416e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30263e35c66fb828dd5e89cb7184579a32b5416e`.

Source path: `GRWTSK/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean/declarations/instance--8ca26355472ca9f4ea6666e5.md) | 40 | `declaration-track:8ca26355472ca9f4ea6666e53a0453aa518132cb98aba7fe34e31ef53643337c` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean/declarations/smul-def--efd08a510a7a43016e83575b.md) | 44 | `result-track:efd08a510a7a43016e83575b4b102e4beb9cf1da1677f69b442830b36b5f2395` |
| 3 | `theorem` | [smul_none](../../../../../mathematics/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean/declarations/smul-none--2d41eb00e746115241fa060c.md) | 48 | `result-track:2d41eb00e746115241fa060c7b6a5bf21a1e8eecfdc3be229f95bc86257b32bf` |
| 4 | `theorem` | [smul_some](../../../../../mathematics/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean/declarations/smul-some--9d6a29dedb8fae41a06c894a.md) | 52 | `result-track:9d6a29dedb8fae41a06c894a7ed03c1f662ade9b62a26faf9c912af4f70f95f7` |
| 5 | `instance` | [instIsScalarTowerOfSMul](../../../../../mathematics/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean/declarations/instisscalartowerofsmul--efa95a459f668c0197feeea8.md) | 56 | `declaration-track:efa95a459f668c0197feeea8a22df0461bd8463e963f38034587d9ebeb699a27` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean/declarations/instance--f667551f24a4d253e95af72c.md) | 62 | `declaration-track:f667551f24a4d253e95af72cf119e546a5c2196d861a7ddf89b72232166e2116` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean/declarations/instance--f9c1676d588897f34482e5d1.md) | 66 | `declaration-track:f9c1676d588897f34482e5d1f9b07872c02e721990a75a76e07c48616e7c5835` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean/declarations/instance--36b3b048f2e2b47aa560496a.md) | 72 | `declaration-track:36b3b048f2e2b47aa560496a2edaa904862d70dfd397e42e718c7a9e7f6b769f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Option/Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb.lean/declarations/instance--30555e1e23b0a07faf3e08d2.md) | 77 | `declaration-track:30555e1e23b0a07faf3e08d212baf1df67358e623452e1ad88df830b91c857f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
