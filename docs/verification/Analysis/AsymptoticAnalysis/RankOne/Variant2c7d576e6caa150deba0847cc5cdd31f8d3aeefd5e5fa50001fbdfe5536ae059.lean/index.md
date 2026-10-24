# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.RankOne.Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3a6d90b869227c85fe9af140ad10de4304d14da",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3a6d90b869227c85fe9af140ad10de4304d14da`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.Sylvester` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 32; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceNorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean/declarations/tracenorm--259f78768b25b631628be31a.md) | 52 | `declaration-track:259f78768b25b631628be31a69d9863d05e92350d7b06577502ba04829321ae6` |
| 2 | `lemma` | [traceNorm_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean/declarations/tracenorm-def--659d6fb42e0f8ba07180d380.md) | 55 | `result-track:659d6fb42e0f8ba07180d3800236ab61ea769889361af4e19bc81160d3c8c01a` |
| 3 | `lemma` | [traceNorm_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean/declarations/tracenorm-nonneg--3a834c566d3cbfc0d3a41a26.md) | 58 | `result-track:3a834c566d3cbfc0d3a41a264aa7a8547905e6bd8c7afb00d9a362aa0c6dfbf9` |
| 4 | `lemma` | [abs_rtrace_le_traceNorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean/declarations/abs-rtrace-le-tracenorm--c66e32e77f0d6873d5105d47.md) | 62 | `result-track:c66e32e77f0d6873d5105d47c6f2d8a9113f24ff0ee1928b0eaa253f830ad85b` |
| 5 | `lemma` | [frobSq_le_traceNorm_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean/declarations/frobsq-le-tracenorm-sq--9d5d90c6e9ef51515d8fe6d8.md) | 68 | `result-track:9d5d90c6e9ef51515d8fe6d8a2fe22bdea9c94a7174aa7ea067a80a94c876bf2` |
| 6 | `lemma` | [abs_eigenvalues_le_traceNorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean/declarations/abs-eigenvalues-le-tracenorm--9203dce2cebb05f3d98f4353.md) | 77 | `result-track:9203dce2cebb05f3d98f43539ee06aa4f60ef5c264ec0e529a4a98eee6526e38` |
| 7 | `lemma` | [mul_le_half_sq_add_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean/declarations/mul-le-half-sq-add-sq--1b396227abbb08d04ca34e29.md) | 82 | `result-track:1b396227abbb08d04ca34e2962a08052a895b6bf3183eeed86f336c6811f9c48` |
| 8 | `theorem` | [traceNorm_le_of_hasSum_vecMulVec](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean/declarations/tracenorm-le-of-hassum-vecmulvec--7e7f8b3d8da57b4c7d49b1a5.md) | 89 | `result-track:7e7f8b3d8da57b4c7d49b1a562eba701a61a1031b0a9faf58d9a17ad8a416ca9` |
| 9 | `theorem` | [abs_eigenvalues_le_of_hasSum_vecMulVec](../../../../../mathematics/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean/declarations/abs-eigenvalues-le-of-hassum-vecmulvec--010b343f083abbcd71578f04.md) | 177 | `result-track:010b343f083abbcd71578f0489b44ddf947161fc22a4a0487eea8f1d8e395409` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
