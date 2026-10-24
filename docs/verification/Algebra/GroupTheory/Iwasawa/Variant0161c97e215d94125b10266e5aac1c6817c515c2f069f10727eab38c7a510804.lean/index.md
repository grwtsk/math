# Verification target: GRWTSK.Algebra.GroupTheory.Iwasawa.Variant0161c97e215d94125b10266e5aac1c6817c515c2f069f10727eab38c7a510804

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f586bc8b64591c8ca707427c1747d87fda5f619",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Iwasawa/Variant0161c97e215d94125b10266e5aac1c6817c515c2f069f10727eab38c7a510804.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Iwasawa/Variant0161c97e215d94125b10266e5aac1c6817c515c2f069f10727eab38c7a510804.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Iwasawa/Variant0161c97e215d94125b10266e5aac1c6817c515c2f069f10727eab38c7a510804.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f586bc8b64591c8ca707427c1747d87fda5f619`.

Source path: `GRWTSK/Algebra/GroupTheory/Iwasawa/Variant0161c97e215d94125b10266e5aac1c6817c515c2f069f10727eab38c7a510804.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Iwasawa/Variant0161c97e215d94125b10266e5aac1c6817c515c2f069f10727eab38c7a510804.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Abelianization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Primitive` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Simple` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IwasawaStructure](../../../../../mathematics/Algebra/GroupTheory/Iwasawa/Variant0161c97e215d94125b10266e5aac1c6817c515c2f069f10727eab38c7a510804.lean/declarations/iwasawastructure--b566d8a8ee864dea8497a26a.md) | 45 | `declaration-track:b566d8a8ee864dea8497a26a725265015f0aa5137a53e140fd4291a27d69acff` |
| 2 | `theorem` | [commutator_le](../../../../../mathematics/Algebra/GroupTheory/Iwasawa/Variant0161c97e215d94125b10266e5aac1c6817c515c2f069f10727eab38c7a510804.lean/declarations/commutator-le--35e447343e134f329e5c5261.md) | 62 | `result-track:35e447343e134f329e5c5261f8ef24b04d8b723042f25a48068cad76bc033a2a` |
| 3 | `theorem` | [isSimpleGroup](../../../../../mathematics/Algebra/GroupTheory/Iwasawa/Variant0161c97e215d94125b10266e5aac1c6817c515c2f069f10727eab38c7a510804.lean/declarations/issimplegroup--bcb6f6239f56fd9d10305666.md) | 80 | `result-track:bcb6f6239f56fd9d10305666fcaac3ab4a7e60a47f49613f3d790d6e4a07766b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
