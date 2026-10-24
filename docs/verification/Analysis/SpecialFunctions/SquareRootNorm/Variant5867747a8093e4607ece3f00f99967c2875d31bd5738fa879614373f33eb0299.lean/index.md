# Verification target: GRWTSK.Analysis.SpecialFunctions.SquareRootNorm.Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3780f1d2ccfc9c51bb6d2c45871105008054806f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3780f1d2ccfc9c51bb6d2c45871105008054806f`.

Source path: `GRWTSK/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.PurityBridge` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareRootWeight](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean/declarations/squarerootweight--90e71dc2a2c363ed9bbc6eeb.md) | 24 | `declaration-track:90e71dc2a2c363ed9bbc6eebf1315f35a79b80d82a490357585d48576c375a2f` |
| 2 | `structure` | [SquareRootNormCertificate](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean/declarations/squarerootnormcertificate--403117b2db79d922f3fc4124.md) | 28 | `declaration-track:403117b2db79d922f3fc4124aaafed682c44deb853b1a575dbc22fed92e8c0c5` |
| 3 | `constant` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean/declarations/constant--9e5e6f1e58019cca27c1fd1c.md) | 32 | `declaration-track:9e5e6f1e58019cca27c1fd1ccfe3db8e6fa80a1b52e95d939595bd81ef40e58c` |
| 4 | `constant` | [*](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean/declarations/anonymous--bddaac1828210735537954d1.md) | 38 | `declaration-track:bddaac1828210735537954d17cace10bf37992a933a5f6db83a7ee49d13e7bcd` |
| 5 | `def` | [SquareRootNormFinite](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean/declarations/squarerootnormfinite--634163b5655686be956138fc.md) | 41 | `declaration-track:634163b5655686be956138fc165aacc39e070246fdb3dad921d0364af2221da6` |
| 6 | `constant` | [*](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean/declarations/anonymous--20b718dc2d2f8bc28275ceb2.md) | 48 | `declaration-track:20b718dc2d2f8bc28275ceb2e01f21136930c9820c0b68c15297c2918701ac74` |
| 7 | `theorem` | [squareRootNorm_finite](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean/declarations/squarerootnorm-finite--a81195a8bb3d3b7d6cb33ba7.md) | 51 | `result-track:a81195a8bb3d3b7d6cb33ba7f00054a6fe16dec20bc29408a4bea2f689ed19c3` |
| 8 | `structure` | [BitfieldSquareRootBudget](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean/declarations/bitfieldsquarerootbudget--6baac0772005b36cf9e776e4.md) | 60 | `declaration-track:6baac0772005b36cf9e776e4077275c530bcedecb3fbbdd4d33b3de758f8002f` |
| 9 | `constant` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean/declarations/constant--e9a7544b457dca07457cac6a.md) | 65 | `declaration-track:e9a7544b457dca07457cac6a20ba674cfb64c3342a34bc9f3468126a82279998` |
| 10 | `constant` | [*](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant5867747a8093e4607ece3f00f99967c2875d31bd5738fa879614373f33eb0299.lean/declarations/anonymous--4bae5cecb61b56d1617e698f.md) | 69 | `declaration-track:4bae5cecb61b56d1617e698fdb69b08c99597552331a21a4f9ca1a04f0a3e51d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
