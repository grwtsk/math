# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.TaggedOccurrenceProjection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7fa9d7f09fa74e3919f2f869bb1111073c37c8a",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7fa9d7f09fa74e3919f2f869bb1111073c37c8a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Count` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Placement](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/placement--ac4b6bc70837730e97500ab4.md) | 17 | `declaration-track:ac4b6bc70837730e97500ab41fac735088db5624c6c23ba6ee119dc2a8725277` |
| 2 | `def` | [place](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/place--fc08c5d28b6c3f3d195870a4.md) | 24 | `declaration-track:fc08c5d28b6c3f3d195870a49eff4b46f185fba3537d05fd3107422a3c770e3c` |
| 3 | `def` | [project](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/project--6b6039ac2d14abd8769d667e.md) | 27 | `declaration-track:6b6039ac2d14abd8769d667ea5f9a40517423fedc46e88b35b01db1eec84e99c` |
| 4 | `theorem` | [place_injective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/place-injective--2570e8a08ebdc6c1d69cc201.md) | 30 | `result-track:2570e8a08ebdc6c1d69cc201a0c36dc0d46496b17fb9bba3826e0952621875a4` |
| 5 | `theorem` | [original_place](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/original-place--a086217b064ea6e6631602f1.md) | 35 | `result-track:a086217b064ea6e6631602f1b1b3028f1785e92f3950907071057683b31330db` |
| 6 | `theorem` | [forget_project](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/forget-project--709e4c96bd53028233a3bf59.md) | 39 | `result-track:709e4c96bd53028233a3bf5986e43b31de9b147be20ccc9992f9ab96a987b8b8` |
| 7 | `theorem` | [project_length](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/project-length--a853d585d8a1a6116671a90f.md) | 43 | `result-track:a853d585d8a1a6116671a90f68da172f6b5d98e792360782b627803d35461e98` |
| 8 | `theorem` | [project_append](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/project-append--b9c122b04cf51888525003bb.md) | 47 | `result-track:b9c122b04cf51888525003bb741ce21e76133645f3afb0051e18f174d2bcb00c` |
| 9 | `theorem` | [project_position](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/project-position--9ebc17d012ba45683c9743fa.md) | 53 | `result-track:9ebc17d012ba45683c9743fa4707d91ac9fbab199bc2a78072077210e7cb734f` |
| 10 | `theorem` | [project_multiplicity](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/project-multiplicity--2b5a8dba14f83967aaba928e.md) | 59 | `result-track:2b5a8dba14f83967aaba928e43c4715be446e0121cc275b22e1c80863d39c28f` |
| 11 | `theorem` | [project_placed_multiplicity](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/project-placed-multiplicity--6cdfb16b79f46a156b4d5796.md) | 65 | `result-track:6cdfb16b79f46a156b4d5796206782dc6c8191241403850903eaf3dab0eb92f1` |
| 12 | `theorem` | [project_coverage](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/project-coverage--fe0eaea61943b86b96e46bf4.md) | 72 | `result-track:fe0eaea61943b86b96e46bf4bf33960dd985bae7cdf3fb1ad1995f43e2df5cb3` |
| 13 | `theorem` | [project_injective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/project-injective--b8cb19f5e6d6d56172ec4eae.md) | 78 | `result-track:b8cb19f5e6d6d56172ec4eae9cfec4e78c17feeb5faff85ac7f3e406a08fcb31` |
| 14 | `def` | [projectPartial](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/projectpartial--6ce63a35599897237a6ebdad.md) | 85 | `declaration-track:6ce63a35599897237a6ebdada1ceb8a4ecc5c3c5757a4c1f48b34dd29363e874` |
| 15 | `theorem` | [projectPartial_total](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/projectpartial-total--b94ca975a1a3a9137c3d87eb.md) | 93 | `result-track:b94ca975a1a3a9137c3d87eb8abb968d40a83e4be9da8e6ad8bc7fb21b9b5e3b` |
| 16 | `theorem` | [projectPartial_isSome](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/projectpartial-issome--648b49bd81ae02da24c33fb2.md) | 101 | `result-track:648b49bd81ae02da24c33fb2c3ce068c10d0d71537392be84106ea76a4800ac3` |
| 17 | `theorem` | [projectPartial_missing](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/projectpartial-missing--1a65e426908043b54674a622.md) | 112 | `result-track:1a65e426908043b54674a622cb796816175624e319a0324ecc531a65e023b884` |
| 18 | `theorem` | [forget_projectPartial](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/forget-projectpartial--85c86b4ebe52a5ce9596626c.md) | 126 | `result-track:85c86b4ebe52a5ce9596626c2ca05ffdbeffe3b23f99b30a4b7df0becd74ee9a` |
| 19 | `theorem` | [projectPartial_multiplicity](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/projectpartial-multiplicity--c5147df45916c9850693fd2f.md) | 144 | `result-track:c5147df45916c9850693fd2ff09ea2ca7b0ace3b13487f00b902e4def8bc5554` |
| 20 | `def` | [inventoryGuard](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/inventoryguard--4247012e1ef78661431933b4.md) | 152 | `declaration-track:4247012e1ef78661431933b432c352bc4d0af181fe6eb7d5a37f58cf6727599b` |
| 21 | `theorem` | [inventoryGuard_spec](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/inventoryguard-spec--1810776aed6eb0e25489ea37.md) | 157 | `result-track:1810776aed6eb0e25489ea370919837b9a77e0fc4fe520042f257ac5b43b2059` |
| 22 | `theorem` | [inventoryGuard_actual](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/inventoryguard-actual--6296c16389196fa55f3b90bb.md) | 166 | `result-track:6296c16389196fa55f3b90bb365bc07dfcdce9d555014a59c0ac47036b14dace` |
| 23 | `theorem` | [inventoryGuard_rejects_invalid_actual](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/inventoryguard-rejects-invalid-actual--05ae094f2c1a3065cca7ba5d.md) | 172 | `result-track:05ae094f2c1a3065cca7ba5ddd88cdda54ea560fe40a48b249ea593bf53c22d8` |
| 24 | `theorem` | [registered_only_guard_is_insufficient](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/registered-only-guard-is-insufficient--8fcfbe3fe8665fd1c93180ba.md) | 183 | `result-track:8fcfbe3fe8665fd1c93180bafc9a947154168a2c4be83dcfc3a6d35d62fe94cd` |
| 25 | `inductive` | [SourceRole](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/sourcerole--d4664e85ad304019429873b5.md) | 188 | `declaration-track:d4664e85ad304019429873b50f2e66bba4e3bfccb2c73ccc26db8adf9dc1928b` |
| 26 | `def` | [roleGuard](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/roleguard--e904481fa6ccce9501454508.md) | 197 | `declaration-track:e904481fa6ccce9501454508bb1a9ed85dd1af9deade26fde2477f1ee67e4a67` |
| 27 | `theorem` | [roleGuard_spec](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/roleguard-spec--f68b612a6cddf742cc1d0af1.md) | 201 | `result-track:f68b612a6cddf742cc1d0af129a74a5f8296675169eb13098b42d40d63c388e0` |
| 28 | `theorem` | [roleGuard_original](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/roleguard-original--4ffe1cec6fb00a177a092316.md) | 207 | `result-track:4ffe1cec6fb00a177a0923165c4f93d6e7cff806950d9c2a65160380a89cf86a` |
| 29 | `theorem` | [roleGuard_rejects_original_mismatch](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/roleguard-rejects-original-mismatch--8613a348579354c4c605693f.md) | 212 | `result-track:8613a348579354c4c605693f3676c68101a3af0287f9e0fb24d4bbc2475f7b26` |
| 30 | `theorem` | [destination_role_alone_is_insufficient](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/destination-role-alone-is-insufficient--49f034417150245b922074ff.md) | 218 | `result-track:49f034417150245b922074ff2dc32592858d05d8e8e10b4186950b82f2af5bb3` |
| 31 | `structure` | [Folder](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/folder--0f1fb30062a02e6e77f8d812.md) | 225 | `declaration-track:0f1fb30062a02e6e77f8d8122ffa117cf0bef4e531de0a2feeb61f800d00a9d5` |
| 32 | `def` | [planGitkeep](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/plangitkeep--16d8d41758b7b4a2a6045e0f.md) | 230 | `declaration-track:16d8d41758b7b4a2a6045e0f82f9e5488edcebd6cda95540039067cfcf49c9b5` |
| 33 | `theorem` | [planGitkeep_iff](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/plangitkeep-iff--387ccc77fc2da8116f4f8eac.md) | 232 | `result-track:387ccc77fc2da8116f4f8eac6f57998c6e93d5a6d5ab96e3e58ddb79591495c9` |
| 34 | `theorem` | [empty_direct_folder_requires_gitkeep](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/empty-direct-folder-requires-gitkeep--d12683bc0cc33d0a23295eb3.md) | 236 | `result-track:d12683bc0cc33d0a23295eb3cd35df7c68c4bb4be91d6811811478b412b97681` |
| 35 | `theorem` | [child_directories_do_not_change_gitkeep](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/child-directories-do-not-change-gitkeep--046d1740c6fa3c8cd79f2bbf.md) | 239 | `result-track:046d1740c6fa3c8cd79f2bbfbf0e07160ee94bdbb1bc190e918914a3ac7836ea` |
| 36 | `theorem` | [interior_folder_placeholder_example](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/interior-folder-placeholder-example--fdb4f7e16f753c63c47fa93b.md) | 243 | `result-track:fdb4f7e16f753c63c47fa93b44bb5db5378177b65284d252f19d752e2fa162c3` |
| 37 | `def` | [validGitkeep](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/validgitkeep--0a00fd56c6d3ae4308b70ef6.md) | 247 | `declaration-track:0a00fd56c6d3ae4308b70ef6512c2e6d7172cd6e07f3daaa1e550e467db2d0db` |
| 38 | `theorem` | [validGitkeep_presence_iff](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/validgitkeep-presence-iff--951045a03f9c863d8212a6b4.md) | 250 | `result-track:951045a03f9c863d8212a6b435c6c1255b43076b9e9d8392cf6069702a320647` |
| 39 | `theorem` | [validGitkeep_empty_bytes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean/declarations/validgitkeep-empty-bytes--9a738781e2abecd5f97d1b15.md) | 256 | `result-track:9a738781e2abecd5f97d1b153108ed7ca3f6cfede919895598bc73620c0b1d98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
