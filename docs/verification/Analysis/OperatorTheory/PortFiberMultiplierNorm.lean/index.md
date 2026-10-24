# Verification target: GRWTSK.Interfaces.PortFiberMultiplierNorm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94d46d98289b96211f1fd9c7616bbb9228f280c8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberMultiplierNorm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorm.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94d46d98289b96211f1fd9c7616bbb9228f280c8`.

Source path: `GRWTSK/Interfaces/PortFiberMultiplierNorm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberMultiplierNorm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberMultiplierRepresentation`](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierRepresentation.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorm.lean/declarations/schemaversion--5ec457c600d7d3e1312e120c.md) | 34 | `declaration-track:5ec457c600d7d3e1312e120c89700704f3cf1b3fd74da933227cd25723fad0c3` |
| 2 | `inductive` | [AddedIndex](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorm.lean/declarations/addedindex--38f3ff98414474fa402ce097.md) | 36 | `declaration-track:38f3ff98414474fa402ce0972a976d488c1c9546e47dff5739ea7261a512620a` |
| 3 | `def` | [AddedClaim](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorm.lean/declarations/addedclaim--0645858806f34efb65285fae.md) | 47 | `declaration-track:0645858806f34efb65285faee75c9b37c2a39795db6b8c62348b408922b842a2` |
| 4 | `theorem` | [addedClaim_proof](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorm.lean/declarations/addedclaim-proof--80dbe3e243cc03c0053a9ced.md) | 97 | `result-track:80dbe3e243cc03c0053a9ced2aeb82b82d5702888fde14949320df4c681c4fed` |
| 5 | `def` | [portfolio](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorm.lean/declarations/portfolio--2f649636293c00953d620b6a.md) | 130 | `declaration-track:2f649636293c00953d620b6afa50699168c90cf17710e882eb2993e410e79c72` |
| 6 | `def` | [architecture](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorm.lean/declarations/architecture--6b1f79375963dc61d363ac03.md) | 133 | `declaration-track:6b1f79375963dc61d363ac033beac43e5034834b4d4c3585dae2169b1fc07eaf` |
| 7 | `abbrev` | [PreviousIndex](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorm.lean/declarations/previousindex--ccf8d81fc577c1c2e60544c6.md) | 137 | `declaration-track:ccf8d81fc577c1c2e60544c6ab078be57c85118eb9113e42d02bb0e981bc8971` |
| 8 | `theorem` | [original_branch_unchanged](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorm.lean/declarations/original-branch-unchanged--114f79e62b1f0ccdbafd63ee.md) | 141 | `result-track:114f79e62b1f0ccdbafd63ee94510ef314baf4f0e0e3cd93b50c4b1c0cf9536c` |
| 9 | `theorem` | [new_branch_proved](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorm.lean/declarations/new-branch-proved--a1756e01802dc6fd3e77e859.md) | 147 | `result-track:a1756e01802dc6fd3e77e859702f7607f7d10fb73e9063387e4a22d45b15094c` |
| 10 | `theorem` | [target_unchanged](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorm.lean/declarations/target-unchanged--12013cdbc647d88290911baa.md) | 152 | `result-track:12013cdbc647d88290911baaf08735327ac8e579acd1aea6326817eaa3b47275` |
| 11 | `theorem` | [retarget_preserves_new](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorm.lean/declarations/retarget-preserves-new--6b16c563c96d8ef9aba26ed7.md) | 157 | `result-track:6b16c563c96d8ef9aba26ed7983e96590a5ef413e6d54c575eee54cf3ac94bb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
