# Verification target: GRWTSK.Algebra.LinearAlgebra.Triangularizable.Variant319a82a5308d44496ddd0a989c45cff0f18e7934fbc738fd2f7c457082a9ad85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8323655f86b9925b74edf8dc6809225e2b45b27",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Triangularizable/Variant319a82a5308d44496ddd0a989c45cff0f18e7934fbc738fd2f7c457082a9ad85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant319a82a5308d44496ddd0a989c45cff0f18e7934fbc738fd2f7c457082a9ad85.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant319a82a5308d44496ddd0a989c45cff0f18e7934fbc738fd2f7c457082a9ad85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8323655f86b9925b74edf8dc6809225e2b45b27`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Triangularizable/Variant319a82a5308d44496ddd0a989c45cff0f18e7934fbc738fd2f7c457082a9ad85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Triangularizable/Variant319a82a5308d44496ddd0a989c45cff0f18e7934fbc738fd2f7c457082a9ad85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Spectrum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_hasEigenvalue_of_genEigenspace_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant319a82a5308d44496ddd0a989c45cff0f18e7934fbc738fd2f7c457082a9ad85.lean/declarations/exists-haseigenvalue-of-geneigenspace-eq-top--b8ab27a6000f38b6f573b90b.md) | 56 | `result-track:b8ab27a6000f38b6f573b90b50734467a7f6d5f1d6cc8985f96296ef95b13840` |
| 2 | `theorem` | [exists_eigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant319a82a5308d44496ddd0a989c45cff0f18e7934fbc738fd2f7c457082a9ad85.lean/declarations/exists-eigenvalue--89b62af296bbeb29f88dbee8.md) | 67 | `result-track:89b62af296bbeb29f88dbee8ca6bb873bf80d631c068cb960fd0ec5328bcfbba` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant319a82a5308d44496ddd0a989c45cff0f18e7934fbc738fd2f7c457082a9ad85.lean/declarations/instance--8a3c87abd0a7f0820aa041d5.md) | 72 | `declaration-track:8a3c87abd0a7f0820aa041d5a5729252b04743852c590888b4fe66128907df6d` |
| 4 | `theorem` | [iSup_maxGenEigenspace_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant319a82a5308d44496ddd0a989c45cff0f18e7934fbc738fd2f7c457082a9ad85.lean/declarations/isup-maxgeneigenspace-eq-top--4cff56cb6e083c79f75eb32e.md) | 79 | `result-track:4cff56cb6e083c79f75eb32eb45754adeb218943c68f047e4f12cf94223d1244` |
| 5 | `theorem` | [inf_iSup_genEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant319a82a5308d44496ddd0a989c45cff0f18e7934fbc738fd2f7c457082a9ad85.lean/declarations/inf-isup-geneigenspace--042040a888092a5f111b3389.md) | 149 | `result-track:042040a888092a5f111b3389df5434e9379966717171e18352891e5ebd5f6ce4` |
| 6 | `theorem` | [eq_iSup_inf_genEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant319a82a5308d44496ddd0a989c45cff0f18e7934fbc738fd2f7c457082a9ad85.lean/declarations/eq-isup-inf-geneigenspace--cb5aa66525674ddd69729cd1.md) | 232 | `result-track:cb5aa66525674ddd69729cd14e5d4a3d2caf2675631c2dc02d8dba8b90b017f5` |
| 7 | `theorem` | [Module.End.genEigenspace_restrict_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant319a82a5308d44496ddd0a989c45cff0f18e7934fbc738fd2f7c457082a9ad85.lean/declarations/module-end-geneigenspace-restrict-eq-top--d340d01bf35bf8aec127cce3.md) | 241 | `result-track:d340d01bf35bf8aec127cce35ba8941c26eba7c4641cf90deb0d7218009c2779` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
