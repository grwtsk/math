# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variantc73ad87a83a8eb61037af8d447822ee6415e99c44359cd88c52eed849a3a3455

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ca2ec3f7aecc157b2036e6e9be82430eb5e2fca",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc73ad87a83a8eb61037af8d447822ee6415e99c44359cd88c52eed849a3a3455.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc73ad87a83a8eb61037af8d447822ee6415e99c44359cd88c52eed849a3a3455.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc73ad87a83a8eb61037af8d447822ee6415e99c44359cd88c52eed849a3a3455.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ca2ec3f7aecc157b2036e6e9be82430eb5e2fca`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc73ad87a83a8eb61037af8d447822ee6415e99c44359cd88c52eed849a3a3455.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc73ad87a83a8eb61037af8d447822ee6415e99c44359cd88c52eed849a3a3455.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Encodable.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iSup_decode₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc73ad87a83a8eb61037af8d447822ee6415e99c44359cd88c52eed849a3a3455.lean/declarations/isup-decode--dc4c0c3092f0366402d773e5.md) | 28 | `result-track:dc4c0c3092f0366402d773e5300dfd203d87b1a0e3f7962568b11020f9e8936a` |
| 2 | `theorem` | [iUnion_decode₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc73ad87a83a8eb61037af8d447822ee6415e99c44359cd88c52eed849a3a3455.lean/declarations/iunion-decode--26c86501e55eb30288ef8a3c.md) | 33 | `result-track:26c86501e55eb30288ef8a3cd7977438ad02c07b7eed3d9183c2d152829c3a82` |
| 3 | `theorem` | [iUnion_decode₂_cases](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc73ad87a83a8eb61037af8d447822ee6415e99c44359cd88c52eed849a3a3455.lean/declarations/iunion-decode-cases--51cf2191234dd16ea7eb831c.md) | 37 | `result-track:51cf2191234dd16ea7eb831c9f8e6bed371f72cbe50cc1c9601a94d2252c4bbc` |
| 4 | `theorem` | [iUnion_decode₂_disjoint_on](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc73ad87a83a8eb61037af8d447822ee6415e99c44359cd88c52eed849a3a3455.lean/declarations/iunion-decode-disjoint-on--a2a999f6595bc58dd1e3eb42.md) | 48 | `result-track:a2a999f6595bc58dd1e3eb42e9eb3df0393181307fedb17575bd1cf47977ab7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
