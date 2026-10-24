# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variantb72085268c832e7c7ea18c1bf44b32fe09910ad7de37982049ea19e79681f656

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d370bb739151686bea9c1f209a838298c871f8a4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantb72085268c832e7c7ea18c1bf44b32fe09910ad7de37982049ea19e79681f656.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb72085268c832e7c7ea18c1bf44b32fe09910ad7de37982049ea19e79681f656.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb72085268c832e7c7ea18c1bf44b32fe09910ad7de37982049ea19e79681f656.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d370bb739151686bea9c1f209a838298c871f8a4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantb72085268c832e7c7ea18c1bf44b32fe09910ad7de37982049ea19e79681f656.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variantb72085268c832e7c7ea18c1bf44b32fe09910ad7de37982049ea19e79681f656.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Rank` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeAlgebra` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivFreeAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb72085268c832e7c7ea18c1bf44b32fe09910ad7de37982049ea19e79681f656.lean/declarations/equivfreealgebra--d92ed676b1e6213cc9f99432.md) | 48 | `declaration-track:d92ed676b1e6213cc9f99432b79f9c475700c70d8cb233516c828922f770c7dc` |
| 2 | `lemma` | [equivFreeAlgebra_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb72085268c832e7c7ea18c1bf44b32fe09910ad7de37982049ea19e79681f656.lean/declarations/equivfreealgebra-apply--c8597bf70aa8d08923228725.md) | 57 | `result-track:c8597bf70aa8d08923228725d051c9018846e7b2e6ba1a04391e00b28adcbabb` |
| 3 | `lemma` | [equivFreeAlgebra_symm_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb72085268c832e7c7ea18c1bf44b32fe09910ad7de37982049ea19e79681f656.lean/declarations/equivfreealgebra-symm--e30aea7bf5a628070d53fe17.md) | 62 | `result-track:e30aea7bf5a628070d53fe171ebcc71bed9d982b9f456222653d3b3efee0e83f` |
| 4 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.EquivFreeAlgebra.Variantfcaa9a55af6ea9611f008a436e9eddee00de0f053b3cbcbb94e9397751196352.Basis.tensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb72085268c832e7c7ea18c1bf44b32fe09910ad7de37982049ea19e79681f656.lean/declarations/root-grwtsk-algebra-linearalgebra-equivfreealgebra-variantfcaa9a55af6ea9--7814d94a06b8523119c07d74.md) | 68 | `declaration-track:7814d94a06b8523119c07d74d00428387568784f97a7601354024781bac63cd0` |
| 5 | `instance` | [instModuleFree](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb72085268c832e7c7ea18c1bf44b32fe09910ad7de37982049ea19e79681f656.lean/declarations/instmodulefree--8ac64857c02640c646bd8d6b.md) | 73 | `declaration-track:8ac64857c02640c646bd8d6b08b4575d0690b4ec43280f00dacd1472c05192ac` |
| 6 | `lemma` | [rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb72085268c832e7c7ea18c1bf44b32fe09910ad7de37982049ea19e79681f656.lean/declarations/rank-eq--c67e283fd545f082b59ac59d.md) | 87 | `result-track:c67e283fd545f082b59ac59d5589b86f0983743ef2040117e5f7090c2802fc09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
