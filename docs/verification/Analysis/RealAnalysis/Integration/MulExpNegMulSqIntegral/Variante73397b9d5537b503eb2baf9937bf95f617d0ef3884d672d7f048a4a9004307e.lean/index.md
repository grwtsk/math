# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MulExpNegMulSqIntegral.Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80d676451ef5958ccabab3f12cb338eb19fc464a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80d676451ef5958ccabab3f12cb338eb19fc464a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_mulExpNegMulSq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean/declarations/integrable-mulexpnegmulsq-comp--7e5e1a1de1c10e8b3b963ac7.md) | 51 | `result-track:7e5e1a1de1c10e8b3b963ac7cf400b3516943d6caaa5c990fc915583ca8985e4` |
| 2 | `theorem` | [integrable_mulExpNegMulSq_comp_restrict_of_isCompact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean/declarations/integrable-mulexpnegmulsq-comp-restrict-of-iscompact--49433a611620e034e63fb592.md) | 56 | `result-track:49433a611620e034e63fb5926bbcb0d295d9e251f8cde9d2d2412f5834c450dd` |
| 3 | `theorem` | [tendsto_integral_mulExpNegMulSq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean/declarations/tendsto-integral-mulexpnegmulsq-comp--0f6d81327348b367370674c6.md) | 63 | `result-track:0f6d81327348b367370674c677df409def06c2fdc61c7ceef8b44621b60a5b4f` |
| 4 | `theorem` | [tendsto_integral_mul_one_add_inv_smul_sq_pow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean/declarations/tendsto-integral-mul-one-add-inv-smul-sq-pow--2cf43b5ea8629b4dc98c7919.md) | 81 | `result-track:2cf43b5ea8629b4dc98c791927cb8b7d88bc22f6ece7665a35a0ada34f872e46` |
| 5 | `theorem` | [integral_mulExpNegMulSq_comp_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean/declarations/integral-mulexpnegmulsq-comp-eq--0fff84396d152bd4d6b7db21.md) | 119 | `result-track:0fff84396d152bd4d6b7db21804b5c1b7a6af5169e4283cee838b39fdc9d75f9` |
| 6 | `theorem` | [abs_integral_sub_setIntegral_mulExpNegMulSq_comp_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean/declarations/abs-integral-sub-setintegral-mulexpnegmulsq-comp-lt--aa485e061db6fd004a478f1c.md) | 134 | `result-track:aa485e061db6fd004a478f1c2029af6c38d1afe623e2131d6090df9767038957` |
| 7 | `theorem` | [abs_setIntegral_mulExpNegMulSq_comp_sub_le_mul_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean/declarations/abs-setintegral-mulexpnegmulsq-comp-sub-le-mul-measure--c038f52024b50cbe9d8793b3.md) | 143 | `result-track:c038f52024b50cbe9d8793b32aaaf3cc7beaaa399c2614ba4b1632e0f017be5d` |
| 8 | `theorem` | [dist_integral_mulExpNegMulSq_comp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean/declarations/dist-integral-mulexpnegmulsq-comp-le--183d4455cadb3a7a29b7dbd3.md) | 160 | `result-track:183d4455cadb3a7a29b7dbd3f6b9b08102ff3b51c229ec6e67614f04afbdbf2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
