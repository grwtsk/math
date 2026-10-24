# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ErdosGinzburgZiv.Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "846c398bc8e5b925a765d2178949dbd29a804452",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `846c398bc8e5b925a765d2178949dbd29a804452`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fintype` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.ChevalleyWarning` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [f₁](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/declarations/f--f0a3f68426e9bb369004803b.md) | 32 | `declaration-track:f0a3f68426e9bb369004803b65f2de87e691246e28bd26bc744dbae9eaa4a85e` |
| 2 | `def` | [f₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/declarations/f--4beaf1a2cab53de359a73de1.md) | 36 | `declaration-track:4beaf1a2cab53de359a73de1becbff618e4d358ba6138d5266bd0d41252c338d` |
| 3 | `lemma` | [totalDegree_f₁_add_totalDegree_f₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/declarations/totaldegree-f-add-totaldegree-f--a140a71656336db539ea9692.md) | 39 | `result-track:a140a71656336db539ea9692e9d207d48139ebd06f5dcceee6541807d9bb6d66` |
| 4 | `theorem` | [ZMod.erdos_ginzburg_ziv_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/declarations/zmod-erdos-ginzburg-ziv-prime--d86a3f8cd7a217332848d303.md) | 52 | `result-track:d86a3f8cd7a217332848d303e2a9f66b0b52b1e28e6fd436b330543ad0058730` |
| 5 | `theorem` | [Int.erdos_ginzburg_ziv_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/declarations/int-erdos-ginzburg-ziv-prime--7ecda631cce34d5c43a5ba08.md) | 92 | `result-track:7ecda631cce34d5c43a5ba085c312069b502f04356c3a0c10f72d8f9405fe7d1` |
| 6 | `theorem` | [Int.erdos_ginzburg_ziv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/declarations/int-erdos-ginzburg-ziv--802a65713fe56dfdae13964a.md) | 106 | `result-track:802a65713fe56dfdae13964a8e15af8e5446eb0edb537168158cbc09456c0e57` |
| 7 | `theorem` | [ZMod.erdos_ginzburg_ziv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/declarations/zmod-erdos-ginzburg-ziv--1d34baddd8cb8a2af79eeeba.md) | 180 | `result-track:1d34baddd8cb8a2af79eeeba785518b5890fa3a566ad59c846493a5630af3bb4` |
| 8 | `theorem` | [Int.erdos_ginzburg_ziv_multiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/declarations/int-erdos-ginzburg-ziv-multiset--84a6fd94b3c8ba199941f152.md) | 188 | `result-track:84a6fd94b3c8ba199941f152c0e2b95dc1e527b3d138b21e6175a1f4a79e8807` |
| 9 | `theorem` | [ZMod.erdos_ginzburg_ziv_multiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/declarations/zmod-erdos-ginzburg-ziv-multiset--47bc51e90ab5e2aa7975507a.md) | 197 | `result-track:47bc51e90ab5e2aa7975507a14a78ef89516b30f702c0074fce9758462362509` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
