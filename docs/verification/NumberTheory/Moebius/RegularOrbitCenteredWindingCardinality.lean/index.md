# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingCardinality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74c73858eb73ab7fc7ec4bd6ad594ef3ac4636a4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74c73858eb73ab7fc7ec4bd6ad594ef3ac4636a4`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingRange`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Data.Int.Interval` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredWindingRadius](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/declarations/centeredwindingradius--6834c4b789fc9835a9e46deb.md) | 43 | `declaration-track:6834c4b789fc9835a9e46deb487967b8dbd81851266834088bf65e69c4ae1586` |
| 2 | `theorem` | [abs_squareMul_le_endpoint_iff_abs_le_radius](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/declarations/abs-squaremul-le-endpoint-iff-abs-le-radius--174a7549d52ec2ba4214c19a.md) | 49 | `result-track:174a7549d52ec2ba4214c19a2252fb2537059eeb6c0ef90a02139725df48049f` |
| 3 | `theorem` | [centeredWindingCandidateSet_eq_Icc_radius](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/declarations/centeredwindingcandidateset-eq-icc-radius--95bca6192aa19c0fb6b54187.md) | 69 | `result-track:95bca6192aa19c0fb6b541873b38066c0ba42dcae66cdd0426ffe73b8700d1a5` |
| 4 | `theorem` | [card_centeredWindingCandidateSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/declarations/card-centeredwindingcandidateset--15eca1d0933bfb9a979958b5.md) | 94 | `result-track:15eca1d0933bfb9a979958b5b3882ed14304a0d84247410994d2c72ac21efdab` |
| 5 | `theorem` | [zero_mem_centeredWindingCandidateSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/declarations/zero-mem-centeredwindingcandidateset--c173f28cce28faaf6326cea2.md) | 116 | `result-track:c173f28cce28faaf6326cea20074b2f450e918c51acf336308e244930370dfed` |
| 6 | `def` | [centeredNonzeroWindingCandidateSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/declarations/centerednonzerowindingcandidateset--4ca248da2a67b090dcd1cf10.md) | 123 | `declaration-track:4ca248da2a67b090dcd1cf10465371de6bb477f8985fc8a90f84e4ca6b030ce5` |
| 7 | `theorem` | [card_centeredNonzeroWindingCandidateSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/declarations/card-centerednonzerowindingcandidateset--1a6b3bbe7c1137cfee4ca33f.md) | 128 | `result-track:1a6b3bbe7c1137cfee4ca33f9393d6364292eed6d089cc1168345b3ffad9e8dd` |
| 8 | `theorem` | [card_centeredNonzeroWindingCandidateSet_eq](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/declarations/card-centerednonzerowindingcandidateset-eq--d11189b1f905efaec1e64ca5.md) | 139 | `result-track:d11189b1f905efaec1e64ca5a19bf37a99eb567eb0e99258df900a92ffda487e` |
| 9 | `theorem` | [realizedNonzeroWinding_mem_candidateSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/declarations/realizednonzerowinding-mem-candidateset--91b0f3d6e666ef35e3e1a694.md) | 147 | `result-track:91b0f3d6e666ef35e3e1a6944f35bccfc6b5b914fd31330789ea4fd98a1ee030` |
| 10 | `structure` | [RegularCenteredWindingCardinalitySourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/declarations/regularcenteredwindingcardinalitysourcedata--af291f67f0902a6c5d144b5b.md) | 164 | `declaration-track:af291f67f0902a6c5d144b5b3ea9de17f998aedb1edf0fffd0d0b4c0c83aa665` |
| 11 | `def` | [RegularCenteredWindingCardinalitySource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/declarations/regularcenteredwindingcardinalitysource--c7b24d762c25fcd2e8775951.md) | 174 | `declaration-track:c7b24d762c25fcd2e8775951495ef77688b794de7f1bf4ee9de1dedd2e2e0ddd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
