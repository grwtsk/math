# Verification target: GRWTSK.Algebra.LinearAlgebra.Finsupp.Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2e7aed1ee7a4e68944b7214107d1859914cac15",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2e7aed1ee7a4e68944b7214107d1859914cac15`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fg_of_fg_map_of_fg_inf_ker](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean/declarations/fg-of-fg-map-of-fg-inf-ker--642b2ff3b0740a4242ee62dc.md) | 35 | `result-track:642b2ff3b0740a4242ee62dcea330b19092773499151c84bb76055f91f0c6781` |
| 2 | `theorem` | [fg_ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean/declarations/fg-ker-comp--5fba8e83e0d19ad9dd26c83f.md) | 109 | `result-track:5fba8e83e0d19ad9dd26c83f096df75cad06814a38261327ed22132f26005ee7` |
| 3 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.FgOfFgMapOfFgInfKer.Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04.Module.Finite.of_submodule_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean/declarations/root-grwtsk-algebra-linearalgebra-fgoffgmapoffginfker-variant224da0b5a6a--c570677c3c479c86687a93f2.md) | 118 | `result-track:c570677c3c479c86687a93f253985243f17177ae7018235749b04a0d8fb6a55f` |
| 4 | `instance` | [Module.Finite.finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean/declarations/module-finite-finsupp--1fcaf5f0ebaf6866bf7d7bd4.md) | 130 | `declaration-track:1fcaf5f0ebaf6866bf7d7bd48c2a1fd2f40261d917a1c09c140364d8fd1db241` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
