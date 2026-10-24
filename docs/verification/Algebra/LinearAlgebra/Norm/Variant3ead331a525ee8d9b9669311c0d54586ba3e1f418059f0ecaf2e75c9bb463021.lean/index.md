# Verification target: GRWTSK.Algebra.LinearAlgebra.Norm.Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa18a8d96615405a1bfb67f9abeb900875238a8c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa18a8d96615405a1bfb67f9abeb900875238a8c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.IdealQuotient` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [associated_norm_prod_smith](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean/declarations/associated-norm-prod-smith--37eb076e4f444045e813bf90.md) | 38 | `result-track:37eb076e4f444045e813bf90b38f0bd14814e4b9ecd3263ec302147959e8d11f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean/declarations/instance--4436dee799768d6bdeab1ad6.md) | 67 | `declaration-track:4436dee799768d6bdeab1ad642d942bceb485d14acb8c2d59cd873f52fc6d671` |
| 3 | `theorem` | [finrank_quotient_span_eq_natDegree_norm](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variant3ead331a525ee8d9b9669311c0d54586ba3e1f418059f0ecaf2e75c9bb463021.lean/declarations/finrank-quotient-span-eq-natdegree-norm--44d39aee7fc473491ad12baf.md) | 85 | `result-track:44d39aee7fc473491ad12bafb0779b65e77bea696e075f72c846ddbe1d322804` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
