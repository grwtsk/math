# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNTMoment.Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31f0ed5945685340d1a185e60b5ce2666f65e2f2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31f0ed5945685340d1a185e60b5ce2666f65e2f2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MediumPNTLogError` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [psiRelativeError_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean/declarations/psirelativeerror-measurable--785476241879ed108e3b910f.md) | 19 | `result-track:785476241879ed108e3b910fb78cc35b5e345a26cdacfe8fe6ac2e58a051ad93` |
| 2 | `theorem` | [psiRelativeError_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean/declarations/psirelativeerror-bound--615381ae30d8d0b670d62569.md) | 25 | `result-track:615381ae30d8d0b670d62569dc1ae06ed95f4ace8637a59cd357c12ab81f87c5` |
| 3 | `theorem` | [inverse_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean/declarations/inverse-square-integrable--d954154a8269db3b318e1f22.md) | 41 | `result-track:d954154a8269db3b318e1f22d0080a1cd634407997172f403f2c13e2a38025f1` |
| 4 | `theorem` | [psiRelativeError_mul_pow_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean/declarations/psirelativeerror-mul-pow-integrable--ecf6fa3f69975aa43fe7c120.md) | 50 | `result-track:ecf6fa3f69975aa43fe7c120ba168078da6500a77f030bda7f553388dee4307b` |
| 5 | `theorem` | [psiRelativeError_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean/declarations/psirelativeerror-integrable--a1a0189c0913616e75f5c181.md) | 87 | `result-track:a1a0189c0913616e75f5c1818844ef741750f2d069b6b3e19a977d78ef7ac794` |
| 6 | `theorem` | [psiRelativeError_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean/declarations/psirelativeerror-first-moment-integrable--9e1377fe0c6162cdae94f2bf.md) | 91 | `result-track:9e1377fe0c6162cdae94f2bf2a1f29cce98135fd48ecdfc3a6ce7dd7f5d49646` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
