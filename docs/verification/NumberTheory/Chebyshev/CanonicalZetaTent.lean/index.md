# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalZetaTent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3cca8fc7ed75f86f8deb71a6a23c6c0b30220b5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalZetaTent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalZetaTent.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalZetaTent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3cca8fc7ed75f86f8deb71a6a23c6c0b30220b5`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalZetaTent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalZetaTent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor`](../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection`](../../../../mathematics/NumberTheory/Chebyshev/SignedTentCorrection.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finiteCountingMass_le_heightCount](../../../../mathematics/NumberTheory/Chebyshev/CanonicalZetaTent.lean/declarations/finitecountingmass-le-heightcount--fea265091fa471ec9cce194a.md) | 35 | `result-track:fea265091fa471ec9cce194a0071efee09b4522188c45491a4e2735d33dd7ebc` |
| 2 | `theorem` | [heightCount_bound_iff](../../../../mathematics/NumberTheory/Chebyshev/CanonicalZetaTent.lean/declarations/heightcount-bound-iff--8d2d6bc641660776ec92e833.md) | 45 | `result-track:8d2d6bc641660776ec92e833a79f7628d679148d91c2e1ff9a095568ba748553` |
| 3 | `theorem` | [canonical_tent_summable_and_remainder](../../../../mathematics/NumberTheory/Chebyshev/CanonicalZetaTent.lean/declarations/canonical-tent-summable-and-remainder--57ab9e1dc6963e0c764f0894.md) | 62 | `result-track:57ab9e1dc6963e0c764f08943af359a831699ecf74913b8f0f520d3a0f063c0b` |
| 4 | `theorem` | [canonical_tent_evaluation_error](../../../../mathematics/NumberTheory/Chebyshev/CanonicalZetaTent.lean/declarations/canonical-tent-evaluation-error--11d51517a5de7c7b3194da3f.md) | 77 | `result-track:11d51517a5de7c7b3194da3fe37ff5138e2ae1b0f0bf689b0d208df5994a554f` |
| 5 | `theorem` | [prime_in_square_of_canonical_zeta_tent](../../../../mathematics/NumberTheory/Chebyshev/CanonicalZetaTent.lean/declarations/prime-in-square-of-canonical-zeta-tent--ad541405d4da79026feff4f5.md) | 94 | `result-track:ad541405d4da79026feff4f5ca78f30a2c9e538f5bcb4cc2a6aaa2484376c2d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
