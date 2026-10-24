# Verification target: GRWTSK.Algebra.Nonunits.Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc7a96fc6d7bb762add328b54fe55bbda3c8a6a1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean/index.md) · [Full source](../../../../mathematics/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc7a96fc6d7bb762add328b54fe55bbda3c8a6a1`.

Source path: `GRWTSK/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Maximal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonunits](../../../../mathematics/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean/declarations/nonunits--2b5f4db403db3aa197ac9bfe.md) | 24 | `declaration-track:2b5f4db403db3aa197ac9bfeebd79f5e2e3f611d5280052fbc534f12938b4862` |
| 2 | `theorem` | [mem_nonunits_iff](../../../../mathematics/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean/declarations/mem-nonunits-iff--cb14c0eed5378aa2449a9cb1.md) | 28 | `result-track:cb14c0eed5378aa2449a9cb1dba3402daee20c78951c7fee1002f35f5857ad79` |
| 3 | `theorem` | [mul_mem_nonunits_right](../../../../mathematics/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean/declarations/mul-mem-nonunits-right--8247e3a9f77e47256e25b9fc.md) | 31 | `result-track:8247e3a9f77e47256e25b9fcd70c3de803e7890905c89d39a15a63912e810166` |
| 4 | `theorem` | [mul_mem_nonunits_left](../../../../mathematics/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean/declarations/mul-mem-nonunits-left--49f364bb0d83273ce8bc0211.md) | 34 | `result-track:49f364bb0d83273ce8bc0211dc62607c7ca34df42ce48c7f1a8f36169ecc2d14` |
| 5 | `theorem` | [zero_mem_nonunits](../../../../mathematics/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean/declarations/zero-mem-nonunits--d12f40d359599d3a01e97679.md) | 37 | `result-track:d12f40d359599d3a01e97679f92287af990245f9e4d47e1c221968552b784b72` |
| 6 | `theorem` | [one_notMem_nonunits](../../../../mathematics/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean/declarations/one-notmem-nonunits--12577333aa7bc93275bdd138.md) | 41 | `result-track:12577333aa7bc93275bdd13873385f0e6752bb04ad158a9361b4781faf686375` |
| 7 | `theorem` | [map_mem_nonunits_iff](../../../../mathematics/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean/declarations/map-mem-nonunits-iff--28d01513364bf4b96f6d1aba.md) | 48 | `result-track:28d01513364bf4b96f6d1aba1ebc642f899a41259b49dfcd1d7b47a874583e56` |
| 8 | `theorem` | [coe_subset_nonunits](../../../../mathematics/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean/declarations/coe-subset-nonunits--e7ed57caf4ebc99d62eae823.md) | 52 | `result-track:e7ed57caf4ebc99d62eae8239f9070ca9781bc20dce15538b01035fd55f180fa` |
| 9 | `theorem` | [exists_max_ideal_of_mem_nonunits](../../../../mathematics/Algebra/Nonunits/Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35.lean/declarations/exists-max-ideal-of-mem-nonunits--9ed200ca0275928eeafae9f5.md) | 55 | `result-track:9ed200ca0275928eeafae9f51d8ede66d5f6e00723c823a8ee105422dd8137f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
