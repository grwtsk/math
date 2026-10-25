# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StrictSheafSurface.Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4a9de8d66f7c0a25e8cb52501c7869622d9a939",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4a9de8d66f7c0a25e8cb52501c7869622d9a939`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Lookup` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.BitMatrixSite` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StrictCompatibleFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/declarations/strictcompatiblefamily--9a57d1a4f173d9229916d8a7.md) | 15 | `declaration-track:9a57d1a4f173d9229916d8a784b2ec881d698b174535ce26e92fd1bd6339db50` |
| 2 | `def` | [StrictRestrictsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/declarations/strictrestrictsto--8be5d651ea0bbe9de54ea966.md) | 29 | `declaration-track:8be5d651ea0bbe9de54ea966785ae3535fbeaa9e354983fa29fbb9d808b819ab` |
| 3 | `theorem` | [strict_restriction_holds_by_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/declarations/strict-restriction-holds-by-subsingleton--8d09878a1deaada6e271c7e1.md) | 40 | `result-track:8d09878a1deaada6e271c7e195e9d277b5463ae5aa80dd47c7769a783d64dfea` |
| 4 | `theorem` | [strict_bitmatrix_lookup_sections_glue_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/declarations/strict-bitmatrix-lookup-sections-glue-unique--cef464fe7e089082ecb18c72.md) | 49 | `result-track:cef464fe7e089082ecb18c725e3bd7a96dafbe6a5230c774da7956e745996322` |
| 5 | `structure` | [StrictCompatibleFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/declarations/strictcompatiblefamily--78441a875ce71da4f3001c8b.md) | 80 | `declaration-track:78441a875ce71da4f3001c8b76bdf1d6d2c8674a25006787668d7ec5ffb62ef1` |
| 6 | `def` | [StrictRestrictsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/declarations/strictrestrictsto--fb724e7ed558c84fae5dec4c.md) | 95 | `declaration-track:fb724e7ed558c84fae5dec4c8c2ac1ca713a4d3881e689bf90b9bb8fc1afece5` |
| 7 | `structure` | [StrictSheafAuthoritySurface](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/declarations/strictsheafauthoritysurface--3563b815078bb4ea9a8d0b46.md) | 107 | `declaration-track:3563b815078bb4ea9a8d0b467f33e6df8f6814dc08ea78a0180d8e7b1bfea1c5` |
| 8 | `def` | [defaultStrictSheafAuthoritySurface](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/declarations/defaultstrictsheafauthoritysurface--59dc9f77cc1c81c785ea9451.md) | 114 | `declaration-track:59dc9f77cc1c81c785ea945183843189a53c5daa9879285fb10f7ce4c581fe17` |
| 9 | `theorem` | [strict_lookup_sections_glue_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/declarations/strict-lookup-sections-glue-unique--232b1c32952437d798b7e6f9.md) | 121 | `result-track:232b1c32952437d798b7e6f93e9c5961194039eb3a9e3229bf87f9d1d6d8d468` |
| 10 | `theorem` | [strict_sheaf_surface_is_finite_singleton_surface](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/declarations/strict-sheaf-surface-is-finite-singleton-surface--60c874bd9cc8d6eb2506381c.md) | 138 | `result-track:60c874bd9cc8d6eb2506381c042d90f81dbcd4ddcfa68b1aa017fea6eae70f75` |
| 11 | `theorem` | [strict_sheaf_surface_denies_full_sheafification](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/declarations/strict-sheaf-surface-denies-full-sheafification--da69d202027818e3f8ef204b.md) | 143 | `result-track:da69d202027818e3f8ef204be40c065537581f28cdd3aeeb50a4c4034d350c1d` |
| 12 | `theorem` | [strict_sheaf_surface_denies_full_topos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/declarations/strict-sheaf-surface-denies-full-topos--01af3ab42747e51a0e2f2a60.md) | 148 | `result-track:01af3ab42747e51a0e2f2a6068e1c4308a7ffac53d04a55599277a54802b27be` |
| 13 | `theorem` | [strict_sheaf_surface_denies_lawvere_tierney_topology](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32.lean/declarations/strict-sheaf-surface-denies-lawvere-tierney-topology--8b7d1eb755c651bdd034312f.md) | 152 | `result-track:8b7d1eb755c651bdd034312fbbb5d2c9e72d981b32c231a4eb3c41acf17d06db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
