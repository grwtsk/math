# Verification target: GRWTSK.Algebra.LinearAlgebra.IsAlgClosed.Variant8f9f6e721f877e27838a34621fda0d405ed4549f48e33299aef1add3ce3ae006

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57cbbed122cad74a7c456cb4aa99ac746264f15f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsAlgClosed/Variant8f9f6e721f877e27838a34621fda0d405ed4549f48e33299aef1add3ce3ae006.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsAlgClosed/Variant8f9f6e721f877e27838a34621fda0d405ed4549f48e33299aef1add3ce3ae006.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsAlgClosed/Variant8f9f6e721f877e27838a34621fda0d405ed4549f48e33299aef1add3ce3ae006.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57cbbed122cad74a7c456cb4aa99ac746264f15f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsAlgClosed/Variant8f9f6e721f877e27838a34621fda0d405ed4549f48e33299aef1add3ce3ae006.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsAlgClosed/Variant8f9f6e721f877e27838a34621fda0d405ed4549f48e33299aef1add3ce3ae006.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Spectrum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_eigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/IsAlgClosed/Variant8f9f6e721f877e27838a34621fda0d405ed4549f48e33299aef1add3ce3ae006.lean/declarations/exists-eigenvalue--d90fadf0d2a104f17093e473.md) | 41 | `result-track:d90fadf0d2a104f17093e473d03468837a120cd7b2d0594885c6b2126b1a7d25` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsAlgClosed/Variant8f9f6e721f877e27838a34621fda0d405ed4549f48e33299aef1add3ce3ae006.lean/declarations/instance--50268d80c3811ca941466e22.md) | 47 | `declaration-track:50268d80c3811ca941466e2275524e59e5140b4a57f0b765d5d65d6371535cbe` |
| 3 | `theorem` | [iSup_generalizedEigenspace_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/IsAlgClosed/Variant8f9f6e721f877e27838a34621fda0d405ed4549f48e33299aef1add3ce3ae006.lean/declarations/isup-generalizedeigenspace-eq-top--4b8579cf4ba75b197aac1ea8.md) | 52 | `result-track:4b8579cf4ba75b197aac1ea8f086599eb2b900fa089e45bac324e5aaa36879e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
