# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PartialSups.Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "592a08f05f096ff7b1ea91471b2e001b932d9a28",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `592a08f05f096ff7b1ea91471b2e001b932d9a28`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Finset` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialSups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/partialsups--a2d080bf45d63da1d38794e5.md) | 46 | `declaration-track:a2d080bf45d63da1d38794e51055f8ab3ebb761c7fd7006c914a5a588058b8fb` |
| 2 | `theorem` | [partialSups_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/partialsups-zero--85ebfc342b75c9fd28785941.md) | 52 | `result-track:85ebfc342b75c9fd287859415e02410ceb094d4fff94215b79854ca0fca01bfe` |
| 3 | `theorem` | [partialSups_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/partialsups-succ--cb4d9b8e81b8b85a137e13b5.md) | 57 | `result-track:cb4d9b8e81b8b85a137e13b5ca5fe9e3185801366a8b52624031e09f1149a0de` |
| 4 | `theorem` | [le_partialSups_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/le-partialsups-of-le--4fef2df5513a138847f86e5f.md) | 62 | `result-track:4fef2df5513a138847f86e5f20cb3a6b5a947d36e63d6be37dcb363f2aae9900` |
| 5 | `theorem` | [le_partialSups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/le-partialsups--2708be206db00085979690a3.md) | 70 | `result-track:2708be206db00085979690a3b38137c14ddb3f6e481400021e25b1649fdb20f3` |
| 6 | `theorem` | [partialSups_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/partialsups-le--b1568dd12ce2b74c6c53b964.md) | 73 | `result-track:b1568dd12ce2b74c6c53b96435fe3c34c0a806203163f9e42b5f5a7e2f5467c1` |
| 7 | `theorem` | [bddAbove_range_partialSups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/bddabove-range-partialsups--8101c5b1974f52fc494c6e40.md) | 81 | `result-track:8101c5b1974f52fc494c6e40bdcd599ff4cd8cafe3c3b9d71ad49111dc458e30` |
| 8 | `theorem` | [Monotone.partialSups_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/monotone-partialsups-eq--fd061a330e4358187d559407.md) | 92 | `result-track:fd061a330e4358187d5594070e2f1d623327a085ec54deff0545a7cf4dd4ab4b` |
| 9 | `theorem` | [partialSups_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/partialsups-mono--d022fe7f44998c85b97a4c24.md) | 99 | `result-track:d022fe7f44998c85b97a4c24d23c0dacb5eae086007b7f2e874f5d4639ccf98b` |
| 10 | `def` | [partialSups.gi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/partialsups-gi--2b0cdcb34d8c57c67b6ffc35.md) | 108 | `declaration-track:2b0cdcb34d8c57c67b6ffc35f515ce20811101022b65acc1b974ee2d22f4a8ba` |
| 11 | `theorem` | [partialSups_eq_sup'_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/partialsups-eq-sup-range--c6be03ff5f09432b7562e945.md) | 119 | `result-track:c6be03ff5f09432b7562e9454eac32f120c5d60b07f009e01b014c6b2148165c` |
| 12 | `theorem` | [partialSups_eq_sup_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/partialsups-eq-sup-range--4be490b5a56170bc0133dad9.md) | 130 | `result-track:4be490b5a56170bc0133dad9c0108c56456a4066159826faf4b8464c92a8a405` |
| 13 | `theorem` | [partialSups_disjoint_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/partialsups-disjoint-of-disjoint--740c249ce4e4666cb170b35f.md) | 140 | `result-track:740c249ce4e4666cb170b35f6b462c38cc2cb9f4eeed67b1c81dff7e34469d84` |
| 14 | `theorem` | [partialSups_eq_ciSup_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/partialsups-eq-cisup-iic--bc1a8194fd5573943681091d.md) | 152 | `result-track:bc1a8194fd5573943681091d31f5b0c6993854536e2350d6682be17769991990` |
| 15 | `theorem` | [ciSup_partialSups_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/cisup-partialsups-eq--35acb8946abb69907f62d968.md) | 159 | `result-track:35acb8946abb69907f62d968a0c4cde07fff654a50aa264825e062131a72c105` |
| 16 | `theorem` | [partialSups_eq_biSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/partialsups-eq-bisup--a0100760b1d24cda4be92b44.md) | 173 | `result-track:a0100760b1d24cda4be92b44a829dfa0720e9f12228fbdf03dc19acc97d63ad6` |
| 17 | `theorem` | [iSup_partialSups_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/isup-partialsups-eq--a6809b17c6d06cc2e57031d4.md) | 178 | `result-track:a6809b17c6d06cc2e57031d42c6a48d9345e38c091cfb0d4f3b534d103173003` |
| 18 | `theorem` | [iSup_le_iSup_of_partialSups_le_partialSups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/isup-le-isup-of-partialsups-le-partialsups--c20e8aa8345e32e92b34f73a.md) | 182 | `result-track:c20e8aa8345e32e92b34f73a9992b108731895a2e67c5042e5ce9fe8dc20bcd0` |
| 19 | `theorem` | [iSup_eq_iSup_of_partialSups_eq_partialSups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Varianta1c2b8c803b6b2deb180e636fcff61cba1c0254c839e81b0a59e5887197e079c.lean/declarations/isup-eq-isup-of-partialsups-eq-partialsups--8c5ab7f5e40eaa0510d478a4.md) | 188 | `result-track:8c5ab7f5e40eaa0510d478a49f6579c38ec71c3429b78af8aa3f6ce97f9974ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
