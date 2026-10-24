# Verification target: GRWTSK.Topology.GeneralTopology.Compact.Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cd6f354c2fb6fd4c7cd28287ecc9f752a0d98d8",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cd6f354c2fb6fd4c7cd28287ecc9f752a0d98d8`.

Source path: `GRWTSK/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lebesgue_number_lemma](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/lebesgue-number-lemma--31a2f746928203d49ec9123d.md) | 38 | `result-track:31a2f746928203d49ec9123d5bab12592b3167cbdf2fbe5c7ba8cd11b5aabcac` |
| 2 | `theorem` | [lebesgue_number_lemma_nhds'](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/lebesgue-number-lemma-nhds--39bd67a98d605acb0f56f3e1.md) | 52 | `result-track:39bd67a98d605acb0f56f3e1745daa12c4aa7bfa18f62b7fb607981a2680b32b` |
| 3 | `theorem` | [lebesgue_number_lemma_nhds](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/lebesgue-number-lemma-nhds--29865235a34ef863f95908ee.md) | 58 | `result-track:29865235a34ef863f95908eec0ef9990a795233f4327ff35ab4f9b89402f8485` |
| 4 | `theorem` | [lebesgue_number_lemma_nhdsWithin'](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/lebesgue-number-lemma-nhdswithin--e56a4219d23ab7a7402f79e3.md) | 64 | `result-track:e56a4219d23ab7a7402f79e3cd14b0cdebd7301756651d0a7ab51bbc1ac8e4f7` |
| 5 | `theorem` | [lebesgue_number_lemma_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/lebesgue-number-lemma-nhdswithin--0c5193c1b9dcdb1e31d33839.md) | 69 | `result-track:0c5193c1b9dcdb1e31d33839b790b7fc480295651d1830c8ade79895f5026c8a` |
| 6 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/filter-hasbasis-lebesgue-number-lemma--a40da30855065a9282afffa7.md) | 79 | `result-track:a40da30855065a9282afffa786c689d2f192089aba2a523e8b64e118453cb118` |
| 7 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma_nhds'](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/filter-hasbasis-lebesgue-number-lemma-nhds--b119707fa8c81261e8bf3793.md) | 86 | `result-track:b119707fa8c81261e8bf379340b73074c600e6021326fcc4ef0800f42e254128` |
| 8 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma_nhds](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/filter-hasbasis-lebesgue-number-lemma-nhds--8ca2039df5dcccf31125062e.md) | 93 | `result-track:8ca2039df5dcccf31125062eae7f10a811afb774f22940adc3358da715f983f9` |
| 9 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma_nhdsWithin'](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/filter-hasbasis-lebesgue-number-lemma-nhdswithin--96f21b8b3bffa5a6b6333437.md) | 99 | `result-track:96f21b8b3bffa5a6b6333437353587169a27196a35b97789e2fc1016ac729409` |
| 10 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/filter-hasbasis-lebesgue-number-lemma-nhdswithin--01ccd083967c294127b99815.md) | 107 | `result-track:01ccd083967c294127b998155813bb3b3f8c280de02781809567b661a78c168d` |
| 11 | `theorem` | [lebesgue_number_lemma_sUnion](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/lebesgue-number-lemma-sunion--5be3d64453f981564e8e3587.md) | 116 | `result-track:5be3d64453f981564e8e35878d6292a4d3cca1c5e022f511dea953b928cff6a6` |
| 12 | `theorem` | [IsCompact.nhdsSet_basis_uniformity](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/iscompact-nhdsset-basis-uniformity--9123b21c1e8649eacb01f977.md) | 126 | `result-track:9123b21c1e8649eacb01f977c7b9dc9a307323c270b9c7273376eeffb52fbc16` |
| 13 | `theorem` | [Disjoint.exists_uniform_thickening](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/disjoint-exists-uniform-thickening--454c23b6d80a9c563c84b181.md) | 142 | `result-track:454c23b6d80a9c563c84b181390b25f3b1b6638f254af57a23f626d090698927` |
| 14 | `theorem` | [Disjoint.exists_uniform_thickening_of_basis](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/disjoint-exists-uniform-thickening-of-basis--d577ffdad7c46d10fb395d29.md) | 154 | `result-track:d577ffdad7c46d10fb395d2911ea92c0e9e429a7a44ff8f20dbb9257318efe03` |
| 15 | `theorem` | [lebesgue_number_of_compact_open](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/lebesgue-number-of-compact-open--169430927fb0938c1ac9bbc4.md) | 165 | `result-track:169430927fb0938c1ac9bbc4a763e1fd7e74be14a04e66d43f9c43c7f58e318d` |
| 16 | `theorem` | [nhdsSet_diagonal_eq_uniformity](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/nhdsset-diagonal-eq-uniformity--00a3c3b5f64947dd1d367719.md) | 174 | `result-track:00a3c3b5f64947dd1d3677194cb6cfde6e505b65b0f52fb0f2a44ab6635f259c` |
| 17 | `theorem` | [compactSpace_uniformity](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/compactspace-uniformity--e504b18595d6ac9efaae93d2.md) | 187 | `result-track:e504b18595d6ac9efaae93d29b9c3192033ec7559054f4e6cc145aba51eadf21` |
| 18 | `theorem` | [unique_uniformity_of_compact](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/declarations/unique-uniformity-of-compact--e0da2c81bb6b410e2900b72d.md) | 190 | `result-track:e0da2c81bb6b410e2900b72d5b69c9192d138b3cde5eac526c0297f44b3176ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
