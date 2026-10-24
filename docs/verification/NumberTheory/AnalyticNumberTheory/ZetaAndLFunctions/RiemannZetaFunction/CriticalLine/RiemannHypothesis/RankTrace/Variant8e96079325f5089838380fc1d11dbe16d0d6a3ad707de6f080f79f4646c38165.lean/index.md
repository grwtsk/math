# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RankTrace.Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a0a616e0c3e31734ce9f046659c5fc3a882e9ee",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a0a616e0c3e31734ce9f046659c5fc3a882e9ee`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.PosIndex` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.LinAlg.VonNeumann` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.LinAlg.HermitianPosPart` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sq_ge_linear](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/declarations/sq-ge-linear--6f108b411baf0a400dc4b812.md) | 60 | `result-track:6f108b411baf0a400dc4b812a38cd4f11c56db06a1359e52b69e01a0103d0566` |
| 2 | `lemma` | [sq_ge_linear'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/declarations/sq-ge-linear--748dab6bb195f173ecd3c8a4.md) | 64 | `result-track:748dab6bb195f173ecd3c8a405af6c4b2e90bca0c4bbb55ff4d32d7c341ee446` |
| 3 | `lemma` | [sum_sq_diff_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/declarations/sum-sq-diff-lower--16d877dc6245c4433e380043.md) | 70 | `result-track:16d877dc6245c4433e380043cfe98cb024b68d559856739dbb1d3b77a4e9602c` |
| 4 | `lemma` | [sum_sq_lower_of_card_pos_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/declarations/sum-sq-lower-of-card-pos-le--78f2cde3182ada82adb6fc59.md) | 95 | `result-track:78f2cde3182ada82adb6fc59360371f59fce0b3aafe95f35444a5e9b9aa07217` |
| 5 | `lemma` | [trace_mul_nonneg_of_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/declarations/trace-mul-nonneg-of-possemidef--83fa60d0f780420266b04b23.md) | 122 | `result-track:83fa60d0f780420266b04b230dbbb7209bd00bb1cf72c68ac28873374d9bd48e` |
| 6 | `lemma` | [re_trace_mul_comm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/declarations/re-trace-mul-comm--b29fb706fe8cb7e4aa0c7487.md) | 140 | `result-track:b29fb706fe8cb7e4aa0c7487ddf744398d1e8afc66aadf58a0f8f90587fbbda9` |
| 7 | `lemma` | [frobSq_add_hermitian](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/declarations/frobsq-add-hermitian--b0b7f09cb3a1327872b98554.md) | 146 | `result-track:b0b7f09cb3a1327872b98554cece74fdfbeec3941c610747779cf1768fea0bb8` |
| 8 | `lemma` | [rtrace_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/declarations/rtrace-add--c319604a108a49e0eff1b98e.md) | 156 | `result-track:c319604a108a49e0eff1b98e2c8815cb68ac88d3455eaf35ef574a29f22e9b3f` |
| 9 | `lemma` | [rtrace_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/declarations/rtrace-sub--57ff96f573736c8c45ec6bf1.md) | 160 | `result-track:57ff96f573736c8c45ec6bf1fbe454787f8a3052c694928b47495b89a17d3735` |
| 10 | `theorem` | [rank_trace_ineq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/declarations/rank-trace-ineq--28b94abe3de3a0d2ae0b285c.md) | 171 | `result-track:28b94abe3de3a0d2ae0b285c46de759ae0811bf46b42093bffcd963ec5a48fb3` |
| 11 | `theorem` | [rank_trace_ineq_two](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/declarations/rank-trace-ineq-two--78a7c01e890271ca4bbfec3f.md) | 268 | `result-track:78a7c01e890271ca4bbfec3fa12928d940162f52021086df838a8f3d4be21134` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
