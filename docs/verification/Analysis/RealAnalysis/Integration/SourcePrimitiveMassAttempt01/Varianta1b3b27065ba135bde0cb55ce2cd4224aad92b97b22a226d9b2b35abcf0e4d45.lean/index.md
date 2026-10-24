# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourcePrimitiveMassAttempt01.Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a480cb2c4e351d9eb83df40b098998bc58395a8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a480cb2c4e351d9eb83df40b098998bc58395a8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveEnvelope` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [expHalfMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean/declarations/exphalfmoment-integrable--d4675b6a8b3e8814766ef140.md) | 15 | `result-track:d4675b6a8b3e8814766ef1404c6b36b48e0aca161b67cfe3427db44497e985c6` |
| 2 | `theorem` | [expHalfMoment_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean/declarations/exphalfmoment-integral--179eda85fa3afd5f1fa410f0.md) | 31 | `result-track:179eda85fa3afd5f1fa410f0050b09edbaff99c22b1bfd69e158294fb095989d` |
| 3 | `theorem` | [reflectedEnvelope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean/declarations/reflectedenvelope-integrable--98cbf2c3b94d1ff722048da5.md) | 44 | `result-track:98cbf2c3b94d1ff722048da5346fcc8164fcb470e2cafdec5d8a103a6614a055` |
| 4 | `theorem` | [reflectedEnvelope_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean/declarations/reflectedenvelope-integral--92e5ed11084514dcabca5384.md) | 55 | `result-track:92e5ed11084514dcabca53848f8b3e2acd4133c982bed208d42af9d0a4b6a62b` |
| 5 | `theorem` | [reflectedPrimitive_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean/declarations/reflectedprimitive-intervalintegrable--5b43d2c688b3e70f87da5739.md) | 71 | `result-track:5b43d2c688b3e70f87da57397805ff5ae29a327bf5f8743913194db1d2552531` |
| 6 | `theorem` | [reflectedPrimitive_mass_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean/declarations/reflectedprimitive-mass-bounds--f2d7463c3fc8dde3fdf8aad6.md) | 79 | `result-track:f2d7463c3fc8dde3fdf8aad6b15ddc6e46547f6adebaed1b200f83b3ee16ccd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
