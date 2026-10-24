# Verification target: GRWTSK.Algebra.LinearAlgebra.Extension.Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb9ac2caf5edb1add2f18336a0b390b88881a867",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Extension/Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Extension/Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Extension/Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb9ac2caf5edb1add2f18336a0b390b88881a867`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Extension/Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Extension/Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearPMap` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [step](../../../../../mathematics/Algebra/LinearAlgebra/Extension/Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351.lean/declarations/step--384850510c1e8d663eb005ae.md) | 69 | `result-track:384850510c1e8d663eb005ae19d20ce5ea9d50bcdb94cbdfbc956577a3ce83fa` |
| 2 | `theorem` | [exists_top](../../../../../mathematics/Algebra/LinearAlgebra/Extension/Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351.lean/declarations/exists-top--dcb3c8a45e5fb52a525e58a2.md) | 116 | `result-track:dcb3c8a45e5fb52a525e58a2307f042f05120da2bafb96197d6b87cbe0f0eaf8` |
| 3 | `theorem` | [riesz_extension](../../../../../mathematics/Algebra/LinearAlgebra/Extension/Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351.lean/declarations/riesz-extension--4c022d514aa7fd2b66ddf5bf.md) | 148 | `result-track:4c022d514aa7fd2b66ddf5bf1619daa09eb76e76bad8e5c4b87a3fab007c446a` |
| 4 | `theorem` | [exists_extension_of_le_sublinear](../../../../../mathematics/Algebra/LinearAlgebra/Extension/Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351.lean/declarations/exists-extension-of-le-sublinear--2456723debbd8fcdfd306503.md) | 162 | `result-track:2456723debbd8fcdfd3065037ec8b4befdc513991383bfbaa4c79466a01f9c1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
