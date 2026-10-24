# Verification target: GRWTSK.Analysis.MeasureTheory.Conservative.Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4e4102946ed9d02d11f8333ee166bd42a076e0d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4e4102946ed9d02d11f8333ee166bd42a076e0d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Pigeonhole` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Conservative](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/conservative--c1b91a3d8426403117ed426d.md) | 60 | `declaration-track:c1b91a3d8426403117ed426d34db2e5630b156b5d91e7bab2d5a79a64f155f11` |
| 2 | `theorem` | [MeasurePreserving.conservative](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/measurepreserving-conservative--48be12bb01c9c2421bbd1e0d.md) | 66 | `result-track:48be12bb01c9c2421bbd1e0db286355be126c3378f02aa4931e4bcec236f449a` |
| 3 | `theorem` | [id](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/id--f1a94987ad685e96c5703601.md) | 73 | `result-track:f1a94987ad685e96c5703601e1bad2cef1448b3e88939559593371d52e880b48` |
| 4 | `theorem` | [of_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/of-absolutelycontinuous--13ad778b36c62f3f57544a56.md) | 78 | `result-track:13ad778b36c62f3f57544a56e499a084f1e45f89a474ea833716fdbafc47c83a` |
| 5 | `theorem` | [measureRestrict](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/measurerestrict--65688fd363a7adf99e4dd1c5.md) | 84 | `result-track:65688fd363a7adf99e4dd1c5f0c9d41823211c452a28d6f663fe707390fcc560` |
| 6 | `theorem` | [congr_ae](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/congr-ae--770266e04ce77b843d1c9c54.md) | 89 | `result-track:770266e04ce77b843d1c9c5406b8d234e2eb1c5ffbb9812c19bc4b3b142d9cf5` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Conservative.Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.MeasureTheory.conservative_congr](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/root-grwtsk-analysis-measuretheory-conservative-variant5c0aaa21b124508d9--e1a687d70c8d72d7a5ac6e1d.md) | 94 | `result-track:e1a687d70c8d72d7a5ac6e1d3263385be9970ded0debca4af71cdb6c68062d42` |
| 8 | `theorem` | [exists_mem_iterate_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/exists-mem-iterate-mem--aa55ce1599783bbc3118b7c8.md) | 100 | `result-track:aa55ce1599783bbc3118b7c8a0c010046cd57f9a2e5c23dc21ca1a4a784a773f` |
| 9 | `theorem` | [frequently_measure_inter_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/frequently-measure-inter-ne-zero--957ed06cde72dad112695bfb.md) | 110 | `result-track:957ed06cde72dad112695bfb97f9c6c9cdf602243c0cac165cbc7d594eb7b216` |
| 10 | `theorem` | [exists_gt_measure_inter_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/exists-gt-measure-inter-ne-zero--b1697b8cd2e1758b1882c96a.md) | 139 | `result-track:b1697b8cd2e1758b1882c96ac297e00ad3952705c9a2d192b1162eb0ec41d77f` |
| 11 | `theorem` | [measure_mem_forall_ge_image_notMem_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/measure-mem-forall-ge-image-notmem-eq-zero--c8e965388659b142a339f785.md) | 147 | `result-track:c8e965388659b142a339f78595e13c4571d85fa10b923f3cad53839d26ad707b` |
| 12 | `theorem` | [ae_mem_imp_frequently_image_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/ae-mem-imp-frequently-image-mem--d21e3c67809a265c288c5bd9.md) | 164 | `result-track:d21e3c67809a265c288c5bd95650b37fa563926ba139632ad01fa59805191b97` |
| 13 | `theorem` | [inter_frequently_image_mem_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/inter-frequently-image-mem-ae-eq--dc6fe5aea639dc9882670087.md) | 171 | `result-track:dc6fe5aea639dc988267008716d94c743d31cd48f7ea762f72e82a4cc6c87f42` |
| 14 | `theorem` | [measure_inter_frequently_image_mem_eq](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/measure-inter-frequently-image-mem-eq--eabc6e6b427379a279b28401.md) | 175 | `result-track:eabc6e6b427379a279b28401c543fac7054b23a6b12f3fdaaea4dae018ed4639` |
| 15 | `theorem` | [ae_forall_image_mem_imp_frequently_image_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/ae-forall-image-mem-imp-frequently-image-mem--c177e00ff50905ef3608491b.md) | 182 | `result-track:c177e00ff50905ef3608491b3a649045810b3c1f6c17789160524d7186ab020e` |
| 16 | `theorem` | [frequently_ae_mem_and_frequently_image_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/frequently-ae-mem-and-frequently-image-mem--e6c49231dfec11ac76f0b07d.md) | 193 | `result-track:e6c49231dfec11ac76f0b07d2ee9e2e116a8d06369560fecb5865ef9ed08eabf` |
| 17 | `theorem` | [ae_frequently_mem_of_mem_nhds](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/ae-frequently-mem-of-mem-nhds--e879e972b93e41d0f940a1dd.md) | 201 | `result-track:e879e972b93e41d0f940a1dd87e221e90ca2a09698b509c414fa7544d20bd418` |
| 18 | `theorem` | [iterate](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/declarations/iterate--3a4e7ad306c518aa20d0a6a4.md) | 211 | `result-track:3a4e7ad306c518aa20d0a6a4013aea529dbcb40e26739fcb31dadc0b95573807` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
