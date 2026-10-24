# Verification target: GRWTSK.Algebra.UniversalAlgebra.Free.Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77da51f43b866e2dca8881c6ffdcbeff44e34543",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77da51f43b866e2dca8881c6ffdcbeff44e34543`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeAlgebra` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean/declarations/instance--519a9cee9daa20f64c1f54e3.md) | 24 | `declaration-track:519a9cee9daa20f64c1f54e3ff7a02ddf84735c0d9098048098dc275cd008a10` |
| 2 | `theorem` | [star_of](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean/declarations/star-of--d4b11a7b1888a99400b4fc0a.md) | 30 | `result-track:d4b11a7b1888a99400b4fc0a407d00ec5f42da3a6d48140076eb35f927bd9da7` |
| 3 | `theorem` | [star_one](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean/declarations/star-one--5e51cd8729cc6844ba09ff36.md) | 35 | `result-track:5e51cd8729cc6844ba09ff36cb501d224459c81129b8c7e85f2690b35c1d85b3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean/declarations/instance--d6d2f5cd2ef90495115daade.md) | 45 | `declaration-track:d6d2f5cd2ef90495115daadeb89e26a8bd619db9c68fac4134eb8ae91ee0ce67` |
| 5 | `theorem` | [star_ι](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean/declarations/star--8d066d1169f1b47606846b6d.md) | 63 | `result-track:8d066d1169f1b47606846b6d2faaee1b66b8b079cae4af2730483295e77fc281` |
| 6 | `theorem` | [star_algebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean/declarations/star-algebramap--7e42ee2dfb5a73bfa07217ea.md) | 66 | `result-track:7e42ee2dfb5a73bfa07217ea4fa95f112c242aba47f3d00150ed6f78ad513775` |
| 7 | `def` | [starHom](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean/declarations/starhom--c9e5d6f9060d005ce3d3bf36.md) | 70 | `declaration-track:c9e5d6f9060d005ce3d3bf36d07a0f2805bbf9a96da6dcbc4aa76010441e1b4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
