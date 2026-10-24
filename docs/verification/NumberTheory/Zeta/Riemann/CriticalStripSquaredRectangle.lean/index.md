# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSquaredRectangle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8fba3be2e2289e99aee74217df8dcf3c73e6b7e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8fba3be2e2289e99aee74217df8dcf3c73e6b7e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSquaredCover`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourTermRectangle`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourTermRectangle.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [box](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/declarations/box--65eccc8909c0f870f16e83e9.md) | 25 | `declaration-track:65eccc8909c0f870f16e83e94f0fdae0b7fb97aacaa0df8c18d2adeda51249c6` |
| 2 | `lemma` | [squared_leaf_accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/declarations/squared-leaf-accepts--924ad5c7cdf409d7fcc6c84c.md) | 32 | `result-track:924ad5c7cdf409d7fcc6c84c3cac15ee7db21da6a6e74c866271d8aec2e395f6` |
| 3 | `lemma` | [old_leaf_rejects](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/declarations/old-leaf-rejects--5b7d7d4b83ea82eccdad657d.md) | 38 | `result-track:5b7d7d4b83ea82eccdad657d59d45c8e1db0a7017e08201f0be40323e98ba508` |
| 4 | `lemma` | [search_accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/declarations/search-accepts--17cc8a5192f0b1cb4194f3e3.md) | 43 | `result-track:17cc8a5192f0b1cb4194f3e3987f74400dc0abc3ee5d89ba1098942918d1809c` |
| 5 | `def` | [certificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/declarations/certificate--50b76e2351448c5057081f20.md) | 48 | `declaration-track:50b76e2351448c5057081f208d7f3135bffe7740e42c1f8790faef898f2c2c43` |
| 6 | `def` | [cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/declarations/cover--2909e6946553cdb0ebe028cb.md) | 52 | `declaration-track:2909e6946553cdb0ebe028cb46a5f6957d35a2e754f8eb0e4885bd5a727b5d5e` |
| 7 | `lemma` | [box_subset_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/declarations/box-subset-disk--6cedd2f3cdb3fe7647836bd3.md) | 57 | `result-track:6cedd2f3cdb3fe7647836bd3cb18e5bb443a4204f1f056d8968becf1ac64c8e0` |
| 8 | `theorem` | [norm_lower_on_box](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/declarations/norm-lower-on-box--bafa80f4fa3680dc08454e23.md) | 63 | `result-track:bafa80f4fa3680dc08454e235d47ebea79115ea89026febe5d2accfbe65c5698` |
| 9 | `theorem` | [noTargetZero_box](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/declarations/notargetzero-box--c5cd25c1e1944ad062a49cc4.md) | 67 | `result-track:c5cd25c1e1944ad062a49cc410719c745e75e36575a1995641da1df1bdddb738` |
| 10 | `theorem` | [old_box_subset](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/declarations/old-box-subset--e0b9caef5605e05bd2ecdacd.md) | 72 | `result-track:e0b9caef5605e05bd2ecdacd4654084b5a2e93f393afa7e61346cfeb8c01467c` |
| 11 | `theorem` | [strict_extension](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/declarations/strict-extension--1cdecf9f40b82391d2096153.md) | 85 | `result-track:1cdecf9f40b82391d2096153c60752a05faeaeca2cff89ad4f019e23fc7d39ac` |
| 12 | `theorem` | [ambient_point_outside](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/declarations/ambient-point-outside--a96f28504eec3b436c3e924a.md) | 91 | `result-track:a96f28504eec3b436c3e924a98b058d9b7316834f863753192d16705c5175795` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
