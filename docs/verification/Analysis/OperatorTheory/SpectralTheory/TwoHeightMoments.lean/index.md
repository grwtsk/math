# Verification target: GRWTSK.Analysis.Spectral.TwoHeightMoments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cbd662658764f7b58a592e1ed083e8914afb7e4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Spectral/TwoHeightMoments.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cbd662658764f7b58a592e1ed083e8914afb7e4`.

Source path: `GRWTSK/Analysis/Spectral/TwoHeightMoments.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Spectral/TwoHeightMoments.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Inequalities.ResidualEnclosure`](../../../../../mathematics/Analysis/Inequalities/ResidualEnclosure.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [scalar_resolvent_drop](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/declarations/scalar-resolvent-drop--71897235012b96b5c0fcc36d.md) | 25 | `result-track:71897235012b96b5c0fcc36d3637df0508050626c4189a881d17275e332f0101` |
| 2 | `theorem` | [scalar_drop_nonneg](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/declarations/scalar-drop-nonneg--0236c5163e05827be5ae090d.md) | 32 | `result-track:0236c5163e05827be5ae090d8b8f74917ec6d1e2774edba96277987959765275` |
| 3 | `theorem` | [scalar_inverse_sandwich](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/declarations/scalar-inverse-sandwich--df67cd21003e353e9509ee9f.md) | 37 | `result-track:df67cd21003e353e9509ee9f49bc1b92426161b92aaa78c446b9b9b92bbcfcc1` |
| 4 | `def` | [response](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/declarations/response--e0b94c1b49b585cb94aa5f9e.md) | 46 | `declaration-track:e0b94c1b49b585cb94aa5f9e8158b4304bfbc4637a31d7f59557620fddc49e9f` |
| 5 | `def` | [inverseMoment](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/declarations/inversemoment--b297c9778a7ff18b2ac78c27.md) | 49 | `declaration-track:b297c9778a7ff18b2ac78c270263d58e3218df01dc46ac277a3f66b440ce2897` |
| 6 | `theorem` | [finite_drop_identity](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/declarations/finite-drop-identity--17d8b46f45fef55470548666.md) | 52 | `result-track:17d8b46f45fef55470548666e60a04568e4e15d76479f9939563974846aeff16` |
| 7 | `theorem` | [finite_drop_le_inverseMoment](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/declarations/finite-drop-le-inversemoment--06b2beacfd91fe96ef4f62c1.md) | 66 | `result-track:06b2beacfd91fe96ef4f62c15bfc0b367482cd181cbb43316e82676dba341317` |
| 8 | `theorem` | [zero_mode_drop](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/declarations/zero-mode-drop--da313f8c41dcda48f2934be2.md) | 78 | `result-track:da313f8c41dcda48f2934be2feee5e8960dcc3616ad74a4dcb5e73d33a50e781` |
| 9 | `theorem` | [finite_low_mass_bound](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/declarations/finite-low-mass-bound--d629b4b5ea9efc406f1847a2.md) | 85 | `result-track:d629b4b5ea9efc406f1847a2a6ed29505e6dd4fc98664407c6945486853ee6db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
