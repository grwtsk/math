# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Nonarchimedean.Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "906517a532b90b4a33ebcc11e83483af1bd05c90",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `906517a532b90b4a33ebcc11e83483af1bd05c90`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.GroupCompletion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.Completion` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cauchySeq_prod_of_tendsto_cofinite_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440.lean/declarations/cauchyseq-prod-of-tendsto-cofinite-one--70b6cfa35ff6a8c4c83f153f.md) | 47 | `result-track:70b6cfa35ff6a8c4c83f153f9c3e6280fc9ad496e30d4c6ec863b726a793e07b` |
| 2 | `lemma` | [cauchySeq_of_tendsto_div_nhds_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440.lean/declarations/cauchyseq-of-tendsto-div-nhds-one--678837d369450f4f5625bd40.md) | 71 | `result-track:678837d369450f4f5625bd403e685d3da09aa81f641dfaab9b9650defe911cda` |
| 3 | `theorem` | [multipliable_of_tendsto_cofinite_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440.lean/declarations/multipliable-of-tendsto-cofinite-one--b2e11c9988fc767e26411f78.md) | 97 | `result-track:b2e11c9988fc767e26411f7867d2c835093c095f70466d15e1b140ce9f3f1292` |
| 4 | `theorem` | [multipliable_iff_tendsto_cofinite_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440.lean/declarations/multipliable-iff-tendsto-cofinite-one--db34ef850d730513342b5824.md) | 106 | `result-track:db34ef850d730513342b582419d6c0ac2325db904b286e1c4951b8bd1955b396` |
| 5 | `theorem` | [Summable.mul_of_complete_nonarchimedean](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440.lean/declarations/summable-mul-of-complete-nonarchimedean--68a4f9133fce7b0d58a3b421.md) | 120 | `result-track:68a4f9133fce7b0d58a3b42153fb0bfdb766f30c66fa8207f60e52ef768da945` |
| 6 | `theorem` | [HasSum.mul_of_nonarchimedean](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440.lean/declarations/hassum-mul-of-nonarchimedean--d736b44222011bd8bfb66ffe.md) | 128 | `result-track:d736b44222011bd8bfb66ffe84c23aaff8df2c9495abb766ec0faa75a89f56ff` |
| 7 | `theorem` | [Summable.mul_of_nonarchimedean](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440.lean/declarations/summable-mul-of-nonarchimedean--6886bd6c9c35333d88128b83.md) | 137 | `result-track:6886bd6c9c35333d88128b83b7be39cc9dbfd5b0163f0b3cdc82bba62a0676bb` |
| 8 | `theorem` | [tsum_mul_tsum_of_nonarchimedean](../../../../../mathematics/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant405874ee9f43694bffcd1d522e203c1596042b58a778a16ba18b0060914ae440.lean/declarations/tsum-mul-tsum-of-nonarchimedean--e05e24a1581d138fbb42ded8.md) | 141 | `result-track:e05e24a1581d138fbb42ded84d88a043ae45b05ee737d3986f35598d22f36d03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
