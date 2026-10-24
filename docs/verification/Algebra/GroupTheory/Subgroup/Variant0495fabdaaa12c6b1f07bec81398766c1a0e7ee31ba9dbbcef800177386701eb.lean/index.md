# Verification target: GRWTSK.Algebra.GroupTheory.Subgroup.Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91145b33bac56ca001c6fc503e7ce15ec44b959d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91145b33bac56ca001c6fc503e7ce15ec44b959d`.

Source path: `GRWTSK/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [seminormedGroup](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/declarations/seminormedgroup--c90109a194bba9fdbb966c10.md) | 37 | `declaration-track:c90109a194bba9fdbb966c102bda79c6bf4cea8885ba2063f0fe1dd73d10e8e7` |
| 2 | `theorem` | [coe_norm](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/declarations/coe-norm--fbb5f40659b6671902002bc3.md) | 44 | `result-track:fbb5f40659b6671902002bc3dab8cacc40b7cb58047ad3306d669315b8e75dae` |
| 3 | `theorem` | [norm_coe](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/declarations/norm-coe--5903cae5755ba0b4fccd5627.md) | 55 | `result-track:5903cae5755ba0b4fccd56276826b2f418bd3859b4ee9090683c9f9a3bfd8fdd` |
| 4 | `instance` | [seminormedCommGroup](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/declarations/seminormedcommgroup--4e2cfff15ef43649156ba578.md) | 61 | `declaration-track:4e2cfff15ef43649156ba578e10f463bd3c67786afd749e2c0cec1f5b6787b11` |
| 5 | `instance` | [normedGroup](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/declarations/normedgroup--4298ead118bd8d76f5cb54c1.md) | 65 | `declaration-track:4298ead118bd8d76f5cb54c1e663e98d19d0ff1925031ddd3cb4220de7149b4f` |
| 6 | `instance` | [normedCommGroup](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/declarations/normedcommgroup--f30edbd7dce5ce45c1dd1b82.md) | 69 | `declaration-track:f30edbd7dce5ce45c1dd1b82a0afb7827d45928dbad74dc7ec1f634ff9e911e2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/declarations/instance--d7658c73285e39abc82d48f8.md) | 87 | `declaration-track:d7658c73285e39abc82d48f8f5d46d78946c12dbc0843f8fb079e9bd85462782` |
| 8 | `theorem` | [coe_norm](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/declarations/coe-norm--15cf4cd537b7667a217ed462.md) | 94 | `result-track:15cf4cd537b7667a217ed462ed5d86d887bc595fe8147db725c757e3ed8d3c4a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/declarations/instance--5e87bc4160254e8bb2d39c70.md) | 100 | `declaration-track:5e87bc4160254e8bb2d39c70823d28e63087af4a16d787a09932139a2aa9435c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/declarations/instance--e432d1403e7b3a37f586ece1.md) | 105 | `declaration-track:e432d1403e7b3a37f586ece138db9dae158cbb6ced3022cc0fd803264b0343d6` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb.lean/declarations/instance--737aa8a5d0aa5db757cfb181.md) | 110 | `declaration-track:737aa8a5d0aa5db757cfb181b862c3c7df0bc703cb534175a2478a326767eda0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
