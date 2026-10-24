# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourcePrimitiveMassAttempt03.Variant41cc6766a526dd0839c25f41f083b7c6e62b26728a5756c3b747902d773727ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72ab42c4cadc5b53544dac96766c80eff243c899",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant41cc6766a526dd0839c25f41f083b7c6e62b26728a5756c3b747902d773727ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant41cc6766a526dd0839c25f41f083b7c6e62b26728a5756c3b747902d773727ae.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant41cc6766a526dd0839c25f41f083b7c6e62b26728a5756c3b747902d773727ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72ab42c4cadc5b53544dac96766c80eff243c899`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant41cc6766a526dd0839c25f41f083b7c6e62b26728a5756c3b747902d773727ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant41cc6766a526dd0839c25f41f083b7c6e62b26728a5756c3b747902d773727ae.lean.json)

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
| 1 | `theorem` | [expHalfMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant41cc6766a526dd0839c25f41f083b7c6e62b26728a5756c3b747902d773727ae.lean/declarations/exphalfmoment-integrable--c975ed32f12791569ab59be7.md) | 24 | `result-track:c975ed32f12791569ab59be7e76351ea38c5e5a2db8810b2d004b4023f677568` |
| 2 | `theorem` | [expHalfMoment_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant41cc6766a526dd0839c25f41f083b7c6e62b26728a5756c3b747902d773727ae.lean/declarations/exphalfmoment-integral--87cc1099408b75c8d740b22d.md) | 45 | `result-track:87cc1099408b75c8d740b22d914d535c66c48b8a6afdc1274eed588f391e4a10` |
| 3 | `theorem` | [reflectedEnvelope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant41cc6766a526dd0839c25f41f083b7c6e62b26728a5756c3b747902d773727ae.lean/declarations/reflectedenvelope-integrable--6c350d81af379836be8f2385.md) | 58 | `result-track:6c350d81af379836be8f2385c1a094129a0c66b3aa1d24b1f4e028eed4b2c37e` |
| 4 | `theorem` | [reflectedEnvelope_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant41cc6766a526dd0839c25f41f083b7c6e62b26728a5756c3b747902d773727ae.lean/declarations/reflectedenvelope-integral--402626a23b990aff3e3be455.md) | 70 | `result-track:402626a23b990aff3e3be455d8629b9ba41985668c95f9f3c0c9b54e16e92c1d` |
| 5 | `theorem` | [reflectedPrimitive_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant41cc6766a526dd0839c25f41f083b7c6e62b26728a5756c3b747902d773727ae.lean/declarations/reflectedprimitive-intervalintegrable--881d334a33867e4bd41deb4b.md) | 89 | `result-track:881d334a33867e4bd41deb4baac115eb7b959c36470f060bc91c91135295e3ec` |
| 6 | `theorem` | [reflectedPrimitive_mass_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt03/Variant41cc6766a526dd0839c25f41f083b7c6e62b26728a5756c3b747902d773727ae.lean/declarations/reflectedprimitive-mass-bounds--45f9e44e4a48ef5e863ccfb0.md) | 97 | `result-track:45f9e44e4a48ef5e863ccfb0f32ec493f2c85e6b03b63aa3e2d47a7afc3a7f41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
