# Verification target: GRWTSK.NumberTheory.Moebius.SquareDivisorMobiusSquarefreeHalf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "224cedfa623171785bb8c46480e2a00eecd398c2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `224cedfa623171785bb8c46480e2a00eecd398c2`.

Source path: `GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionDivisorSquareSieve`](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [squareDivisorMobiusSum_eq_one_of_squarefree](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean/declarations/squaredivisormobiussum-eq-one-of-squarefree--6be9e52c510378c4e36c2a1a.md) | 41 | `result-track:6be9e52c510378c4e36c2a1a5594fb8bdbb8956541b84b34d88ccc35b7ca2079` |
| 2 | `theorem` | [squarefreeIndicatorReal_eq_squareDivisorMobiusSum_of_squarefree](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean/declarations/squarefreeindicatorreal-eq-squaredivisormobiussum-of-squarefree--05221cb2b181c9667410665c.md) | 60 | `result-track:05221cb2b181c9667410665c7d6c03778773744cdb299f6d87f48782272a0c5c` |
| 3 | `structure` | [NonSquarefreeSquareDivisorMobiusCancellation](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean/declarations/nonsquarefreesquaredivisormobiuscancellation--a6a3d7bd385ddfffc78cafbc.md) | 71 | `declaration-track:a6a3d7bd385ddfffc78cafbc8648710fb353c49df5f23641ae7f66e113459e64` |
| 4 | `def` | [squarefreeDivisorSquareMobiusIdentity_of_nonsquarefreeCancellation](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean/declarations/squarefreedivisorsquaremobiusidentity-of-nonsquarefreecancellation--e1fce1ba3c24b91266ef3f86.md) | 78 | `declaration-track:e1fce1ba3c24b91266ef3f86fb244579c4102b2ffd8878352cf8ae40d759de11` |
| 5 | `theorem` | [exists_squarefreeDivisorSquareMobiusIdentity_of_exists_nonsquarefreeCancellation](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusSquarefreeHalf.lean/declarations/exists-squarefreedivisorsquaremobiusidentity-of-exists-nonsquarefreecanc--c69de492a3ee462a347addf0.md) | 91 | `result-track:c69de492a3ee462a347addf0c68f964f14c5fc3a65c33f5b0206b5386196404a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
