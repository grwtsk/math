# Verification target: GRWTSK.Algebra.MatrixReducerIR.Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4aa43b819fc0b2187fc0fee3e542d361abe89f23",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/index.md) · [Full source](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4aa43b819fc0b2187fc0fee3e542d361abe89f23`.

Source path: `GRWTSK/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.ReducerIR` — import line 1; external provider; requires a separately pinned dependency.
- `FilesystemCodec.FieldRows` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObserverFactor` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rep](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/declarations/rep--aae6f15611d11b1f11bc4491.md) | 29 | `declaration-track:aae6f15611d11b1f11bc449154a7b3e7a2141f968a1454f6c4a2f5027be186cb` |
| 2 | `def` | [Rep.ofRuntime](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/declarations/rep-ofruntime--687483992c64c52e8b79ab50.md) | 41 | `declaration-track:687483992c64c52e8b79ab5026c2b91c2cce7f003d8fc91e728ed86be12e834e` |
| 3 | `def` | [Rep.Denote](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/declarations/rep-denote--1e36048c1bba22b2e2b81213.md) | 47 | `declaration-track:1e36048c1bba22b2e2b81213dc9fbbc141bff5ebd2c2f7491972439b646e36e9` |
| 4 | `inductive` | [ReducerIR](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/declarations/reducerir--11d42a8d1b1a70b80b685bfb.md) | 59 | `declaration-track:11d42a8d1b1a70b80b685bfbc66310f5e9ab78c2442770ab2c21875f87277fe4` |
| 5 | `def` | [xorFamily](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/declarations/xorfamily--45b579929ff34d015299dd96.md) | 93 | `declaration-track:45b579929ff34d015299dd96c2886d6c27331ae2a2a7faa5a8214043ee04926f` |
| 6 | `def` | [eval](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/declarations/eval--82f80d4a7893591cf8f6d4ee.md) | 97 | `declaration-track:82f80d4a7893591cf8f6d4ee914bd45db17948241a0613ae698288dfea902ade` |
| 7 | `theorem` | [eval_identity](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/declarations/eval-identity--032d9ba8020b4dcf33c5a3e9.md) | 128 | `result-track:032d9ba8020b4dcf33c5a3e956d206dc77fe9be7c73167d424153ca3c5bf82cb` |
| 8 | `theorem` | [eval_compose](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/declarations/eval-compose--641c0a2b1512c5dada7049d9.md) | 133 | `result-track:641c0a2b1512c5dada7049d9f6fcb79823b5732bef00d7a0c667d0286c3d99c0` |
| 9 | `def` | [describe](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/declarations/describe--0fa025b6621c5ac68a29409a.md) | 141 | `declaration-track:0fa025b6621c5ac68a29409acf52cb2c4728d31a5b28f92e2af43a80e8a6ae64` |
| 10 | `def` | [ofRuntime](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/declarations/ofruntime--26c24e635653bff36af42109.md) | 168 | `declaration-track:26c24e635653bff36af4210973a61e21a55b2523d0107ceab825c2e175d38d6e` |
| 11 | `structure` | [CertifiedReducerIR](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/declarations/certifiedreducerir--c3a488cf57ec1c16f301844b.md) | 194 | `declaration-track:c3a488cf57ec1c16f301844b5a7051cd47b73358176a82d15d93aa6ea6e9b884` |
| 12 | `def` | [toObserverReducer](../../../../mathematics/Algebra/MatrixReducerIR/Variant98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717.lean/declarations/toobserverreducer--6ca4d455f34827d2f3e8861d.md) | 213 | `declaration-track:6ca4d455f34827d2f3e8861d7f6d42a143c2b6c737f2319863795513d9ed031a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
