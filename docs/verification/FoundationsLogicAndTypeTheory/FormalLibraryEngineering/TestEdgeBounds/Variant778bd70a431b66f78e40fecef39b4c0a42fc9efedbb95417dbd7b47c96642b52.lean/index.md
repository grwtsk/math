# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestEdgeBounds.Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d53a93a5b11d2c7b7ce7e1211e0d68e21d0cba0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d53a93a5b11d2c7b7ce7e1211e0d68e21d0cba0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Icc01](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/icc01--84891644902f401b820ffdaf.md) | 5 | `declaration-track:84891644902f401b820ffdaf61a1e475df09f9ab84af990439061e1b38485b07` |
| 2 | `theorem` | [edge_bound_def_seticc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-def-seticc--760b48bdf93e4481a1c572a4.md) | 7 | `result-track:760b48bdf93e4481a1c572a4794a14d9d82fe62e0d672a374c08b70c6745fc2f` |
| 3 | `theorem` | [edge_bound_neg_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-neg-interval--e656e1153af8f86937cc96af.md) | 10 | `result-track:e656e1153af8f86937cc96afb711ab239b6cb740359c9ca4e65e658a82083698` |
| 4 | `theorem` | [edge_bound_abs_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-abs-interval--29d7e955f458c771fccba978.md) | 13 | `result-track:29d7e955f458c771fccba9783f26f4d5ae2253a8565bd1acb150682e8e2b9f95` |
| 5 | `theorem` | [edge_bound_sqrt_upper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-sqrt-upper--c71fb043260ba86ae12e3bc9.md) | 16 | `result-track:c71fb043260ba86ae12e3bc9cc619a19a6d38d1db672bc773ce77a220a528bfb` |
| 6 | `theorem` | [edge_bound_rpow_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-rpow-half--4544b66cee2011d17ffb9fa6.md) | 19 | `result-track:4544b66cee2011d17ffb9fa6e77fae9d9d4382b839785d2b720e9d7a5e7e2055` |
| 7 | `theorem` | [edge_bound_rpow_inv_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-rpow-inv-two--bed2175bdf0411da2b60702e.md) | 22 | `result-track:bed2175bdf0411da2b60702e83f3be3fa0936ee78347c33ce3217604847c893a` |
| 8 | `theorem` | [edge_bound_rpow_three_halves](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-rpow-three-halves--d1d6646b535f81e620f3936a.md) | 25 | `result-track:d1d6646b535f81e620f3936afff1314f01b60237f58027500672591fc9b7ae1a` |
| 9 | `theorem` | [edge_bound_rpow_one_point_five](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-rpow-one-point-five--159684e1434e0ec0591d44a2.md) | 29 | `result-track:159684e1434e0ec0591d44a234b6353cdd90010a4e5737f1876a367488c0d415` |
| 10 | `theorem` | [edge_bound_sinh_upper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-sinh-upper--638095b47437236e2aec905d.md) | 33 | `result-track:638095b47437236e2aec905df289deebc1385c727b6bd4ce164d70e46375be53` |
| 11 | `theorem` | [edge_bound_cosh_lower](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-cosh-lower--0b9780b0c9a44fd6fac9edc0.md) | 36 | `result-track:0b9780b0c9a44fd6fac9edc07853ab2e52413c1c0a8a9a4f10989577b09d57b2` |
| 12 | `theorem` | [edge_bound_tanh_upper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-tanh-upper--f349915fc8e85e0294836952.md) | 39 | `result-track:f349915fc8e85e0294836952fdf8218aaac0e7b70cc03657864d2048df99ec1f` |
| 13 | `theorem` | [edge_bound_tanh_lower](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-tanh-lower--ebc62cb5cb381c0faed1d698.md) | 42 | `result-track:ebc62cb5cb381c0faed1d698e62b86734812972c1430fb92c589c95087a96d4b` |
| 14 | `theorem` | [edge_bound_pi_shift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-pi-shift--d6542410d6f07d9a60c5b2a7.md) | 45 | `result-track:d6542410d6f07d9a60c5b2a79ce2656804c0087c5a18d0b2001c8e4b05c690c7` |
| 15 | `theorem` | [edge_bound_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant778bd70a431b66f78e40fecef39b4c0a42fc9efedbb95417dbd7b47c96642b52.lean/declarations/edge-bound-strict--ddf81e3d3e5ac7c9fc6b374f.md) | 48 | `result-track:ddf81e3d3e5ac7c9fc6b374f806dec26698da7b6ff3a42dcd0eab7ff7008e2c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
