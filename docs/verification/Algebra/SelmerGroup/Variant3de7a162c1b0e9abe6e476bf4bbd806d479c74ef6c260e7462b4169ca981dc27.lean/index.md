# Verification target: GRWTSK.Algebra.SelmerGroup.Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "127c8fbdc1cbb4d190c14e0c517239f42fc9c798",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/index.md) · [Full source](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `127c8fbdc1cbb4d190c14e0c517239f42fc9c798`.

Source path: `GRWTSK/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.TypeTags` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [valuationOfNeZeroToFun](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/valuationofnezerotofun--83ffaa0d99e751c9bf6bf506.md) | 86 | `declaration-track:83ffaa0d99e751c9bf6bf50673268db86a47a767c1ee0b650749b8a40f068c0e` |
| 2 | `theorem` | [valuationOfNeZeroToFun_eq](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/valuationofnezerotofun-eq--a7d63ee116de3bdae2a770bb.md) | 94 | `result-track:a7d63ee116de3bdae2a770bb49cb6527953db62c35db3eefa6889345c0f8f7bd` |
| 3 | `def` | [valuationOfNeZero](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/valuationofnezero--36c19a6dd196b43284d92194.md) | 106 | `declaration-track:36c19a6dd196b43284d921941311f32c47feb705fbe3cb8b30eabf1d08e2ce8f` |
| 4 | `theorem` | [valuationOfNeZero_eq](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/valuationofnezero-eq--40e5f3cb8d5877895c806848.md) | 115 | `result-track:40e5f3cb8d5877895c806848caa0a0d98ded8e5cdd0a3d93d2cfab7e4dd6918f` |
| 5 | `theorem` | [valuation_of_unit_eq](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/valuation-of-unit-eq--4fe2cbfd0b1ae768da00d9de.md) | 120 | `result-track:4fe2cbfd0b1ae768da00d9def1d295c64887b8b7f25d2a8ce2620d2c0c9c57a8` |
| 6 | `def` | [valuationOfNeZeroMod](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/valuationofnezeromod--f433c339da37d70bae760e97.md) | 138 | `declaration-track:f433c339da37d70bae760e970b91e3115676697a56a3a36a260d1843fbaef7b0` |
| 7 | `theorem` | [valuation_of_unit_mod_eq](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/valuation-of-unit-mod-eq--c15d4aef7fbecc8a733904f8.md) | 150 | `result-track:c15d4aef7fbecc8a733904f8b7e73b8c6904d0b911784016fa355bceb3af5b47` |
| 8 | `def` | [selmerGroup](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/selmergroup--aa4ecee06aff6aacb1547e4b.md) | 165 | `declaration-track:aa4ecee06aff6aacb1547e4b11222bf63aad69c13efc2ba18b07c6bb3a0c87a3` |
| 9 | `theorem` | [monotone](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/monotone--ada25164bfc84212317e7ab3.md) | 177 | `result-track:ada25164bfc84212317e7ab300b161bed364eb854943739be27242c5e42daaf2` |
| 10 | `def` | [valuation](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/valuation--c66bde746ffef8fed1970c77.md) | 181 | `declaration-track:c66bde746ffef8fed1970c77c8560bf0e49b3eb97e5f0f9d4617710885c6d108` |
| 11 | `theorem` | [valuation_ker_eq](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/valuation-ker-eq--82cc5ac394b14a4ad87c39ef.md) | 187 | `result-track:82cc5ac394b14a4ad87c39efc5492ade89822ca03be089e6f5d5936c03035095` |
| 12 | `def` | [fromUnit](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/fromunit--8f366a29f2dd8e5d42c0e8ce.md) | 199 | `declaration-track:8f366a29f2dd8e5d42c0e8cead18546e231ab0b6f84cdc4761809c40f4e210e2` |
| 13 | `theorem` | [fromUnit_ker](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/fromunit-ker--e4eb3f862e26fd3b08324529.md) | 208 | `result-track:e4eb3f862e26fd3b083245296cd9ef473038c7bdb521bded0eec12dc30f74901` |
| 14 | `def` | [fromUnitLift](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/fromunitlift--536c9dff7b62a1d82353ff2f.md) | 237 | `declaration-track:536c9dff7b62a1d82353ff2f0484a602ce1a91b193b3effc38f622c5afc67d35` |
| 15 | `theorem` | [fromUnitLift_injective](../../../../mathematics/Algebra/SelmerGroup/Variant3de7a162c1b0e9abe6e476bf4bbd806d479c74ef6c260e7462b4169ca981dc27.lean/declarations/fromunitlift-injective--0f85009e9a6ac935db5ccd77.md) | 242 | `result-track:0f85009e9a6ac935db5ccd779f19d4efddb062bc5384286ac6dd66597a4284e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
