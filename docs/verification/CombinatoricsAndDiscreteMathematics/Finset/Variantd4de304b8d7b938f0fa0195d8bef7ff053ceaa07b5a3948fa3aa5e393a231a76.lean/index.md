# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad3560132c5718c0b49a61a84c6bde0b751a250c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad3560132c5718c0b49a61a84c6bde0b751a250c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Finset.Nonempty.sup'_eq_cSup_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/finset-nonempty-sup-eq-csup-image--1038cb365186e050340b131b.md) | 25 | `result-track:1038cb365186e050340b131b2f2f46aa819eea23ef75cafda2a0ffac2d07af25` |
| 2 | `theorem` | [Finset.Nonempty.sup'_id_eq_cSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/finset-nonempty-sup-id-eq-csup--27e40bcc092d3d2f82d1124f.md) | 31 | `result-track:27e40bcc092d3d2f82d1124fe9d7a5073502be33e4533b848c8292b54f933f08` |
| 3 | `theorem` | [Finset.Nonempty.cSup_eq_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/finset-nonempty-csup-eq-max--08d9e522785a7a8077095afa.md) | 41 | `result-track:08d9e522785a7a8077095afa43e997eeb7b0438446c495acd45a9434504ca8f6` |
| 4 | `theorem` | [Finset.Nonempty.cInf_eq_min'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/finset-nonempty-cinf-eq-min--84908b27201b5996556f5fce.md) | 45 | `result-track:84908b27201b5996556f5fced50ed124e7d0254d554cd662f01d964aa0909f62` |
| 5 | `theorem` | [Finset.Nonempty.cSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/finset-nonempty-csup-mem--4b10071bd49e81f10c4cd485.md) | 49 | `result-track:4b10071bd49e81f10c4cd4859ce66b419eb40ea564b3144bbd93cda3911c93b7` |
| 6 | `theorem` | [Finset.Nonempty.cInf_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/finset-nonempty-cinf-mem--ba2337538ac985da1fe22885.md) | 54 | `result-track:ba2337538ac985da1fe228858449c54027965d9c4ada51139b9dbf0c05a88f97` |
| 7 | `theorem` | [Set.Nonempty.cSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/set-nonempty-csup-mem--ad5755c88f0ac1a00f4137a3.md) | 58 | `result-track:ad5755c88f0ac1a00f4137a34974855563602ce3edaaba8166c11de0f317a19b` |
| 8 | `theorem` | [Set.Nonempty.cInf_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/set-nonempty-cinf-mem--923dd3169af3c100c42ed676.md) | 63 | `result-track:923dd3169af3c100c42ed676522d47b0ecc98e7eec86d69cf1b9dcde6e17e543` |
| 9 | `theorem` | [Set.Finite.cSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/set-finite-csup-lt-iff--79c8c191b9543fb1068a7c39.md) | 67 | `result-track:79c8c191b9543fb1068a7c3935e47d35170685f7522b8dd08bff0886db513dea` |
| 10 | `theorem` | [Set.Finite.lt_cInf_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/set-finite-lt-cinf-iff--315fe1b96e6cca5de03b2c47.md) | 71 | `result-track:315fe1b96e6cca5de03b2c4726394e67f742e35ea04b4aff51e192199138073d` |
| 11 | `theorem` | [sup'_eq_csSup_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/sup-eq-cssup-image--9df0c0b86f14f31aab7e6352.md) | 87 | `result-track:9df0c0b86f14f31aab7e6352ba8080e751ee13f6542bd4df5ff0db1eeb8b1bec` |
| 12 | `theorem` | [inf'_eq_csInf_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/inf-eq-csinf-image--e7397cabf40c5b1efb9da55a.md) | 99 | `result-track:e7397cabf40c5b1efb9da55aae0068c5ca437fda093f75b2b474cba1d275cd18` |
| 13 | `theorem` | [sup'_id_eq_csSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/sup-id-eq-cssup--d2cc381463c7ef7029b44ff9.md) | 104 | `result-track:d2cc381463c7ef7029b44ff9160a2bbe98b1fb00384d1f081b7c8216bcc9eb44` |
| 14 | `theorem` | [inf'_id_eq_csInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantd4de304b8d7b938f0fa0195d8bef7ff053ceaa07b5a3948fa3aa5e393a231a76.lean/declarations/inf-id-eq-csinf--192f7a64468e2db978544f5f.md) | 108 | `result-track:192f7a64468e2db978544f5f10b8d375a9855de79f2308bf9d48058a4d92ee7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
