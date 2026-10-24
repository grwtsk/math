# Verification target: GRWTSK.Algebra.GoingDown.Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "300141414c9b80cc209083d2b27ec52c8db6c83d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean/index.md) · [Full source](../../../../mathematics/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `300141414c9b80cc209083d2b27ec52c8db6c83d`.

Source path: `GRWTSK/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.GoingUp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.FaithfullyFlat.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Localization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra.HasGoingDown](../../../../mathematics/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean/declarations/algebra-hasgoingdown--06779b7f8d51066ad1df6379.md) | 39 | `declaration-track:06779b7f8d51066ad1df6379c31e9a3be2a0a708a10ef43abd69b3a13b90b3f8` |
| 2 | `lemma` | [Ideal.exists_ideal_le_liesOver_of_le](../../../../mathematics/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean/declarations/ideal-exists-ideal-le-liesover-of-le--ca08629b6f883a96bbf91d4e.md) | 45 | `result-track:ca08629b6f883a96bbf91d4e8c2b0ebc9a88e147e24d217607d80169740ccdac` |
| 3 | `lemma` | [Ideal.exists_ideal_lt_liesOver_of_lt](../../../../mathematics/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean/declarations/ideal-exists-ideal-lt-liesover-of-lt--3b0d4ce94caf47e67a43a8ae.md) | 56 | `result-track:3b0d4ce94caf47e67a43a8ae382d43c720f08e69494520ee2619c6f56abe0b24` |
| 4 | `lemma` | [iff_generalizingMap_primeSpectrumComap](../../../../mathematics/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean/declarations/iff-generalizingmap-primespectrumcomap--679088099a33306a06bd9d2d.md) | 73 | `result-track:679088099a33306a06bd9d2d6b2881a8dfa3fd98e89c899e7c8f7a4ab29a08d1` |
| 5 | `lemma` | [trans](../../../../mathematics/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean/declarations/trans--d0d2958f99c1ab41f36d4f2b.md) | 92 | `result-track:d0d2958f99c1ab41f36d4f2bf825424a7a2ccc2d0c4f69d92206c3a71493c365` |
| 6 | `lemma` | [of_specComap_localRingHom_surjective](../../../../mathematics/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean/declarations/of-speccomap-localringhom-surjective--6cdf2c831e80a29728a9b065.md) | 103 | `result-track:6cdf2c831e80a29728a9b065ef7e3de538b614951a63936023c8c27931317427` |
| 7 | `instance` | [of_flat](../../../../mathematics/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean/declarations/of-flat--3a06dc40bc05498a6cbbc077.md) | 120 | `declaration-track:3a06dc40bc05498a6cbbc0779eb120ffc154baeb4d74ff5ae5004cce63bd3ca0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
