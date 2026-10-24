# Verification target: GRWTSK.Algebra.UniversalAlgebra.CartanSubalgebra.Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7671db290686c9a5b3b42b298a791d496d26904",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7671db290686c9a5b3b42b298a791d496d26904`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Nilpotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Normalizer` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LieSubmodule.IsUcsLimit](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean/declarations/liesubmodule-isucslimit--5fba73af0908c9a4080cbcbd.md) | 48 | `declaration-track:5fba73af0908c9a4080cbcbd27b8112c9339ee3becef4231a1f78daeab4cc8e6` |
| 2 | `class` | [IsCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean/declarations/iscartansubalgebra--47ea52567b42e731a930db9d.md) | 56 | `declaration-track:47ea52567b42e731a930db9da0a81cc8fd23ac838e40f09dff4cd62c3f46ab00` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean/declarations/instance--e73e64d3bbb211d0d3549505.md) | 61 | `declaration-track:e73e64d3bbb211d0d35495058bf71ee963216cdbdf98797d65922c45b1a2f50d` |
| 4 | `theorem` | [normalizer_eq_self_of_isCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean/declarations/normalizer-eq-self-of-iscartansubalgebra--81811ac25f5ef3fc3f382857.md) | 65 | `result-track:81811ac25f5ef3fc3f38285796267ab6502cf31be8d834fdf2bfc7f649a5f93d` |
| 5 | `theorem` | [ucs_eq_self_of_isCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean/declarations/ucs-eq-self-of-iscartansubalgebra--7a2e9015865179234eba7b26.md) | 72 | `result-track:7a2e9015865179234eba7b260dfa73f6b971313d6ef0efbad950d362a0ce6bd6` |
| 6 | `theorem` | [isCartanSubalgebra_iff_isUcsLimit](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean/declarations/iscartansubalgebra-iff-isucslimit--264b0477dafcd0a060ea4cd3.md) | 79 | `result-track:264b0477dafcd0a060ea4cd3a8b30c99bc916754cdb5bbeff580a2b112abb223` |
| 7 | `theorem` | [LieIdeal.normalizer_eq_top](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean/declarations/lieideal-normalizer-eq-top--d7bf876ddf6c578dbf6fcb18.md) | 107 | `result-track:d7bf876ddf6c578dbf6fcb18c31c9e869026f180e833f357bc98e443965fda42` |
| 8 | `instance` | [LieAlgebra.top_isCartanSubalgebra_of_nilpotent](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean/declarations/liealgebra-top-iscartansubalgebra-of-nilpotent--e9ba98c4221981b13680da28.md) | 117 | `declaration-track:e9ba98c4221981b13680da281854a88cca31e4540cd037334d177c2826066bbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
