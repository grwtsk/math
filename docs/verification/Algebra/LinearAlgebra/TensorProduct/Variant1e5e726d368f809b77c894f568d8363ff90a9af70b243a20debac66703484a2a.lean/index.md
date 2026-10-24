# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "024fb964498d45abb77b332834613fa00181fd27",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `024fb964498d45abb77b332834613fa00181fd27`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [directSum](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a.lean/declarations/directsum--eee0ff45c43b587f9dcf454e.md) | 53 | `declaration-track:eee0ff45c43b587f9dcf454ed05b12adb0e02bef9a03a0f708a42f03254d23ef` |
| 2 | `def` | [directSumLeft](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a.lean/declarations/directsumleft--125203e1c083a4a25c6099e9.md) | 123 | `declaration-track:125203e1c083a4a25c6099e9c049da48a718e859bfff38caecd089f0fa72c458` |
| 3 | `def` | [directSumRight](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a.lean/declarations/directsumright--55726c45d6d676b7f157f756.md) | 144 | `declaration-track:55726c45d6d676b7f157f75641fef78909173ca14f0d5e222ebeb4b4357e4c40` |
| 4 | `theorem` | [directSum_lof_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a.lean/declarations/directsum-lof-tmul-lof--af050f63f7f253675a2539c0.md) | 152 | `result-track:af050f63f7f253675a2539c05f42cf38df3db38b8e757a53ae2398fed3e18bd6` |
| 5 | `theorem` | [directSumLeft_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a.lean/declarations/directsumleft-tmul-lof--08da797b202e6c814eb5e60c.md) | 159 | `result-track:08da797b202e6c814eb5e60cd652998e68fd16151faf61fc365f8fc74f2b1b60` |
| 6 | `theorem` | [directSumLeft_symm_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a.lean/declarations/directsumleft-symm-lof-tmul--defc29e6866bd0805d7761ed.md) | 168 | `result-track:defc29e6866bd0805d7761ed8c27e8b4183fba74cc75178ad46e27bcab3f4853` |
| 7 | `theorem` | [directSumRight_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a.lean/declarations/directsumright-tmul-lof--5842393d1b6c8bba373e92a1.md) | 175 | `result-track:5842393d1b6c8bba373e92a16322b077df936aad9d67a6732003f1b4a3107bd1` |
| 8 | `theorem` | [directSumRight_symm_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant1e5e726d368f809b77c894f568d8363ff90a9af70b243a20debac66703484a2a.lean/declarations/directsumright-symm-lof-tmul--e3c64e95a0ae73603a9d7617.md) | 184 | `result-track:e3c64e95a0ae73603a9d7617a363848a3ec124ce3287992e5e4be200073c91d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
