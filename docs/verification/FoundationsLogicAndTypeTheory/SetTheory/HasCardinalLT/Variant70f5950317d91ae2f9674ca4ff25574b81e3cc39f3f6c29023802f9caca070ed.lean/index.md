# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.HasCardinalLT.Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6e1b39e46c500a776dc66a6aacc5c1e7a72893d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6e1b39e46c500a776dc66a6aacc5c1e7a72893d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Regular` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasCardinalLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/declarations/hascardinallt--07e8a22a41951492f8044d13.md) | 20 | `declaration-track:07e8a22a41951492f8044d1352a46b690091310a30a27d69c1a260da1db72e9d` |
| 2 | `lemma` | [hasCardinalLT_iff_cardinal_mk_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/declarations/hascardinallt-iff-cardinal-mk-lt--765356c6a74cb23d3d139d4c.md) | 23 | `result-track:765356c6a74cb23d3d139d4c10678550e51c5d628bdf31392fcd5993fa073a75` |
| 3 | `lemma` | [small](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/declarations/small--8a18ba1d6e103b0f2595b31d.md) | 35 | `result-track:8a18ba1d6e103b0f2595b31d28b6f4f120df988d47e1f2b807af39b4bd7e0c1f` |
| 4 | `lemma` | [of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/declarations/of-le--f5a1fd05416de544c7b78758.md) | 40 | `result-track:f5a1fd05416de544c7b7875803865e73c4e4e483f95e9f98373d549e8c4da90b` |
| 5 | `lemma` | [of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/declarations/of-injective--536b381242e1ae9ad1f5ccfa.md) | 46 | `result-track:536b381242e1ae9ad1f5ccfa0d1a4ccc0d39ef582f81725a23a8292ce78be208` |
| 6 | `lemma` | [of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/declarations/of-surjective--3cfae49242d1f34e685928e2.md) | 55 | `result-track:3cfae49242d1f34e685928e284627a2c623efee204d022fb58474a789f3572f1` |
| 7 | `lemma` | [hasCardinalLT_iff_of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/declarations/hascardinallt-iff-of-equiv--4b5e5581291535573a2d1de4.md) | 68 | `result-track:4b5e5581291535573a2d1de4c38c212bf04bde89a3f7cc7a97964ba262d8f521` |
| 8 | `lemma` | [hasCardinalLT_aleph0_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/declarations/hascardinallt-aleph0-iff--d5d724c06c5b0885287ad254.md) | 74 | `result-track:d5d724c06c5b0885287ad254ba0ce06ec1244320691915e554e6af136b94b38a` |
| 9 | `lemma` | [hasCardinalLT_sum_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/declarations/hascardinallt-sum-iff--c08d641bae2ff4318c82cfce.md) | 78 | `result-track:c08d641bae2ff4318c82cfceaf69194f4aeabe1795ad90e240f6c9b02ce8ea4e` |
| 10 | `lemma` | [hasCardinalLT_option_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/declarations/hascardinallt-option-iff--1681b6b5ce0808155807f30c.md) | 92 | `result-track:1681b6b5ce0808155807f30c628d9f6a70ab2c93680221183172ed12af25795d` |
| 11 | `lemma` | [exists_regular_cardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/declarations/exists-regular-cardinal--fe73cc1bb2565e96be421652.md) | 105 | `result-track:fe73cc1bb2565e96be4216526930ae517ee9c99aaa364cafff147fb128cc1749` |
| 12 | `lemma` | [exists_regular_cardinal_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant70f5950317d91ae2f9674ca4ff25574b81e3cc39f3f6c29023802f9caca070ed.lean/declarations/exists-regular-cardinal-forall--8d409043f8e642c428642b46.md) | 114 | `result-track:8d409043f8e642c428642b4676f6ad3c235d37d09da6173c2137d4371b62be6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
