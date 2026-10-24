# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Trace.Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49eef764712108247285c07a71404608441cd8ee",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49eef764712108247285c07a71404608441cd8ee`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.FunctionalSymmetry` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalTrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/canonicaltrace--a1b655ccc89868e335d1b6b3.md) | 20 | `declaration-track:a1b655ccc89868e335d1b6b342690f08226c264a960f8628fc4624bc6f29c8b3` |
| 2 | `theorem` | [canonicalTrace_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/canonicaltrace-zero--3bae1d5d8648478bbd37049c.md) | 29 | `result-track:3bae1d5d8648478bbd37049cf335a945d2f96fa744c322e704e18575cc9331b1` |
| 3 | `theorem` | [canonicalTrace_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/canonicaltrace-add--c096b19f923afd256ab51d5b.md) | 39 | `result-track:c096b19f923afd256ab51d5b2c8a542ab6b700156a9c28efc2a18c9b25cf3475` |
| 4 | `theorem` | [canonicalTrace_scale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/canonicaltrace-scale--b0440aa0bafac0326d62b60f.md) | 54 | `result-track:b0440aa0bafac0326d62b60f9479794585549c8a07df31891ffa381d20bce2b9` |
| 5 | `def` | [crossedProductUnit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/crossedproductunit--443f5c13d38320313db8fd3f.md) | 81 | `declaration-track:443f5c13d38320313db8fd3f2d548be04c5cea1388f9752658e372abaefb6ce4` |
| 6 | `theorem` | [canonicalTrace_unit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/canonicaltrace-unit--6a4f4549fcdfa59030fec946.md) | 91 | `result-track:6a4f4549fcdfa59030fec94630d4302175e4948dff608884acc9fa9355f80e82` |
| 7 | `theorem` | [canonicalTrace_nonnegative_of_identity_coefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/canonicaltrace-nonnegative-of-identity-coefficient--8b3bf306c326b23b299cf410.md) | 102 | `result-track:8b3bf306c326b23b299cf4101ae52e39fefe0ef945e6de80e2e5e831efce2977` |
| 8 | `def` | [stableInvariantTrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/stableinvarianttrace--f4128cb6ada51724c24fd749.md) | 118 | `declaration-track:f4128cb6ada51724c24fd7490f652bd7fd4a73461b92d2933a861c07d212b6c4` |
| 9 | `def` | [matrixFiberCanonicalTrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/matrixfibercanonicaltrace--63059334f30d6eb6a3a6b797.md) | 127 | `declaration-track:63059334f30d6eb6a3a6b797fe19a2b709925bcf9d1738e12b8881c2e7708048` |
| 10 | `theorem` | [stableInvariantTrace_unit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/stableinvarianttrace-unit--12cb9ef0dc8adfd88072ced1.md) | 140 | `result-track:12cb9ef0dc8adfd88072ced18a3d0ad28344b8d62aa2c885ae71972ece0ca7c7` |
| 11 | `theorem` | [stableInvariantTrace_nonnegative_of_identity_coefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/stableinvarianttrace-nonnegative-of-identity-coefficient--aeeb15a1d6feeef135cf5388.md) | 152 | `result-track:aeeb15a1d6feeef135cf5388842362cfa5f7c6c4ecee2df4719056bc4747cc6d` |
| 12 | `structure` | [StableTraceAlgebraLaws](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/stabletracealgebralaws--8916716b3c8b0138e3a3e75c.md) | 172 | `declaration-track:8916716b3c8b0138e3a3e75c66acab42440733b326be4e3e93058577f5a38820` |
| 13 | `structure` | [MatrixFiberCanonicalTraceLaws](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/matrixfibercanonicaltracelaws--a4895428d30520adefbf81b8.md) | 215 | `declaration-track:a4895428d30520adefbf81b85b13c4c05f0d42dbf8fc0438b0aae5c9e51dec4c` |
| 14 | `inductive` | [InvariantSectorMeaning](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/invariantsectormeaning--57e7906c1500eaf4c590ef23.md) | 259 | `declaration-track:57e7906c1500eaf4c590ef23f7e28ac60d562f0067a5020f27c5d5fb4093ecda` |
| 15 | `structure` | [InvariantProjectionCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/invariantprojectioncertificate--4be755abd52cd45fbbc78915.md) | 267 | `declaration-track:4be755abd52cd45fbbc789159ee2a2147a4f4ad8f4c5a4fb8477f6598a488e14` |
| 16 | `structure` | [InvariantSectorReduction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/invariantsectorreduction--0958916ae399411c36030a1d.md) | 273 | `declaration-track:0958916ae399411c36030a1db70987b06bfd07329dc61d100a115b612d7ae878` |
| 17 | `inductive` | [ReducedTraceMode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/reducedtracemode--a2d4aa6cc94fa3d488714cdf.md) | 282 | `declaration-track:a2d4aa6cc94fa3d488714cdff5a74c9bc76c09e75e1d74f9ad06c07f1469f56c` |
| 18 | `structure` | [CentralSectorReduction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/centralsectorreduction--94cd02cf89555700dc08a2e4.md) | 287 | `declaration-track:94cd02cf89555700dc08a2e46ac164f26281b8530456b49ed47de5a5c27fe8ab` |
| 19 | `def` | [centralSectorReducedTrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/centralsectorreducedtrace--0a2c334e527a6a0cbd18e914.md) | 313 | `declaration-track:0a2c334e527a6a0cbd18e9141e35b37296446b8f6202bdc2b9f01f47394964f4` |
| 20 | `def` | [normalizedCentralSectorReducedTrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/normalizedcentralsectorreducedtrace--fe9af2ffef2784ad4089f6d6.md) | 324 | `declaration-track:fe9af2ffef2784ad4089f6d65c438c2a0728903012a5586bffbed77a6bb3c7cd` |
| 21 | `structure` | [CornerAlgebraReduction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/corneralgebrareduction--650785c6f1dd793ef9454c3d.md) | 339 | `declaration-track:650785c6f1dd793ef9454c3d783e9cb0b12c88b11d80eeab3acebdfd11cef6d3` |
| 22 | `structure` | [CornerAlgebraElement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/corneralgebraelement--45fd4b11fd90f10834469c0e.md) | 371 | `declaration-track:45fd4b11fd90f10834469c0e9125f1082f8831108bbb9a48f6de09d87b55e431` |
| 23 | `def` | [normalizedCornerAlgebraTrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/normalizedcorneralgebratrace--3f4513cc3d2bab279ec5cef7.md) | 378 | `declaration-track:3f4513cc3d2bab279ec5cef700ec50055add339c34a70590106ceb0ca44ab8b0` |
| 24 | `def` | [reducedStableTrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/declarations/reducedstabletrace--5b2eb01cd184047948d568b0.md) | 393 | `declaration-track:5b2eb01cd184047948d568b0ae26f0bb2509674dd07abc08283798a470a2c0ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
