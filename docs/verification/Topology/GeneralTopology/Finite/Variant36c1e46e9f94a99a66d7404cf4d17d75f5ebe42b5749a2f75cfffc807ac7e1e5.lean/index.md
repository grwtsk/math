# Verification target: GRWTSK.Topology.GeneralTopology.Finite.Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6afa688a56cc8a6fc39893b4a5fa642d5709aa6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6afa688a56cc8a6fc39893b4a5fa642d5709aa6`.

Source path: `GRWTSK/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Bases.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eventually_forall_ge_atTop](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/eventually-forall-ge-attop--64d75efaa9690ce510ee2d80.md) | 31 | `result-track:64d75efaa9690ce510ee2d80369ed8832b646033b66da17109bc36430579ffad` |
| 2 | `theorem` | [eventually_forall_le_atBot](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/eventually-forall-le-atbot--c018c94044cc75f551b771eb.md) | 39 | `result-track:c018c94044cc75f551b771ebb157595b77eb49dedc7781ff34d1bb5501baa6f9` |
| 3 | `theorem` | [Tendsto.eventually_forall_ge_atTop](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/tendsto-eventually-forall-ge-attop--688511cea082e69f12f313cb.md) | 43 | `result-track:688511cea082e69f12f313cb2ece8ebca1289d82c998b311d1238e4ce7c71b96` |
| 4 | `theorem` | [Tendsto.eventually_forall_le_atBot](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/tendsto-eventually-forall-le-atbot--30430690e34784c03cfadd94.md) | 48 | `result-track:30430690e34784c03cfadd94360a46bd18036f0c93dbb214c699e847f2dfb9e5` |
| 5 | `theorem` | [high_scores](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/high-scores--5ef197ea4938f62d243c2140.md) | 60 | `result-track:5ef197ea4938f62d243c2140d7e196ba86157a5a2a0cde87b2a256f196a97bb5` |
| 6 | `theorem` | [low_scores](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/low-scores--fd6e6a449e62b27706949a2a.md) | 85 | `result-track:fd6e6a449e62b27706949a2accf0ebd7b576bb36f438f1eae4faf67ee45d9986` |
| 7 | `theorem` | [frequently_high_scores](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/frequently-high-scores--5be072cc192d2ea5711fb911.md) | 92 | `result-track:5be072cc192d2ea5711fb91143fda174a07db44a696273da13460bd8129ebe62` |
| 8 | `theorem` | [frequently_low_scores](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/frequently-low-scores--c1cfb39f4b5cdccd00a30fad.md) | 99 | `result-track:c1cfb39f4b5cdccd00a30fadcc6ba4940690c65f16823504d5f9c3d4c38b4046` |
| 9 | `theorem` | [strictMono_subseq_of_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/strictmono-subseq-of-tendsto-attop--ad8a523f95bdab4fd0b00cda.md) | 103 | `result-track:ad8a523f95bdab4fd0b00cdae9c22f439901d15d982c99a30d60cf44a6af410c` |
| 10 | `theorem` | [strictMono_subseq_of_id_le](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/strictmono-subseq-of-id-le--d0e779d626f99cbf5e425f92.md) | 108 | `result-track:d0e779d626f99cbf5e425f92757b45499a5386f7c090f497dfe5badadb9c5332` |
| 11 | `theorem` | [Eventually.atTop_of_arithmetic](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/eventually-attop-of-arithmetic--ed08d11e32a1bf98218cee9c.md) | 112 | `result-track:ed08d11e32a1bf98218cee9cc63c621c89297b29764308f8f9a1c9078efe7a8d` |
| 12 | `theorem` | [HasAntitoneBasis.subbasis_with_rel](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/hasantitonebasis-subbasis-with-rel--33580d93a2fe7d55539dae20.md) | 126 | `result-track:33580d93a2fe7d55539dae20b07fc640b775f81bd4763d6909a9d29701518012` |
| 13 | `theorem` | [eventually_pow_lt_factorial_sub](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/eventually-pow-lt-factorial-sub--225bcfdf47309b87fd6d60c9.md) | 143 | `result-track:225bcfdf47309b87fd6d60c98f3893b26d2daef7abd05e39f537e2ebbb9ad00a` |
| 14 | `theorem` | [eventually_mul_pow_lt_factorial_sub](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/declarations/eventually-mul-pow-lt-factorial-sub--a8e58731a0e787807fa8e4ac.md) | 165 | `result-track:a8e58731a0e787807fa8e4ac028e5aa49c2cc593448f68d98b2c6459c467c20f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
