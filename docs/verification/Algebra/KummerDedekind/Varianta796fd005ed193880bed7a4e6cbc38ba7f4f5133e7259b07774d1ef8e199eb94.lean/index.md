# Verification target: GRWTSK.Algebra.KummerDedekind.Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48c7d8cc4db5e068318576b5451c290c1fa12d4a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/index.md) · [Full source](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48c7d8cc4db5e068318576b5451c290c1fa12d4a`.

Source path: `GRWTSK/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsAdjoinRoot` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductor](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/conductor--18b78eb64172b85fcd95fb49.md) | 72 | `declaration-track:18b78eb64172b85fcd95fb491207e067a172f7ad529d3ceb2a78f5017a699e46` |
| 2 | `theorem` | [conductor_eq_of_eq](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/conductor-eq-of-eq--0be3abb1781ea1c5b0b1bf28.md) | 81 | `result-track:0be3abb1781ea1c5b0b1bf28e6d7e9eb774873a41275d577a192c047772427d2` |
| 3 | `theorem` | [conductor_subset_adjoin](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/conductor-subset-adjoin--956de5c4b16a013d92d7d60b.md) | 85 | `result-track:956de5c4b16a013d92d7d60b9af265522a54bfea1094e1e4f28464eea656fc79` |
| 4 | `theorem` | [mem_conductor_iff](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/mem-conductor-iff--887675655ae9516a7bcb357d.md) | 89 | `result-track:887675655ae9516a7bcb357dbe21e35f20ad945e7395e0ad5ae5c28b4cca24c8` |
| 5 | `theorem` | [conductor_eq_top_of_adjoin_eq_top](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/conductor-eq-top-of-adjoin-eq-top--050e5585a488f650094ed0cc.md) | 93 | `result-track:050e5585a488f650094ed0ccb17665517e2570d1cda4431084612d3091f68c23` |
| 6 | `theorem` | [conductor_eq_top_of_powerBasis](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/conductor-eq-top-of-powerbasis--b4201aafd425145a95c0dd5c.md) | 97 | `result-track:b4201aafd425145a95c0dd5c9618dd17cfcc931a55272f021dd22c5a662dae12` |
| 7 | `theorem` | [prod_mem_ideal_map_of_mem_conductor](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/prod-mem-ideal-map-of-mem-conductor--787f064c604c50cbbbc0736a.md) | 105 | `result-track:787f064c604c50cbbbc0736a327d62005a842d0fd82d8cbd9b0f85fa650eb887` |
| 8 | `theorem` | [comap_map_eq_map_adjoin_of_coprime_conductor](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/comap-map-eq-map-adjoin-of-coprime-conductor--c06fe3d032e6ff09423b6e11.md) | 137 | `result-track:c06fe3d032e6ff09423b6e11eb90907034b7be4e43df4f09102b204414121afe` |
| 9 | `def` | [quotAdjoinEquivQuotMap](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/quotadjoinequivquotmap--aca8b5f0535c2a99837354f4.md) | 176 | `declaration-track:aca8b5f0535c2a99837354f422b7a2e157408c1c1e55d971fb028a021585a5ad` |
| 10 | `theorem` | [quotAdjoinEquivQuotMap_apply_mk](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/quotadjoinequivquotmap-apply-mk--fac6e6b94326d42cf5ecef65.md) | 215 | `result-track:fac6e6b94326d42cf5ecef651f87f779c6304bbd8dae4b59b7b049db3f0483d5` |
| 11 | `def` | [normalizedFactorsMapEquivNormalizedFactorsMinPolyMk](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/normalizedfactorsmapequivnormalizedfactorsminpolymk--829d4ec4db45896da0c0419e.md) | 236 | `declaration-track:829d4ec4db45896da0c0419e36c4533795ea9c37a0f36015d84e4a366d3cb266` |
| 12 | `theorem` | [multiplicity_factors_map_eq_multiplicity](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/multiplicity-factors-map-eq-multiplicity--c397358df91c3a582eaa2163.md) | 262 | `result-track:c397358df91c3a582eaa2163dbca100e75afc153253ba4e42da6796259d72a14` |
| 13 | `theorem` | [normalizedFactors_ideal_map_eq_normalizedFactors_min_poly_mk_map](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/normalizedfactors-ideal-map-eq-normalizedfactors-min-poly-mk-map--8c64e4febbc2b0b05afd6ed5.md) | 274 | `result-track:8c64e4febbc2b0b05afd6ed5c1d414b99a28587c2c5c0393cf5c5ce0c428df17` |
| 14 | `theorem` | [Ideal.irreducible_map_of_irreducible_minpoly](../../../../mathematics/Algebra/KummerDedekind/Varianta796fd005ed193880bed7a4e6cbc38ba7f4f5133e7259b07774d1ef8e199eb94.lean/declarations/ideal-irreducible-map-of-irreducible-minpoly--50d07d395269d0bf78b81acf.md) | 318 | `result-track:50d07d395269d0bf78b81acf0c97b71a87f2bdadeb7b05bc3cc221f656a9c4fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
