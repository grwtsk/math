# Verification target: GRWTSK.Algebra.GroupTheory.Frattini.Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bd583cddadd09f869093c73ea6e1e9a1be8a396",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bd583cddadd09f869093c73ea6e1e9a1be8a396`.

Source path: `GRWTSK/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Nilpotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Radical` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frattini](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean/declarations/frattini--988b47968abecceebb71194f.md) | 28 | `declaration-track:988b47968abecceebb71194f8951af35ad788d0906a454c9a9754976deedc67e` |
| 2 | `lemma` | [frattini_le_coatom](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean/declarations/frattini-le-coatom--543b0f6de010e0a3b7f7d8f0.md) | 33 | `result-track:543b0f6de010e0a3b7f7d8f021ffe53e7e7ecc797f2805c3b73f29b2793c04aa` |
| 3 | `lemma` | [frattini_le_comap_frattini_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean/declarations/frattini-le-comap-frattini-of-surjective--edeba2965589c9831b53fa2a.md) | 38 | `result-track:edeba2965589c9831b53fa2a225262df493281d7a21270304dda59be429d073a` |
| 4 | `instance` | [frattini_characteristic](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean/declarations/frattini-characteristic--c61bb827bd9f87bdc0ef0d3a.md) | 46 | `declaration-track:c61bb827bd9f87bdc0ef0d3a46c47efc2c64e79f4b9fbaa9c17a330bfdae2fd5` |
| 5 | `theorem` | [frattini_nongenerating](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean/declarations/frattini-nongenerating--b5b657ea04a531674399cf19.md) | 57 | `result-track:b5b657ea04a531674399cf19631f9206e3e10d594e296f4f922de8871ed063e4` |
| 6 | `theorem` | [frattini_nilpotent](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variant682ce7721e7fa1240e2b9c4026eb22f34ba7c06540c22eaef9cb43d3d76e1b83.lean/declarations/frattini-nilpotent--63ed766bd9a30cc063612198.md) | 62 | `result-track:63ed766bd9a30cc0636121983e5417e2fba69acf264474eb4024b0c3312abad6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
