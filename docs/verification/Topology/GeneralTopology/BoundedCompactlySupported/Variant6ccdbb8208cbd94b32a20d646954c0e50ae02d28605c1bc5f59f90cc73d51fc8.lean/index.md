# Verification target: GRWTSK.Topology.GeneralTopology.BoundedCompactlySupported.Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61313c430fc1098575e5d897b44fdbf3c58ecb35",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61313c430fc1098575e5d897b44fdbf3c58ecb35`.

Source path: `GRWTSK/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactlySupported](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/declarations/compactlysupported--a598e7ae4a77708b9ed18437.md) | 28 | `declaration-track:a598e7ae4a77708b9ed1843762bf9d31f313275b25c35353e96cb500b7f950b7` |
| 2 | `lemma` | [mem_compactlySupported](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/declarations/mem-compactlysupported--1de96726222acbac4d6f636f.md) | 38 | `result-track:1de96726222acbac4d6f636f9a6a58143880069ccdf5885352ce933e047d7676` |
| 3 | `lemma` | [exist_norm_eq](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/declarations/exist-norm-eq--6f917a13b8da0ba154a3d562.md) | 42 | `result-track:6f917a13b8da0ba154a3d5620be565f8746191bf42af6657b6d70307745d3713` |
| 4 | `theorem` | [norm_lt_iff_of_compactlySupported](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/declarations/norm-lt-iff-of-compactlysupported--98033df14413178479b47112.md) | 54 | `result-track:98033df14413178479b4711224aedde36a7723d1ace865ab2d791c4dd620d63a` |
| 5 | `theorem` | [norm_lt_iff_of_nonempty_compactlySupported](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/declarations/norm-lt-iff-of-nonempty-compactlysupported--89849d10d717ad3aab815d1c.md) | 62 | `result-track:89849d10d717ad3aab815d1c949c84236d836f0b96dae005dda75a1dc8033163` |
| 6 | `theorem` | [compactlySupported_eq_top_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/declarations/compactlysupported-eq-top-of-iscompact--9449ccc7f39d6a4f10633995.md) | 69 | `result-track:9449ccc7f39d6a4f10633995cdf085cae99f0f89f2656d5651ffbe916730a72d` |
| 7 | `theorem` | [compactlySupported_eq_top](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/declarations/compactlysupported-eq-top--a9122c9ec8bae5085f8fe0c1.md) | 75 | `result-track:a9122c9ec8bae5085f8fe0c1244c41fd097aa5f0f1a31652b611d3beb53c1180` |
| 8 | `theorem` | [compactlySupported_eq_top_iff](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/declarations/compactlysupported-eq-top-iff--b1a234edfc66127124c0e8de.md) | 78 | `result-track:b1a234edfc66127124c0e8de9307f9248defd827ebe8a1cd324d2dec5e3245ee` |
| 9 | `def` | [ofCompactSupport](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/declarations/ofcompactsupport--197dbde54e5720cf0875d042.md) | 87 | `declaration-track:197dbde54e5720cf0875d0428bf2341dca53f80ccd97b046872d899876bdbbdc` |
| 10 | `lemma` | [ofCompactSupport_mem](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/declarations/ofcompactsupport-mem--ee4e17543b421f5bbdb59485.md) | 99 | `result-track:ee4e17543b421f5bbdb594855101fd238710d4f369580e19fe2f8c96918cc024` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BoundedCompactlySupported/Variant6ccdbb8208cbd94b32a20d646954c0e50ae02d28605c1bc5f59f90cc73d51fc8.lean/declarations/instance--cda39fef49ba98836f62aba7.md) | 102 | `declaration-track:cda39fef49ba98836f62aba776b809f011f5a69e091ed3509edce1ea4e31bb2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
