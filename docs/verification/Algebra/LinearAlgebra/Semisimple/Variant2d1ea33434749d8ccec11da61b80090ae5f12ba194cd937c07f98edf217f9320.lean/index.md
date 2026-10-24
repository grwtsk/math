# Verification target: GRWTSK.Algebra.LinearAlgebra.Semisimple.Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8763f6e48519f6aa5d4bb205de3f5ab123ef2ce5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8763f6e48519f6aa5d4bb205de3f5ab123ef2ce5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [apply_eq_of_mem_of_comm_of_isFinitelySemisimple_of_isNil](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean/declarations/apply-eq-of-mem-of-comm-of-isfinitelysemisimple-of-isnil--823adad3cad18867b19f345f.md) | 48 | `result-track:823adad3cad18867b19f345f386cda4205caa412feed9b424dfd165c0bd423c5` |
| 2 | `lemma` | [IsFinitelySemisimple.genEigenspace_eq_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean/declarations/isfinitelysemisimple-geneigenspace-eq-eigenspace--68d5f4e88a90ecf8a78f2ed4.md) | 72 | `result-track:68d5f4e88a90ecf8a78f2ed401c37e0706db7c73e640dc1f93a80fc18ca4f2be` |
| 3 | `lemma` | [IsFinitelySemisimple.maxGenEigenspace_eq_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean/declarations/isfinitelysemisimple-maxgeneigenspace-eq-eigenspace--88816a3f4d7aedeac46aba56.md) | 80 | `result-track:88816a3f4d7aedeac46aba5646b22dd568f73b8a70329a82c6f2c689a273bacc` |
| 4 | `lemma` | [IsFinitelySemisimple.iSup_maxGenEigenspace_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean/declarations/isfinitelysemisimple-isup-maxgeneigenspace-eq-top-iff--6e93d6c3f9fec676e0ad83ac.md) | 86 | `result-track:6e93d6c3f9fec676e0ad83aca54dcc0745a8f70ac0c64e5d7100dbf27a57c759` |
| 5 | `lemma` | [IsSemisimple.iSup_maxGenEigenspace_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean/declarations/issemisimple-isup-maxgeneigenspace-eq-top-iff--883a84d9278e9a54ca401e57.md) | 91 | `result-track:883a84d9278e9a54ca401e570aad2b27377453ba1e8b3dff6b633250aedb7907` |
| 6 | `lemma` | [IsSemisimple.iSup_eigenspace_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean/declarations/issemisimple-isup-eigenspace-eq-top--4dcdc56676d06aa232ac2a59.md) | 100 | `result-track:4dcdc56676d06aa232ac2a598f88de802a17fe7b28f9fb01e6f7ea638513ef51` |
| 7 | `lemma` | [IsSemisimple.eq_zero_iff_forall_eigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean/declarations/issemisimple-eq-zero-iff-forall-eigenvalue--eaf6d67bfc803f791b734c03.md) | 105 | `result-track:eaf6d67bfc803f791b734c0323d2e3fe3d742e4afefb2df7ab0d2c99f9f07ba9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
