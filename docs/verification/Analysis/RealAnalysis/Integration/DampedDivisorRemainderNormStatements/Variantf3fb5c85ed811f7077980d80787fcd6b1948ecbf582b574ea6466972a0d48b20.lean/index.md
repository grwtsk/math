# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DampedDivisorRemainderNormStatements.Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23d706fc79723af60bf0efb7b79e745b0666fc93",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23d706fc79723af60bf0efb7b79e745b0666fc93`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorRemainderCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/declarations/divisorremaindercore--f83f98a71f510706e45d4576.md) | 22 | `declaration-track:f83f98a71f510706e45d45769fe7dfc5e089992efc87f2257bba47ec59a75634` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/declarations/divisorremaindercore-measurable--79ef3c343bc5ef1c7a691885.md) | 28 | `result-track:79ef3c343bc5ef1c7a6918858b3bbb00af37eac1423f49af1a426ddd405bce0d` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/declarations/divisorremaindercore-sq-le--6883ea7a25ec33dd1d3a2ba0.md) | 40 | `result-track:6883ea7a25ec33dd1d3a2ba0a4e1fa0f9276b819ef5af1938123493c67b70284` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/declarations/remaindermajorant-integrable--f437b6987a462ad1224d575c.md) | 69 | `result-track:f437b6987a462ad1224d575c2d83703a2ce3c0fa6ee2be3cba6290c5a48ab663` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/declarations/divisorremaindercore-memlp--6af551fe8f40fbf78565fcd8.md) | 76 | `result-track:6af551fe8f40fbf78565fcd8b123e7357a4632a5660e6fe134ea464cdd19704b` |
| 6 | `def` | [divisorRemainderVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/declarations/divisorremaindervector--fb17b3c2ae1ed414081b89a4.md) | 87 | `declaration-track:fb17b3c2ae1ed414081b89a4069ad59b56b6536c401c1bd2107c6d39dc1b0abc` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/declarations/divisorremaindervector-norm-le--46b63fc1321cdf9bdd31468b.md) | 91 | `result-track:46b63fc1321cdf9bdd31468be61058dc584524192111ec349a871fca101374a7` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/declarations/sourcemultiplier-divisorremainder-norm-le--bb51786e85760dc066e41dc0.md) | 114 | `result-track:bb51786e85760dc066e41dc0399b819d6e0cf485d87d9d8e8feb26cce5d99721` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/declarations/example--ce3ce61d4b28920908973976.md) | 130 | `declaration-track:ce3ce61d4b28920908973976dce60db5c6451ffa4b4af760f8a274c1da0373a0` |
| 10 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/declarations/example--8b60a55d80796d5e5acc304f.md) | 136 | `declaration-track:8b60a55d80796d5e5acc304fddd55790cc893d85f9207e76b0306c8130d5163d` |
| 11 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/declarations/example--1d3e3f56240ccc2640d3221f.md) | 140 | `declaration-track:1d3e3f56240ccc2640d3221f136d940edbb97e1a6bccf8c21b792a8753fddf8c` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/declarations/example--4ea3b3f2bd53705ea16023b4.md) | 144 | `declaration-track:4ea3b3f2bd53705ea16023b4b87575892e4f3412c052c1b45d7f17573b4137cd` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/declarations/example--2e090f121b451ae1e101fe5f.md) | 148 | `declaration-track:2e090f121b451ae1e101fe5f0033036e2ba4f1c8a867cb8c563ae830b1b40fd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
