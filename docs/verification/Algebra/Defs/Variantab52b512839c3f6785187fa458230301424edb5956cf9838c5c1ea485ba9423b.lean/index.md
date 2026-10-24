# Verification target: GRWTSK.Algebra.Defs.Variantab52b512839c3f6785187fa458230301424edb5956cf9838c5c1ea485ba9423b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa41b78780a9fc12ffaf1de00be00ef4b428daec",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantab52b512839c3f6785187fa458230301424edb5956cf9838c5c1ea485ba9423b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantab52b512839c3f6785187fa458230301424edb5956cf9838c5c1ea485ba9423b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantab52b512839c3f6785187fa458230301424edb5956cf9838c5c1ea485ba9423b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa41b78780a9fc12ffaf1de00be00ef4b428daec`.

Source path: `GRWTSK/Algebra/Defs/Variantab52b512839c3f6785187fa458230301424edb5956cf9838c5c1ea485ba9423b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantab52b512839c3f6785187fa458230301424edb5956cf9838c5c1ea485ba9423b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Projective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [instModuleTensorProductMop](../../../../mathematics/Algebra/Defs/Variantab52b512839c3f6785187fa458230301424edb5956cf9838c5c1ea485ba9423b.lean/declarations/instmoduletensorproductmop--23be62d1d0e0b9e8f643ff02.md) | 43 | `declaration-track:23be62d1d0e0b9e8f643ff025da4724e9f7b6c53d421eb146c8459e34cbb1ad2` |
| 2 | `def` | [AlgHom.mulLeftRight](../../../../mathematics/Algebra/Defs/Variantab52b512839c3f6785187fa458230301424edb5956cf9838c5c1ea485ba9423b.lean/declarations/alghom-mulleftright--a79408f32582efcff3e65c83.md) | 48 | `declaration-track:a79408f32582efcff3e65c83d67343efcab36c219447eee05e2db946c8c77de3` |
| 3 | `lemma` | [AlgHom.mulLeftRight_apply](../../../../mathematics/Algebra/Defs/Variantab52b512839c3f6785187fa458230301424edb5956cf9838c5c1ea485ba9423b.lean/declarations/alghom-mulleftright-apply--b4e62e4d5c8e935b66c7e066.md) | 57 | `result-track:b4e62e4d5c8e935b66c7e0669109c478d3a81238f265b7ad3092a4f2f0e6aee3` |
| 4 | `class` | [IsAzumaya](../../../../mathematics/Algebra/Defs/Variantab52b512839c3f6785187fa458230301424edb5956cf9838c5c1ea485ba9423b.lean/declarations/isazumaya--d016f7932b6eacc25b021091.md) | 65 | `declaration-track:d016f7932b6eacc25b021091c213b813168fe9f193b33492acb99bf310a113d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
