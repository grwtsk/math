# Verification target: GRWTSK.Algebra.LinearAlgebra.Semisimple.Variant5519079a9ce0cb83796377e656eb9161e30392683fb6e5593f30c80ae6c63da8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb3f1e012fe1274eca43cf63ef96eb9d68751838",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant5519079a9ce0cb83796377e656eb9161e30392683fb6e5593f30c80ae6c63da8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant5519079a9ce0cb83796377e656eb9161e30392683fb6e5593f30c80ae6c63da8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant5519079a9ce0cb83796377e656eb9161e30392683fb6e5593f30c80ae6c63da8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb3f1e012fe1274eca43cf63ef96eb9d68751838`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant5519079a9ce0cb83796377e656eb9161e30392683fb6e5593f30c80ae6c63da8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Semisimple/Variant5519079a9ce0cb83796377e656eb9161e30392683fb6e5593f30c80ae6c63da8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Semisimple` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [apply_eq_of_mem_of_comm_of_isFinitelySemisimple_of_isNil](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant5519079a9ce0cb83796377e656eb9161e30392683fb6e5593f30c80ae6c63da8.lean/declarations/apply-eq-of-mem-of-comm-of-isfinitelysemisimple-of-isnil--8260bc4dba625f5ae6ca2a84.md) | 36 | `result-track:8260bc4dba625f5ae6ca2a846ea12f3bb8d169625f8e770de0481acf3c8d7491` |
| 2 | `lemma` | [IsFinitelySemisimple.genEigenspace_eq_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant5519079a9ce0cb83796377e656eb9161e30392683fb6e5593f30c80ae6c63da8.lean/declarations/isfinitelysemisimple-geneigenspace-eq-eigenspace--d7a5dbcd606c1f9cb3a3be1f.md) | 60 | `result-track:d7a5dbcd606c1f9cb3a3be1f340c6014edc6e987042617bb8dca795ac601a543` |
| 3 | `lemma` | [IsFinitelySemisimple.maxGenEigenspace_eq_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant5519079a9ce0cb83796377e656eb9161e30392683fb6e5593f30c80ae6c63da8.lean/declarations/isfinitelysemisimple-maxgeneigenspace-eq-eigenspace--0a6cd160dcbdaa946c48352b.md) | 68 | `result-track:0a6cd160dcbdaa946c48352bb1e7318462834d29c0a18fc3354cf5c866bd9e0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
