# Verification target: GRWTSK.Algebra.LinearAlgebra.ModN.Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68fb3fe769c90a3d6e91ea8b6b920ac3f9e7a5ee",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68fb3fe769c90a3d6e91ea8b6b920ac3f9e7a5ee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Int` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.ZMod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Free` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ModN](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean/declarations/modn--53355345bd156b9483a292cd.md) | 22 | `declaration-track:53355345bd156b9483a292cd6c3ebcd6fbf885c4c73ea636c083da35ee1653a0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean/declarations/instance--2633f747a942afa156cbe61d.md) | 26 | `declaration-track:2633f747a942afa156cbe61d493a81936497c545f8e69bbaec00975d3184a1a9` |
| 3 | `def` | [liftEquiv](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean/declarations/liftequiv--3898ebc919257d5bf5c55026.md) | 30 | `declaration-track:3898ebc919257d5bf5c550260daa6634922218801d691f46fc08dcc40842738f` |
| 4 | `def` | [liftEquiv'](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean/declarations/liftequiv--527de333b77e80be02285ab3.md) | 47 | `declaration-track:527de333b77e80be02285ab3852b589d7d1263a59bf7c6fb61aae34bb8248daf` |
| 5 | `def` | [mkQ](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean/declarations/mkq--6e2ce390018c6c51a37f65f7.md) | 53 | `declaration-track:6e2ce390018c6c51a37f65f7bff1f74288999b895f4255995d55345795b1203c` |
| 6 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean/declarations/basis--3347be0ed37731ece9ff54ec.md) | 59 | `declaration-track:3347be0ed37731ece9ff54ec675e4dfaa4a3e585a908cabaa9b554d5c2817bd7` |
| 7 | `lemma` | [basis_apply_eq_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean/declarations/basis-apply-eq-mkq--2c4e4fb42331c767f2ebe126.md) | 90 | `result-track:2c4e4fb42331c767f2ebe126832818099ee249761c6c323f26a7e1395276c44a` |
| 8 | `instance` | [instModuleFinite](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean/declarations/instmodulefinite--5f1d0bdd385ad1ce9a51ff51.md) | 95 | `declaration-track:5f1d0bdd385ad1ce9a51ff51786bd4c2c78f178d6c28c09af7ef1977d50935e6` |
| 9 | `instance` | [instFinite](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean/declarations/instfinite--cb954885689b474174c9e5c1.md) | 98 | `declaration-track:cb954885689b474174c9e5c1081757850c4722ca8c00b931c72f7a7a46a2c8df` |
| 10 | `lemma` | [natCard_eq](../../../../../mathematics/Algebra/LinearAlgebra/ModN/Variant0ff3a71984d4fffd14760953991099f278ca1f40690564091c01f40f9667b8e8.lean/declarations/natcard-eq--55a6998ccc961c4d6a7165f7.md) | 101 | `result-track:55a6998ccc961c4d6a7165f71834cfa8e1909a3291fe9665b06243d23fad26db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
