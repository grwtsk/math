# Verification target: GRWTSK.Algebra.GroupTheory.FixingSubgroup.Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a85ed97a465a42841af0f404384d936ebe5ac68d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a85ed97a465a42841af0f404384d936ebe5ac68d`.

Source path: `GRWTSK/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.FixedPoints` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixingSubmonoid](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixingsubmonoid--850496bc0e018ad3fa67b425.md) | 58 | `declaration-track:850496bc0e018ad3fa67b4258c42a4b00a8cd68307b3c299b0e5785fbbcf7a36` |
| 2 | `theorem` | [mem_fixingSubmonoid_iff](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/mem-fixingsubmonoid-iff--d2398cf57192363a88c6c0c1.md) | 64 | `result-track:d2398cf57192363a88c6c0c18e0c785f265137b9fb6d7df51605a6ed1821634d` |
| 3 | `theorem` | [fixingSubmonoid_fixedPoints_gc](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixingsubmonoid-fixedpoints-gc--24c4fee97686af1fc0f1ce63.md) | 72 | `result-track:24c4fee97686af1fc0f1ce632014925eab928768c2d6a5e44d55cde4c36d49ef` |
| 4 | `theorem` | [fixingSubmonoid_antitone](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixingsubmonoid-antitone--e71fc2a81f816162ffa7b797.md) | 78 | `result-track:e71fc2a81f816162ffa7b797892426898ccec876059cdfb5da811808851d9e3e` |
| 5 | `theorem` | [fixedPoints_antitone](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixedpoints-antitone--2b4a7ce9d12750f6dd20ce1d.md) | 82 | `result-track:2b4a7ce9d12750f6dd20ce1d2c2fdad7b83c60adec1b210ce232e6e44ac5105b` |
| 6 | `theorem` | [fixingSubmonoid_union](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixingsubmonoid-union--281236973f73c901ce098ef7.md) | 87 | `result-track:281236973f73c901ce098ef7f1874f4aef00b274f430f4fda58597b486a6600f` |
| 7 | `theorem` | [fixingSubmonoid_iUnion](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixingsubmonoid-iunion--43222ff4a0a88d69191f3a73.md) | 93 | `result-track:43222ff4a0a88d69191f3a731844537366cf043c1474816f5418b8f65258c952` |
| 8 | `theorem` | [fixedPoints_submonoid_sup](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixedpoints-submonoid-sup--363a3f9003521cf4856b9456.md) | 99 | `result-track:363a3f9003521cf4856b94568a549dedcbdc1ce995196fdcee80d0e6f5475e0b` |
| 9 | `theorem` | [fixedPoints_submonoid_iSup](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixedpoints-submonoid-isup--a5fef45b24691cc400759f60.md) | 105 | `result-track:a5fef45b24691cc400759f6074cfbf2a34887e8649ab5a84e08f112c1c14442e` |
| 10 | `def` | [fixingSubgroup](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixingsubgroup--17d505f6a2470243f0cb04e0.md) | 119 | `declaration-track:17d505f6a2470243f0cb04e0d971a1aaa4b969f389ff757917471f2080778df0` |
| 11 | `theorem` | [mem_fixingSubgroup_iff](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/mem-fixingsubgroup-iff--c7f27ccfecdfb516ddbaf2a2.md) | 123 | `result-track:c7f27ccfecdfb516ddbaf2a2ceb1d9b277032ceb90a93dff47c500a24bd4065b` |
| 12 | `theorem` | [mem_fixingSubgroup_iff_subset_fixedBy](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/mem-fixingsubgroup-iff-subset-fixedby--35de5b4a491a8a30cf25219f.md) | 127 | `result-track:35de5b4a491a8a30cf25219f5ed5bf09894d9083fd853939b10cd89df06556fd` |
| 13 | `theorem` | [mem_fixingSubgroup_compl_iff_movedBy_subset](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/mem-fixingsubgroup-compl-iff-movedby-subset--67f4a80fef5223d6dec83f13.md) | 132 | `result-track:67f4a80fef5223d6dec83f1357b76f52420db3aa5b8dc75c4d25bfb488284c71` |
| 14 | `theorem` | [fixingSubgroup_fixedPoints_gc](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixingsubgroup-fixedpoints-gc--26c0be85f5347c849ef967dd.md) | 140 | `result-track:26c0be85f5347c849ef967dd7e598863a7b834ece7a1928ad80b9ac9c64de4d1` |
| 15 | `theorem` | [fixingSubgroup_antitone](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixingsubgroup-antitone--9050fe3a0e554ee748d49a16.md) | 146 | `result-track:9050fe3a0e554ee748d49a1676d1eda183006eb364e1f17c8ff5f56489e95a03` |
| 16 | `theorem` | [fixedPoints_subgroup_antitone](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixedpoints-subgroup-antitone--7ca61c74e3344e00c5498339.md) | 150 | `result-track:7ca61c74e3344e00c5498339b464fbf938e0b6cf6f0e3c96df9d688cb7fa7d35` |
| 17 | `theorem` | [fixingSubgroup_union](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixingsubgroup-union--7cb9ac2c020041bdc446883f.md) | 155 | `result-track:7cb9ac2c020041bdc446883f46a4a361315918894aa576b676dd11f6e5c5ca51` |
| 18 | `theorem` | [fixingSubgroup_iUnion](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixingsubgroup-iunion--fb93d1e7ff8d64fdf0731223.md) | 161 | `result-track:fb93d1e7ff8d64fdf07312230f807326ad7c9246cfa95e895eef866f9127e26e` |
| 19 | `theorem` | [fixedPoints_subgroup_sup](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixedpoints-subgroup-sup--e4ebaba222f18b776f3940be.md) | 167 | `result-track:e4ebaba222f18b776f3940bef026ee95671df206874fe38887eaedded52985c3` |
| 20 | `theorem` | [fixedPoints_subgroup_iSup](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/fixedpoints-subgroup-isup--b513bdcae03789d5b2842ede.md) | 173 | `result-track:b513bdcae03789d5b2842ede7a110cf6416ab5e92218bcce151be4a871d30f77` |
| 21 | `theorem` | [orbit_fixingSubgroup_compl_subset](../../../../../mathematics/Algebra/GroupTheory/FixingSubgroup/Variant59d30ccb0b05ebe4680e146434e83d7900b31b520a652109f1dde5706e97f5b6.lean/declarations/orbit-fixingsubgroup-compl-subset--665a68613a280f49791e2ad5.md) | 179 | `result-track:665a68613a280f49791e2ad5046c2961863265cc5bf9b651d44231cc0d7cf077` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
