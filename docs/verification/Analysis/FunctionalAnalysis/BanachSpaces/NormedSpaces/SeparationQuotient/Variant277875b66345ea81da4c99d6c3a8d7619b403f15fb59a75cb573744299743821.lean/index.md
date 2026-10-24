# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.SeparationQuotient.Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75d5508fbadcfd344e5305ead78ea7ea8cc4a990",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75d5508fbadcfd344e5305ead78ea7ea8cc4a990`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Hom` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normedMk](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/declarations/normedmk--a1301cd7201d3f4ff28cbcfe.md) | 48 | `declaration-track:a1301cd7201d3f4ff28cbcfefc5b6d876ca8ce3663cd2276dac657cc9ce41e27` |
| 2 | `theorem` | [norm_normedMk_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/declarations/norm-normedmk-le--eef92a728672487eb6fc2e4b.md) | 53 | `result-track:eef92a728672487eb6fc2e4ba6264e8efbc9eee1a0083062ce67b96963460bf5` |
| 3 | `lemma` | [apply_eq_apply_of_inseparable](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/declarations/apply-eq-apply-of-inseparable--24e6c0be9cf7e9dc1b4da3da.md) | 56 | `result-track:24e6c0be9cf7e9dc1b4da3da4b0b599c6b282e879e3e62cd3ff9d28c5ca221a2` |
| 4 | `def` | [liftNormedAddGroupHom](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/declarations/liftnormedaddgrouphom--9a9934c7aa2ca19adacdcc91.md) | 65 | `declaration-track:9a9934c7aa2ca19adacdcc9124685c45a8ec1721c1ccba990c9d24bba4bce2be` |
| 5 | `theorem` | [norm_liftNormedAddGroupHom_apply_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/declarations/norm-liftnormedaddgrouphom-apply-le--c78b37008a88897b5cad0dfb.md) | 74 | `result-track:c78b37008a88897b5cad0dfbc64bc5a760a8ae19d2d4913492dea8818662e7e4` |
| 6 | `def` | [liftNormedAddGroupHomEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/declarations/liftnormedaddgrouphomequiv--8069ef264661f82fc4788a1e.md) | 83 | `declaration-track:8069ef264661f82fc4788a1e3cad438a8826637292b3292cc193e7ac61278633` |
| 7 | `theorem` | [norm_liftNormedAddGroupHom_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/declarations/norm-liftnormedaddgrouphom-le--5c00cc52710b1196544d9b2f.md) | 99 | `result-track:5c00cc52710b1196544d9b2fc368ebba62f5898785cb18bd34968083819ba0d2` |
| 8 | `theorem` | [liftNormedAddGroupHom_norm_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/declarations/liftnormedaddgrouphom-norm-le--c112d4d0e0c238a4323d69fb.md) | 104 | `result-track:c112d4d0e0c238a4323d69fbd5ec36e2d9ae5aeba2c7105a593396b478274f92` |
| 9 | `theorem` | [liftNormedAddGroupHom_normNoninc](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/declarations/liftnormedaddgrouphom-normnoninc--3dd65e4ba04b4fc11562fc71.md) | 109 | `result-track:3dd65e4ba04b4fc11562fc716653fbc283e20d900a4969a7c3d907c7d70b719b` |
| 10 | `theorem` | [norm_normedMk_eq_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/declarations/norm-normedmk-eq-one--751cf9a1ae41dc19904d1ee5.md) | 118 | `result-track:751cf9a1ae41dc19904d1ee52fa4af7b77fac45bd669931143d9490f41d05c35` |
| 11 | `theorem` | [normedMk_eq_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/declarations/normedmk-eq-zero-iff--b83d4e7da12ab48b430e3f86.md) | 127 | `result-track:b83d4e7da12ab48b430e3f86bae8c957aa34ab4a75a27b9829054a16e0ec2470` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
