# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ForSqrt.Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7deca7db4131e493377a04ed2a9eb345b8a17aa6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7deca7db4131e493377a04ed2a9eb345b8a17aa6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Size` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_le_of_le_div](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean/declarations/mul-le-of-le-div--c0ae82e9764d7999e8e4385b.md) | 29 | `result-track:c0ae82e9764d7999e8e4385be103ff1895b3c2eddbbf9cd4acf9cdcb2a981f7b` |
| 2 | `lemma` | [div_mul_div_le](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean/declarations/div-mul-div-le--1bd68e3b2fe24c8681513f69.md) | 34 | `result-track:1bd68e3b2fe24c8681513f6965e306062bcf3f50b4c233895117be8db1ff4149` |
| 3 | `lemma` | [iter_fp_bound](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean/declarations/iter-fp-bound--e412be567eb0ca7a062ee043.md) | 46 | `result-track:e412be567eb0ca7a062ee043fb4e06c7f7edf094f9900c4df7f6e23b864ad4ef` |
| 4 | `lemma` | [AM_GM](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean/declarations/am-gm--f635f2b68ac50a6b65cde2ed.md) | 55 | `result-track:f635f2b68ac50a6b65cde2edad818460e321b9b0e42bdb7b2bdae1b9502d5bc2` |
| 5 | `lemma` | [sqrt.iter_sq_le](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean/declarations/sqrt-iter-sq-le--5eccafdbadee35f7c1e57738.md) | 70 | `result-track:5eccafdbadee35f7c1e577389771926450834a0d4e0fabddb4d5bdf92bb1e021` |
| 6 | `lemma` | [sqrt.lt_iter_succ_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean/declarations/sqrt-lt-iter-succ-sq--92ac48c540de6633a6fae1ec.md) | 83 | `result-track:92ac48c540de6633a6fae1ec7fe7fbc20f3338b2600b14605f80fe7c00f19dfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
