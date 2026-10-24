# Verification target: GRWTSK.Analysis.Resolvent.EndpointLowCenter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be2142bec0a6719178660e958b1a18c3e1360009",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Resolvent/EndpointLowCenter.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Resolvent/EndpointLowCenter.lean/index.md) · [Full source](../../../../mathematics/Analysis/Resolvent/EndpointLowCenter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be2142bec0a6719178660e958b1a18c3e1360009`.

Source path: `GRWTSK/Analysis/Resolvent/EndpointLowCenter.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Resolvent/EndpointLowCenter.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [determinant](../../../../mathematics/Analysis/Resolvent/EndpointLowCenter.lean/declarations/determinant--d4340d58a139419300dc65aa.md) | 13 | `declaration-track:d4340d58a139419300dc65aadb02ddb6dbe3b68abb657649a4f3dc27e3f8bc08` |
| 2 | `def` | [quadratic](../../../../mathematics/Analysis/Resolvent/EndpointLowCenter.lean/declarations/quadratic--42fd6c7e4066d1cc167aeafa.md) | 15 | `declaration-track:42fd6c7e4066d1cc167aeafaeea09d239adc62305f5787b2a86b8fb96b3078e6` |
| 3 | `theorem` | [complete_square](../../../../mathematics/Analysis/Resolvent/EndpointLowCenter.lean/declarations/complete-square--edf688dfe5e450967cb5fed4.md) | 17 | `result-track:edf688dfe5e450967cb5fed4298654dcf772dca012fcd74a055ebf49a2b3a78a` |
| 4 | `theorem` | [quadratic_nonneg](../../../../mathematics/Analysis/Resolvent/EndpointLowCenter.lean/declarations/quadratic-nonneg--d46ff0b22bff3e392b76d096.md) | 22 | `result-track:d46ff0b22bff3e392b76d0961f83eb8c4891c82cecc87995a60f4612e9878c8f` |
| 5 | `theorem` | [shifted_quadratic](../../../../mathematics/Analysis/Resolvent/EndpointLowCenter.lean/declarations/shifted-quadratic--5575a52a593b46ca68a9e4ab.md) | 28 | `result-track:5575a52a593b46ca68a9e4aba7771212458797681f03652cfe124f7b6d640eee` |
| 6 | `theorem` | [solved_energy](../../../../mathematics/Analysis/Resolvent/EndpointLowCenter.lean/declarations/solved-energy--db55e78573cef654d3afdde6.md) | 34 | `result-track:db55e78573cef654d3afdde64d41f443aad6d5b96ef4e5bafb9743f27abe422c` |
| 7 | `theorem` | [endpoint_inverse_left](../../../../mathematics/Analysis/Resolvent/EndpointLowCenter.lean/declarations/endpoint-inverse-left--ad74b03c901b3e2034dfe5e2.md) | 43 | `result-track:ad74b03c901b3e2034dfe5e26146762b6359538c99cd77d50af5665b4faf8d9e` |
| 8 | `theorem` | [endpoint_inverse_right](../../../../mathematics/Analysis/Resolvent/EndpointLowCenter.lean/declarations/endpoint-inverse-right--baba711844a885dd88ed4b17.md) | 52 | `result-track:baba711844a885dd88ed4b1705e5c1bc4aa126106cc503afab95dc9a5f18e01c` |
| 9 | `theorem` | [residual_reconstruction](../../../../mathematics/Analysis/Resolvent/EndpointLowCenter.lean/declarations/residual-reconstruction--5ee7922bd505a43aa53d5567.md) | 62 | `result-track:5ee7922bd505a43aa53d5567730a5ad8609fe1968db15296628837d939b55e93` |
| 10 | `theorem` | [lower_minor_slack](../../../../mathematics/Analysis/Resolvent/EndpointLowCenter.lean/declarations/lower-minor-slack--73d253c38dc32f500413e81a.md) | 69 | `result-track:73d253c38dc32f500413e81afcc338416261ef2898a1e879cc5d0462b5af4807` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
