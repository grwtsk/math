# Verification target: GRWTSK.Topology.GeneralTopology.Attempt02.Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afb37e5b2bf2108b72a9e0bebf62d6c5219e2ede",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afb37e5b2bf2108b72a9e0bebf62d6c5219e2ede`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.IntermediateValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SmallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/smallpositive--d155a3eeec2ff43ed248ea16.md) | 25 | `declaration-track:d155a3eeec2ff43ed248ea16ca2af018fed2375f37ca713ce264156828212b3c` |
| 2 | `def` | [GlobalNonnegative](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/globalnonnegative--8b6e609288375afaf05eb2d3.md) | 28 | `declaration-track:8b6e609288375afaf05eb2d309539c29586656aac457e3234e23bf6930db4b43` |
| 3 | `def` | [NonvanishingOnPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/nonvanishingonpositive--6e5756f0a692bc2bc947e1d1.md) | 31 | `declaration-track:6e5756f0a692bc2bc947e1d1937bc8b20205bb15d7db850dbb1d3d7ceb879df0` |
| 4 | `def` | [affineFixture](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/affinefixture--5738af17516fbf8a387ec653.md) | 34 | `declaration-track:5738af17516fbf8a387ec653018d8f09f7f59b33a716d6e8b0e2fabfbd99dd79` |
| 5 | `theorem` | [affineFixture_continuous](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/affinefixture-continuous--562a7d8d5e340243a971e359.md) | 36 | `result-track:562a7d8d5e340243a971e359bed5c95cbbd8dbd442deef385c6bc361b2c12807` |
| 6 | `theorem` | [affineFixture_smallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/affinefixture-smallpositive--b26b27ec83618a40125c8c51.md) | 40 | `result-track:b26b27ec83618a40125c8c5178841ded49a316ebc0526f777e882f794d406819` |
| 7 | `theorem` | [affineFixture_later_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/affinefixture-later-negative--7a0e6e4da9f6cbfc20ef5625.md) | 46 | `result-track:7a0e6e4da9f6cbfc20ef5625297beb5bf31a8226405045b8d30ed776d131d26f` |
| 8 | `theorem` | [affineFixture_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/affinefixture-not-global--9a4bb27fd9aa8c8141038dbb.md) | 49 | `result-track:9a4bb27fd9aa8c8141038dbb5264e07225a6a38baf736b87abf51852a9f1e2fd` |
| 9 | `theorem` | [continuous_local_does_not_imply_global](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/continuous-local-does-not-imply-global--a1683521c8a27da6124b5dff.md) | 54 | `result-track:a1683521c8a27da6124b5dffb97b96240f050cee93147a5be1dc3ad9c6581e54` |
| 10 | `theorem` | [bounded_window_can_miss_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/bounded-window-can-miss-negative--396a48df1884982b8f7002aa.md) | 63 | `result-track:396a48df1884982b8f7002aad8827eb48dee2efe7ccf39520b6db2741f2992d7` |
| 11 | `theorem` | [affineFixture_unique_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/affinefixture-unique-crossing--9091aa92d7f9dd16433232b2.md) | 75 | `result-track:9091aa92d7f9dd16433232b2eea69b610f8f9b3229bf8f6f94548b12e7bced1d` |
| 12 | `theorem` | [zero_before_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/zero-before-negative--603a19082300d3817a42b5d5.md) | 81 | `result-track:603a19082300d3817a42b5d5afd9684b9c2163503e6df9e51a95b63defa4fe7f` |
| 13 | `theorem` | [zero_of_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/zero-of-not-global--029193a38738d040153c05ec.md) | 104 | `result-track:029193a38738d040153c05ec5b1ac64a668379d8d2ba71bb19ee2bbe3b550e39` |
| 14 | `theorem` | [positive_everywhere_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/positive-everywhere-of-nonvanishing--210820508301b0ca4ce8ecad.md) | 114 | `result-track:210820508301b0ca4ce8ecad61917d29b1d7372ad81b960f0e311aae7428342f` |
| 15 | `theorem` | [positive_everywhere_iff_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/positive-everywhere-iff-nonvanishing--3c484e443d7f9db087c7ce19.md) | 126 | `result-track:3c484e443d7f9db087c7ce19ae05223afc9dc602e826a07f1e3497228fb8278b` |
| 16 | `theorem` | [global_nonnegative_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/global-nonnegative-of-nonvanishing--7ce177998d4691ec1f5c889e.md) | 133 | `result-track:7ce177998d4691ec1f5c889ec6609f188711adf588d498d61b88b44a6d386dc1` |
| 17 | `def` | [LowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/lowesteigenvalueprofile--78d17542ca44c7e0356d5eea.md) | 140 | `declaration-track:78d17542ca44c7e0356d5eea16803a56a703f48dddd7eb879975a15ef12d9052` |
| 18 | `theorem` | [lowestEigenvalue_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/lowesteigenvalue-crossing--168953bdda436db29a748566.md) | 143 | `result-track:168953bdda436db29a74856620fb18bb72042ec316f8506a671cf2a3c4151f47` |
| 19 | `theorem` | [lowestEigenvalue_failure_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/lowesteigenvalue-failure-crossing--8d44f73ef4d4d0e8902ec917.md) | 148 | `result-track:8d44f73ef4d4d0e8902ec91794f37eb5757b5e7764593d2ea9f9fe66dc323f1b` |
| 20 | `theorem` | [lowestEigenvalue_nonvanishing_iff_positive](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/lowesteigenvalue-nonvanishing-iff-positive--dd0ab6cf4910ce4ff3d11dd4.md) | 153 | `result-track:dd0ab6cf4910ce4ff3d11dd4a566d10a709d1eed785abea287de4f44c8394a7c` |
| 21 | `theorem` | [affineFixture_lowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Varianta7be5fcf12b2fa59c438eddbf0e6e87eb34dd86c3251a14fa594aa3b217d2cf7.lean/declarations/affinefixture-lowesteigenvalueprofile--87b3b8b7123ba7571b6ca884.md) | 158 | `result-track:87b3b8b7123ba7571b6ca88454cfab4706ff80065a77f6f238acdaa184350cdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
