# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63ffcaaef2d8289ecd6b9d945bbf2b169b26da23",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63ffcaaef2d8289ecd6b9d945bbf2b169b26da23`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddIrreducible](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean/declarations/addirreducible--a6e0fbd283ded2e63007f55b.md) | 34 | `declaration-track:a6e0fbd283ded2e63007f55bddf57c250f5f50d8c535f309fd93ae315df110f0` |
| 2 | `structure` | [Irreducible](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean/declarations/irreducible--0495fbfd5c73dab30a2f4a72.md) | 48 | `declaration-track:0495fbfd5c73dab30a2f4a72f66d4150f4b1b458b09673b6f6b7735987bd6a65` |
| 3 | `lemma` | [irreducible_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean/declarations/irreducible-iff--b866e09696836234ec7b4af0.md) | 61 | `result-track:b866e09696836234ec7b4af005d4f0969f90f2954152051fa4b1cb11ed5dfe46` |
| 4 | `lemma` | [not_irreducible_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean/declarations/not-irreducible-one--a17f2abc0ed1a9714c6ba810.md) | 67 | `result-track:a17f2abc0ed1a9714c6ba8104329e3e60be84237922766878959ee1afedcaf15` |
| 5 | `lemma` | [Irreducible.ne_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean/declarations/irreducible-ne-one--92de2331c20f3ba8822d2af9.md) | 70 | `result-track:92de2331c20f3ba8822d2af934cc05f3cb7bb1488d83414ba2497b8c351e7d08` |
| 6 | `lemma` | [of_irreducible_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean/declarations/of-irreducible-mul--fbb5004ef64431efc6b28bb6.md) | 73 | `result-track:fbb5004ef64431efc6b28bb6b457cfb95b7eed87c565c493f42f51c72f00c1b1` |
| 7 | `lemma` | [irreducible_or_factor](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant46252496bb597b90b7fe250210f0aa5e29047e48d656d77880bac29beba9e30f.lean/declarations/irreducible-or-factor--5b96eb984c298c152066d65a.md) | 76 | `result-track:5b96eb984c298c152066d65aa54e15871f31eca231da7600201012bf05e382bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
