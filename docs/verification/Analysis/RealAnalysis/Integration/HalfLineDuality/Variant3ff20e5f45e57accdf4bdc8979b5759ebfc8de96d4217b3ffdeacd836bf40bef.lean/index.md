# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfLineDuality.Variant3ff20e5f45e57accdf4bdc8979b5759ebfc8de96d4217b3ffdeacd836bf40bef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1799e92d18f4e214ea334468a297e1c92bd0edd5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant3ff20e5f45e57accdf4bdc8979b5759ebfc8de96d4217b3ffdeacd836bf40bef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant3ff20e5f45e57accdf4bdc8979b5759ebfc8de96d4217b3ffdeacd836bf40bef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant3ff20e5f45e57accdf4bdc8979b5759ebfc8de96d4217b3ffdeacd836bf40bef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1799e92d18f4e214ea334468a297e1c92bd0edd5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant3ff20e5f45e57accdf4bdc8979b5759ebfc8de96d4217b3ffdeacd836bf40bef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant3ff20e5f45e57accdf4bdc8979b5759ebfc8de96d4217b3ffdeacd836bf40bef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [restricted_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant3ff20e5f45e57accdf4bdc8979b5759ebfc8de96d4217b3ffdeacd836bf40bef.lean/declarations/restricted-inner-integrable--ef566db3af2a528cb94e9402.md) | 24 | `result-track:ef566db3af2a528cb94e94021e002d5075445367f283623e9ff3f0c3dd9343e9` |
| 2 | `theorem` | [extended_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant3ff20e5f45e57accdf4bdc8979b5759ebfc8de96d4217b3ffdeacd836bf40bef.lean/declarations/extended-inner-integrable--3e4922f54874371c007ef803.md) | 30 | `result-track:3e4922f54874371c007ef803f8afc8e5e5a0d84182e5d68e3dac17c69b1fd4ae` |
| 3 | `theorem` | [inner_restriction_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant3ff20e5f45e57accdf4bdc8979b5759ebfc8de96d4217b3ffdeacd836bf40bef.lean/declarations/inner-restriction-zeroextension--c316daa287c09e9478c75648.md) | 34 | `result-track:c316daa287c09e9478c75648c4ce58559396960b98d59156aa16bb17715f4ed5` |
| 4 | `theorem` | [zeroExtension_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant3ff20e5f45e57accdf4bdc8979b5759ebfc8de96d4217b3ffdeacd836bf40bef.lean/declarations/zeroextension-adjoint--466d1d29cea0466caca482e3.md) | 52 | `result-track:466d1d29cea0466caca482e3e34d0d82da28a90f10fc7b67b776f3d89d505d86` |
| 5 | `theorem` | [restriction_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDuality/Variant3ff20e5f45e57accdf4bdc8979b5759ebfc8de96d4217b3ffdeacd836bf40bef.lean/declarations/restriction-adjoint--f6d9624ad860bc844d6990a2.md) | 57 | `result-track:f6d9624ad860bc844d6990a251ab62cc9a01ad119d9239f963b7595cc3a7686e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
