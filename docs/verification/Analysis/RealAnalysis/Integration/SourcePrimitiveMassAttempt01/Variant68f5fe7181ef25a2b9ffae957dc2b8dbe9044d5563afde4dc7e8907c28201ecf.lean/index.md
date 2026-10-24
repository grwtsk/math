# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourcePrimitiveMassAttempt01.Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c618057896166f9f819bc3eea9ed442543851afb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c618057896166f9f819bc3eea9ed442543851afb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveEnvelope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [expHalfMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean/declarations/exphalfmoment-integrable--037323fa290d6f9a5266cfc7.md) | 23 | `result-track:037323fa290d6f9a5266cfc71c35ca8b95a683a80a082a2a2e046e580b66e1e4` |
| 2 | `theorem` | [expHalfMoment_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean/declarations/exphalfmoment-integral--2d1adda0f8bff909b95e45a5.md) | 39 | `result-track:2d1adda0f8bff909b95e45a59f9d690ed1cc716c045d878d03eb0783b8dc33e4` |
| 3 | `theorem` | [reflectedEnvelope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean/declarations/reflectedenvelope-integrable--d420ddc7d78c26b3d351b606.md) | 52 | `result-track:d420ddc7d78c26b3d351b606177a6c077afd9a8e28e4267f71eeba3efd767f5f` |
| 4 | `theorem` | [reflectedEnvelope_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean/declarations/reflectedenvelope-integral--d5206b5288ee7147ff54c9e9.md) | 63 | `result-track:d5206b5288ee7147ff54c9e929360354aa3d524f45feec8cefa925260b9b13e3` |
| 5 | `theorem` | [reflectedPrimitive_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean/declarations/reflectedprimitive-intervalintegrable--e1ef3242849781af50635a1c.md) | 79 | `result-track:e1ef3242849781af50635a1c691659d69973d104e24d6e32ae4659567af9f1c8` |
| 6 | `theorem` | [reflectedPrimitive_mass_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Variant68f5fe7181ef25a2b9ffae957dc2b8dbe9044d5563afde4dc7e8907c28201ecf.lean/declarations/reflectedprimitive-mass-bounds--ce6c7c5846816180985d0642.md) | 87 | `result-track:ce6c7c5846816180985d06426724c36f77282279990452747a6cefdc95aa2af5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
