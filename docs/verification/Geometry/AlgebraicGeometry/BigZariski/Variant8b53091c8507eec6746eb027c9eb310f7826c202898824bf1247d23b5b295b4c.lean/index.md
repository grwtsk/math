# Verification target: GRWTSK.Geometry.AlgebraicGeometry.BigZariski.Variant8b53091c8507eec6746eb027c9eb310f7826c202898824bf1247d23b5b295b4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf6adb593145f32bda1170bb397fa06032a99a34",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Variant8b53091c8507eec6746eb027c9eb310f7826c202898824bf1247d23b5b295b4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/BigZariski/Variant8b53091c8507eec6746eb027c9eb310f7826c202898824bf1247d23b5b295b4c.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/BigZariski/Variant8b53091c8507eec6746eb027c9eb310f7826c202898824bf1247d23b5b295b4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf6adb593145f32bda1170bb397fa06032a99a34`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Variant8b53091c8507eec6746eb027c9eb310f7826c202898824bf1247d23b5b295b4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/BigZariski/Variant8b53091c8507eec6746eb027c9eb310f7826c202898824bf1247d23b5b295b4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Sites.MorphismProperty` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Canonical` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zariskiPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/BigZariski/Variant8b53091c8507eec6746eb027c9eb310f7826c202898824bf1247d23b5b295b4c.lean/declarations/zariskipretopology--4b444d67ba8906aa0c76742d.md) | 46 | `declaration-track:4b444d67ba8906aa0c76742d13962eafd8d3479fc1514251e21d99d18f57e34c` |
| 2 | `abbrev` | [zariskiTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/BigZariski/Variant8b53091c8507eec6746eb027c9eb310f7826c202898824bf1247d23b5b295b4c.lean/declarations/zariskitopology--b3eb0e0d7491e5319a0e453b.md) | 50 | `declaration-track:b3eb0e0d7491e5319a0e453bf92c88d9942468391deff01d5bab7cae66b3a478` |
| 3 | `instance` | [subcanonical_zariskiTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/BigZariski/Variant8b53091c8507eec6746eb027c9eb310f7826c202898824bf1247d23b5b295b4c.lean/declarations/subcanonical-zariskitopology--0756114298051704d41c506e.md) | 53 | `declaration-track:0756114298051704d41c506e4dd811946226c3e6924962df93ce34a7fc48ff29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
