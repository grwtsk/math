# Verification target: GRWTSK.Algebra.GroupTheory.Subobjects.Variant6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "940e6eb55e6a677dc1fc881da50e38db9862cf2e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Subobjects/Variant6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Subobjects/Variant6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Subobjects/Variant6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `940e6eb55e6a677dc1fc881da50e38db9862cf2e`.

Source path: `GRWTSK/Algebra/GroupTheory/Subobjects/Variant6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Subobjects/Variant6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.DistribMulAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Subobjects/Variant6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418.lean/declarations/instance--f1ebde010235e109ee7c7cca.md) | 26 | `declaration-track:f1ebde010235e109ee7c7ccae7b4baed024d3470600f6449acf0946a76542812` |
| 2 | `instance` | [Submonoid.mulSemiringAction](../../../../../mathematics/Algebra/GroupTheory/Subobjects/Variant6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418.lean/declarations/submonoid-mulsemiringaction--c92429df9ad2630f569d6bb7.md) | 31 | `declaration-track:c92429df9ad2630f569d6bb7f4715da7dba75d2e7c7c54ce03852f9466a712ca` |
| 3 | `instance` | [Subgroup.mulSemiringAction](../../../../../mathematics/Algebra/GroupTheory/Subobjects/Variant6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418.lean/declarations/subgroup-mulsemiringaction--14fe0692ae2b98abb4623364.md) | 36 | `declaration-track:14fe0692ae2b98abb4623364129bd9d9190b285f6f0990178fc9882a6a9748e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
