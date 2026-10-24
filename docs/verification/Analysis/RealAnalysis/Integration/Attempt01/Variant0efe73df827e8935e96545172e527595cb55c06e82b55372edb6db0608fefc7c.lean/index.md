# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt01.Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92b829b7d74265ea0cd16c552f8f2905553fb3ed",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92b829b7d74265ea0cd16c552f8f2905553fb3ed`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeightedPrimeAbel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.GeomSum` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Summable` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mangoldtError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/mangoldterror--ff1b67d29182da5dd9e217b8.md) | 29 | `declaration-track:ff1b67d29182da5dd9e217b88de32df9d10213bc82a7ea9f838a4e256ce8f3c9` |
| 2 | `abbrev` | [primeError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/primeerror--e84e51928fc08470aa753eab.md) | 31 | `declaration-track:e84e51928fc08470aa753eab1a6ec8e3cb784cea2bcf5faa26e24c7554b85e41` |
| 3 | `abbrev` | [E₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/e--3920e97e9b8bcf12e7406e13.md) | 34 | `declaration-track:3920e97e9b8bcf12e7406e132857d97b84ef53eb0bc3835a89557bccfa5690fd` |
| 4 | `lemma` | [E₁.summand_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/e-summand-nonneg--3006dc301c7e6b16e8ef9e76.md) | 36 | `result-track:3006dc301c7e6b16e8ef9e76e4fd8e8ee7e970884084b7021183995eb66c6b56` |
| 5 | `theorem` | [E₁.summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/e-summable--d4cba323dba1673a0df6bc22.md) | 43 | `result-track:d4cba323dba1673a0df6bc2251d1b4c23fc92fc7ae1717de8ceccd8534d15a28` |
| 6 | `lemma` | [antitoneOn_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/antitoneon-log-div-sq--93231bca8221a424705b0e29.md) | 67 | `result-track:93231bca8221a424705b0e29e18a4f312fe868d4e85e71aa7ad597b4a1cd96b3` |
| 7 | `lemma` | [log_div_sq_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/log-div-sq-nonneg--1d934bb0945dfd536393ed0a.md) | 88 | `result-track:1d934bb0945dfd536393ed0a4bd1a835f03a8836a89766cbc652c84a9f998155` |
| 8 | `lemma` | [log_div_sq_is_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/log-div-sq-is-deriv--cec8bb5bb5a7c3014b10ee43.md) | 92 | `result-track:cec8bb5bb5a7c3014b10ee4343dd1f9ff75ebf8f9f14beeeb99a551a637878c5` |
| 9 | `lemma` | [tendsto_antideriv_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/tendsto-antideriv-log-div-sq--ca3f951767ff52ebd402e6aa.md) | 105 | `result-track:ca3f951767ff52ebd402e6aa3f534de57f6c6e3f8439ddd10b00e547971b50cd` |
| 10 | `lemma` | [integrableOn_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/integrableon-log-div-sq--0de407073bd7d4385ae61e39.md) | 116 | `result-track:0de407073bd7d4385ae61e39f623b8f5d077492abb4e66c2be9f401edc847c49` |
| 11 | `lemma` | [integral_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/integral-log-div-sq--7bc3bb9b05be1c3f75e35955.md) | 120 | `result-track:7bc3bb9b05be1c3f75e35955e4f3b4b25d93d305701e13f667c9d2d9d8ea7f8f` |
| 12 | `lemma` | [summable_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/summable-log-div-sq--9bfb19743e15dd7de7ce25a1.md) | 125 | `result-track:9bfb19743e15dd7de7ce25a11ed943e37ae35b24f7cc136f9bdfe69439a170b6` |
| 13 | `lemma` | [sum_log_div_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/sum-log-div-sq-le--011b6569eca9372ab998d713.md) | 135 | `result-track:011b6569eca9372ab998d7133754a79bf1d0a178a784a0224de9f1e8a8c08f41` |
| 14 | `theorem` | [E₁.le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/e-le--3797f331d7fe454cf5c1e040.md) | 149 | `result-track:3797f331d7fe454cf5c1e040261bf510272c8424554b0178e96485e0afc785eb` |
| 15 | `theorem` | [E₁.nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/e-nonneg--e15c5dd893e8d106f369a6bd.md) | 175 | `result-track:e15c5dd893e8d106f369a6bd186221828a576e8aa159b10d04da3987417d1bab` |
| 16 | `theorem` | [mangoldtError.le_primeError_add_E₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant0efe73df827e8935e96545172e527595cb55c06e82b55372edb6db0608fefc7c.lean/declarations/mangoldterror-le-primeerror-add-e--96ee86902558083595fd64a3.md) | 178 | `result-track:96ee86902558083595fd64a3585b493a204bcefd57e4500f60acff38814612de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
