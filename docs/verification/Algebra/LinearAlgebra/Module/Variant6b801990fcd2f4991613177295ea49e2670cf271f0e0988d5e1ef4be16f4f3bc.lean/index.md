# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba7db9bb5a1968affdf5f99759b773c33846e2ad",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba7db9bb5a1968affdf5f99759b773c33846e2ad`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc.lean.json)

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
| 1 | `theorem` | [isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc.lean/declarations/isscalartower--80a8bff64ec5755ba28aff9e.md) | 42 | `result-track:80a8bff64ec5755ba28aff9e35afb2a1ca7beb656698c679b21ef46939e2d7f7` |
| 2 | `theorem` | [smulCommClass](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc.lean/declarations/smulcommclass--e846afe779016aff89e1f8ca.md) | 46 | `result-track:e846afe779016aff89e1f8caaf9368357ad28cccedf22a24cfb6c649d780065c` |
| 3 | `theorem` | [isCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc.lean/declarations/iscentralscalar--a9f29653c8cdb61aac72f3ad.md) | 54 | `result-track:a9f29653c8cdb61aac72f3ad60b467b6ec501d69aa519efc0acc6db3502896b4` |
| 4 | `abbrev` | [distribSMul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc.lean/declarations/distribsmul--7f2e85860458bd01c00c03c3.md) | 61 | `declaration-track:7f2e85860458bd01c00c03c3923fa73c1a8b220e7410136f7465f6367bc66a10` |
| 5 | `abbrev` | [mulAction](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc.lean/declarations/mulaction--bc91807ad05af204a11ff24b.md) | 70 | `declaration-track:bc91807ad05af204a11ff24b17738fbc234c01b83c7f27d991398ce4f4829a47` |
| 6 | `abbrev` | [distribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc.lean/declarations/distribmulaction--c6fd2923912331d43304f383.md) | 76 | `declaration-track:c6fd2923912331d43304f3838c0cd456f4999b50de46089f087b243142af002a` |
| 7 | `abbrev` | [module](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc.lean/declarations/module--5d089f4120d933339c670943.md) | 84 | `declaration-track:5d089f4120d933339c670943f25c8064179171c46afde3902ee5ff1b6f493042` |
| 8 | `theorem` | [moduleIsTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6b801990fcd2f4991613177295ea49e2670cf271f0e0988d5e1ef4be16f4f3bc.lean/declarations/moduleistorsionfree--9fe70e0cd039e1fb68374164.md) | 88 | `result-track:9fe70e0cd039e1fb68374164c365096609c8ce9c78d17a43ea44f0cc316947ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
