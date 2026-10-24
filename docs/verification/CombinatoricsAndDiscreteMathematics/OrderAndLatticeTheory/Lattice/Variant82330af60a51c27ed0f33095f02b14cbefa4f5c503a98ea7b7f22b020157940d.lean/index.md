# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant82330af60a51c27ed0f33095f02b14cbefa4f5c503a98ea7b7f22b020157940d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d59d469ac7568a1bc982dc1ac4a0d015ba83dea",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant82330af60a51c27ed0f33095f02b14cbefa4f5c503a98ea7b7f22b020157940d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant82330af60a51c27ed0f33095f02b14cbefa4f5c503a98ea7b7f22b020157940d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant82330af60a51c27ed0f33095f02b14cbefa4f5c503a98ea7b7f22b020157940d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d59d469ac7568a1bc982dc1ac4a0d015ba83dea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant82330af60a51c27ed0f33095f02b14cbefa4f5c503a98ea7b7f22b020157940d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant82330af60a51c27ed0f33095f02b14cbefa4f5c503a98ea7b7f22b020157940d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Encodable.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iSup_decode₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant82330af60a51c27ed0f33095f02b14cbefa4f5c503a98ea7b7f22b020157940d.lean/declarations/isup-decode--59ea8f61627d1ecd0fb965be.md) | 36 | `result-track:59ea8f61627d1ecd0fb965be06af4bbe859745b0d223aa278e17a02044664628` |
| 2 | `theorem` | [iUnion_decode₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant82330af60a51c27ed0f33095f02b14cbefa4f5c503a98ea7b7f22b020157940d.lean/declarations/iunion-decode--f81205977a01e080b291609a.md) | 41 | `result-track:f81205977a01e080b291609a14093a43af38f7c149e13589dbfe46cea83780f3` |
| 3 | `theorem` | [iUnion_decode₂_cases](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant82330af60a51c27ed0f33095f02b14cbefa4f5c503a98ea7b7f22b020157940d.lean/declarations/iunion-decode-cases--0126190dfd69757b2cc48401.md) | 45 | `result-track:0126190dfd69757b2cc4840147399f389e9a05384719b78a52d6ebd50321ba99` |
| 4 | `theorem` | [iUnion_decode₂_disjoint_on](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant82330af60a51c27ed0f33095f02b14cbefa4f5c503a98ea7b7f22b020157940d.lean/declarations/iunion-decode-disjoint-on--56019bac4d42061fc77afb86.md) | 56 | `result-track:56019bac4d42061fc77afb86410333e134f52fb481b32b746278937d56272903` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
