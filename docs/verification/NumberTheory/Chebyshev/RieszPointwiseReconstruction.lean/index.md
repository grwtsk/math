# Verification target: GRWTSK.NumberTheory.Chebyshev.RieszPointwiseReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e086f62a7417d154af4f993c89b52d6fdc9b9df6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e086f62a7417d154af4f993c89b52d6fdc9b9df6`.

Source path: `GRWTSK/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.EndpointConventions`](../../../../mathematics/NumberTheory/Chebyshev/EndpointConventions.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentSource`](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfJumpWeight](../../../../mathematics/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/declarations/halfjumpweight--55835ef8aaaa2775749b1933.md) | 23 | `declaration-track:55835ef8aaaa2775749b1933269d9a805d3766169fb1ad4bb9e4b64c68163f22` |
| 2 | `theorem` | [hinge_symmetric_nat](../../../../mathematics/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/declarations/hinge-symmetric-nat--dc29f9b4bf3255659bc236a2.md) | 26 | `result-track:dc29f9b4bf3255659bc236a2728a9a0f3881b723ade13e4f7f2ec158e42a3572` |
| 3 | `theorem` | [finite_halfJump_sum](../../../../mathematics/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/declarations/finite-halfjump-sum--793d68cee9be9b72b06cda9a.md) | 43 | `result-track:793d68cee9be9b72b06cda9a38bfed58ed7dc4e9e8844ee912c69cc0229cd097` |
| 4 | `def` | [symmetricRieszQuotient](../../../../mathematics/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/declarations/symmetricrieszquotient--b2c082ecaefbfe5e79f035fd.md) | 80 | `declaration-track:b2c082ecaefbfe5e79f035fd21d598d287b0e16dc50549ec3c7b6a435233a3b8` |
| 5 | `theorem` | [symmetricRieszQuotient_nat](../../../../mathematics/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/declarations/symmetricrieszquotient-nat--9d710abda0d5d1eecc2c8024.md) | 83 | `result-track:9d710abda0d5d1eecc2c8024a5e9fb41c60278612be0c16d7fd39a94e7e41fdf` |
| 6 | `theorem` | [symmetricRieszQuotient_noninteger](../../../../mathematics/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/declarations/symmetricrieszquotient-noninteger--f6a9e4fb52c271795b0d4bcd.md) | 103 | `result-track:f6a9e4fb52c271795b0d4bcdf054d1d548bdda4f643ac31a3eb28c0b3f2380e1` |
| 7 | `theorem` | [exists_noninteger_reconstruction_radius](../../../../mathematics/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/declarations/exists-noninteger-reconstruction-radius--beaa2214a7e11e9c716effb8.md) | 149 | `result-track:beaa2214a7e11e9c716effb8877a8c2d5cdda295f3a5828cc3b2b24ff5520434` |
| 8 | `theorem` | [pointwise_reconstruction_error](../../../../mathematics/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/declarations/pointwise-reconstruction-error--e076f228ff017759132b13b7.md) | 165 | `result-track:e076f228ff017759132b13b734944a719bec35895d0eaa82566f84ab12685aaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
