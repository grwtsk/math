# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleSymmetricEdgeEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c3fc47b8c55997f4cee33ae3f21ea625ae295df",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c3fc47b8c55997f4cee33ae3f21ea625ae295df`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleConjugateSymmetry`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleConjugateSymmetry.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SymmetricRectangleEdgeEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/symmetricrectangleedgeenclosure--26ab2ed0faaf7d95ec73f451.md) | 58 | `declaration-track:26ab2ed0faaf7d95ec73f4514351d9e8ce0e885ba54bc1f91284df224344d631` |
| 2 | `def` | [compressedCenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/compressedcenter--1be26f89ceff28437c2c725b.md) | 69 | `declaration-track:1be26f89ceff28437c2c725beba7c1c9730fb3725daf2d169d591d72df988c3f` |
| 3 | `def` | [compressedRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/compressedradius--c0aee314337f5a81eb8da77f.md) | 76 | `declaration-track:c0aee314337f5a81eb8da77f0023679db51f55091bf28ce40c242d9b4cc3008f` |
| 4 | `theorem` | [compressedRadius_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/compressedradius-nonneg--a65c99cdf227f3102f13ebbd.md) | 81 | `result-track:a65c99cdf227f3102f13ebbd49d6b49456851c1a495a96b6fa4486a6b3cea32b` |
| 5 | `theorem` | [cast_compressedCenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/cast-compressedcenter--c6b3bc83067a8057aeb4d476.md) | 88 | `result-track:c6b3bc83067a8057aeb4d476b19ed095a8230b2a0bf97f958b5cfc17896c267e` |
| 6 | `theorem` | [cast_compressedRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/cast-compressedradius--c733e787008a244e3c665abc.md) | 96 | `result-track:c733e787008a244e3c665abc7cc82096bf9df4feeee5f5db9b015e8e1391266f` |
| 7 | `def` | [indexInterval](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/indexinterval--9e5433f51de158b7e99e91a4.md) | 105 | `declaration-track:9e5433f51de158b7e99e91a40bd49766d007f06fe814feb4bbc8abfce07d2be5` |
| 8 | `theorem` | [indexInterval_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/indexinterval-lower--b7347ebe5cfd727910da38d5.md) | 112 | `result-track:b7347ebe5cfd727910da38d51a3c9e7e7f93ceb20d5a07f1472348317da5fcbb` |
| 9 | `theorem` | [indexInterval_upper](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/indexinterval-upper--80998496dd8d05eb595a63a9.md) | 117 | `result-track:80998496dd8d05eb595a63a9c91e54b7dfc5ca650b03d682f0d6a050424180b4` |
| 10 | `theorem` | [indexInterval_contains](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/indexinterval-contains--c9f6d35e2f2b7dbe4b33bd1b.md) | 124 | `result-track:c9f6d35e2f2b7dbe4b33bd1b4ceeb2d9fdc410c2b30eae2c683af98124ce741e` |
| 11 | `theorem` | [indexInterval_width](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/indexinterval-width--22932061591c524c5811fce1.md) | 142 | `result-track:22932061591c524c5811fce176ded1e68827a4f5544527e3b8bf9cde8534059e` |
| 12 | `theorem` | [positiveCountInterval_width](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/positivecountinterval-width--1df37169a11d13d52e883e20.md) | 152 | `result-track:1df37169a11d13d52e883e206ce90af3d3fbda5976303ad5f9c050522989dc0a` |
| 13 | `theorem` | [positiveCountInterval_width_lt_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/positivecountinterval-width-lt-one--3afbfb281145945fb491ee96.md) | 164 | `result-track:3afbfb281145945fb491ee9611dc2547ddf5a4194abbed8f6c24251c60b5a9ec` |
| 14 | `def` | [toCanonicalRectangleIndexEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/tocanonicalrectangleindexenclosure--1831591f5880cbb6c13a2854.md) | 174 | `declaration-track:1831591f5880cbb6c13a2854315d25fb27873b2951396ae7c514b0a575ce46a8` |
| 15 | `def` | [accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/accepts--63d55d4d3606e2e7f89d8602.md) | 183 | `declaration-track:63d55d4d3606e2e7f89d86028960e74d2c8063b6e08cee9db47aff3cd22417b0` |
| 16 | `theorem` | [accepts_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/accepts-iff--7a4a85682b06dd687d8e0f52.md) | 187 | `result-track:7a4a85682b06dd687d8e0f525baaec6c384cd582c642afe074164bc4475c7613` |
| 17 | `theorem` | [exact_positive_count_of_accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/exact-positive-count-of-accepts--c417fca1711ea3b65ab989c2.md) | 197 | `result-track:c417fca1711ea3b65ab989c25bb853197d822643905a3c5b578b5122dcfb79b6` |
| 18 | `def` | [packetOfSymmetricEdgeEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/packetofsymmetricedgeenclosure--0ff2ac4bdf16b236011d0fb2.md) | 209 | `declaration-track:0ff2ac4bdf16b236011d0fb2c88f44f5df974523ccc246c4191ddd74861f6a7d` |
| 19 | `theorem` | [packet_totalCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/packet-totalcount--3eb46c828cec3a05bd0f67aa.md) | 218 | `result-track:3eb46c828cec3a05bd0f67aa6dbe895f3f610eb12d83ab31187c6730f55132dd` |
| 20 | `theorem` | [rhThrough_of_symmetric_edge_count_margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/rhthrough-of-symmetric-edge-count-margin--2290d577c88c424caa8763bc.md) | 228 | `result-track:2290d577c88c424caa8763bc08d5a34e614d6c1c9ae64cefd2aaa5e7854d68f1` |
| 21 | `theorem` | [knownPoints_eq_positiveHeightHead_of_symmetric_edge_count_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/knownpoints-eq-positiveheighthead-of-symmetric-edge-count-eq--0e0c9c5fda1c0630b284b2af.md) | 240 | `result-track:0e0c9c5fda1c0630b284b2af2abe589daeba4ccbd43b8dc12a0a0a69de2707f7` |
| 22 | `theorem` | [packet_gap_eq_zero_of_symmetric_edge_count_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/packet-gap-eq-zero-of-symmetric-edge-count-eq--20f62b1a7e6e08d843779379.md) | 252 | `result-track:20f62b1a7e6e08d843779379f9e45a0ea4eb3e4a25851b5ce343fc81a506ef39` |
| 23 | `theorem` | [narrow_width_does_not_supply_candidate_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalRectangleSymmetricEdgeEnclosure.lean/declarations/narrow-width-does-not-supply-candidate-fixture--eb3c86476db9ac691f8dc6a4.md) | 266 | `result-track:eb3c86476db9ac691f8dc6a4d60023d427f350d42916494066f68058265c52b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
