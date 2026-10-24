# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aee103d9da0c21ecd194a4796f07ebf14ec8112f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aee103d9da0c21ecd194a4796f07ebf14ec8112f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.Nondegenerate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exist_eq_reflection_of_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean/declarations/exist-eq-reflection-of-mapsto--911b3db6239e159e1df03107.md) | 48 | `result-track:911b3db6239e159e1df0310760968ee7758df37428b1dbeeee9ede149348a88b` |
| 2 | `theorem` | [choose_choose_eq_of_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean/declarations/choose-choose-eq-of-mapsto--a7c4c4a6267f2d924b22d75e.md) | 55 | `result-track:a7c4c4a6267f2d924b22d75ead6f022c7253a4c49f8d3d81fd025c3463cbf61a` |
| 3 | `def` | [equiv_of_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean/declarations/equiv-of-mapsto--5d64cd0b3a31383715f7ab0f.md) | 65 | `declaration-track:5d64cd0b3a31383715f7ab0f36ff007171727afb5c5469a3c8dd5f21868cff0a` |
| 4 | `lemma` | [injOn_dualMap_subtype_span_root_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean/declarations/injon-dualmap-subtype-span-root-coroot--cc04f0781e76bd50594be105.md) | 80 | `result-track:cc04f0781e76bd50594be10578249aaa2b0b8c6f33f1ae0f53cdd0322bb0f049` |
| 5 | `lemma` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean/declarations/ext--bb0021528cba801a1901c599.md) | 92 | `result-track:bb0021528cba801a1901c5999c4ebb7d20b9ea754caca848d946b7c7bbbc7e45` |
| 6 | `lemma` | [coroot_eq_coreflection_of_root_eq'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean/declarations/coroot-eq-coreflection-of-root-eq--7d36295f86a8c827a76831e3.md) | 117 | `result-track:7d36295f86a8c827a76831e37bfc32d70d76be3500df62304e88b81e63c3a1ef` |
| 7 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean/declarations/mk--9a26b46707ac5b0143926ac2.md) | 159 | `declaration-track:9a26b46707ac5b0143926ac2e12ea26b646ef8d65e77f0e3c8fcfa6c69d6398a` |
| 8 | `lemma` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean/declarations/ext--7c6d38f6b8985995712a0566.md) | 190 | `result-track:7c6d38f6b8985995712a05661c682385a19f42bafdf29f19c32f55b07064890e` |
| 9 | `lemma` | [coroot_eq_coreflection_of_root_eq_of_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean/declarations/coroot-eq-coreflection-of-root-eq-of-span-eq-top--23cbc66c26c413eb63ff07ff.md) | 213 | `result-track:23cbc66c26c413eb63ff07ffe2d8aa41382b6a18c47764a52778eedeed56fb4d` |
| 10 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantd8ce675e209c17b7429237dc135e18166d469349838e22319c84b23cbc35214b.lean/declarations/mk--6237ce629ed28300d21e170b.md) | 247 | `declaration-track:6237ce629ed28300d21e170be1ff8d5041e32cdfa61ee9d95670caa9ca036046` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
