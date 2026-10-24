# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron.Variant62f410ff10887346438e86038107f05ce94290e4c6831ec2814e6fb45ce98f33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36e7f1bd8f52282a6d9feb17b0e3ebacbcd37123",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron/Variant62f410ff10887346438e86038107f05ce94290e4c6831ec2814e6fb45ce98f33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron/Variant62f410ff10887346438e86038107f05ce94290e4c6831ec2814e6fb45ce98f33.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron/Variant62f410ff10887346438e86038107f05ce94290e4c6831ec2814e6fb45ce98f33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36e7f1bd8f52282a6d9feb17b0e3ebacbcd37123`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron/Variant62f410ff10887346438e86038107f05ce94290e4c6831ec2814e6fb45ce98f33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron/Variant62f410ff10887346438e86038107f05ce94290e4c6831ec2814e6fb45ce98f33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.WeilEF.FullLine` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [perron_per_n_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron/Variant62f410ff10887346438e86038107f05ce94290e4c6831ec2814e6fb45ce98f33.lean/declarations/perron-per-n-integral--78a9fd4f28394316e3c8fa3b.md) | 13 | `result-track:78a9fd4f28394316e3c8fa3bbe3496a9fe03c8f2b54e2b7d93288532df0a453c` |
| 2 | `theorem` | [perron_line_integral_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron/Variant62f410ff10887346438e86038107f05ce94290e4c6831ec2814e6fb45ce98f33.lean/declarations/perron-line-integral-swap--89f4905ccc3a37df3e7f2a60.md) | 78 | `result-track:89f4905ccc3a37df3e7f2a60311b3cb9717296580a259888368a50190c6d6138` |
| 3 | `theorem` | [perron_prime_side_line](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron/Variant62f410ff10887346438e86038107f05ce94290e4c6831ec2814e6fb45ce98f33.lean/declarations/perron-prime-side-line--6b1cf09348a717c013a4e0a9.md) | 136 | `result-track:6b1cf09348a717c013a4e0a9fe7bd63ea7d24a88db084a0c164494fa3ea84f2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
