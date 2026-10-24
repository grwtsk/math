# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Restriction.Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d424ee7c8a126a9267b33aa894858c24548ad2d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d424ee7c8a126a9267b33aa894858c24548ad2d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Update` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/restrictle--751c20e9c1b5ada40e2fde3f.md) | 43 | `declaration-track:751c20e9c1b5ada40e2fde3f125f03df41491d94be5bac0535cf3fcd8a71cdf5` |
| 2 | `lemma` | [restrictLe_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/restrictle-apply--cb44ab3d99f7c238985a1a0a.md) | 46 | `result-track:cb44ab3d99f7c238985a1a0af0f7a70d443d23dfb532e3a293f8586fee8107ef` |
| 3 | `def` | [restrictLe₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/restrictle--b59eab890a1c6b88c1cbe482.md) | 50 | `declaration-track:b59eab890a1c6b88c1cbe482c84bc68275fb9d308b369951095fe6fee0fb8680` |
| 4 | `lemma` | [restrictLe₂_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/restrictle-apply--4d47aa4147cb0ff1b506d769.md) | 53 | `result-track:4d47aa4147cb0ff1b506d769bbc4e90a8b36e3c94dbc9d09b52f3906b1eb7d05` |
| 5 | `theorem` | [restrictLe₂_comp_restrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/restrictle-comp-restrictle--9210493af09e3546dec6f9e9.md) | 56 | `result-track:9210493af09e3546dec6f9e91554a1145ccad47a50725a93d39066dc7f0ca5c8` |
| 6 | `theorem` | [restrictLe₂_comp_restrictLe₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/restrictle-comp-restrictle--d8fc58dee5f31e9bbaf0b9c2.md) | 59 | `result-track:d8fc58dee5f31e9bbaf0b9c2cd89a8a9d3ee16c73fb2c5000ccdadc55cee31f9` |
| 7 | `lemma` | [dependsOn_restrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/dependson-restrictle--3fdb825167d8334478334225.md) | 62 | `result-track:3fdb825167d8334478334225b14d0c6fcec6fe61bb1019ebd432cb82840b852d` |
| 8 | `def` | [frestrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/frestrictle--d42d69e4801b0ae525a7505c.md) | 74 | `declaration-track:d42d69e4801b0ae525a7505ce9d870de2da6f31ac12e925c46c2b53256116c4c` |
| 9 | `lemma` | [frestrictLe_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/frestrictle-apply--5a6b48a4692da2e471b41a7a.md) | 77 | `result-track:5a6b48a4692da2e471b41a7aa1570b8a42eb85f1cf0bc1ad16aed4de5c141c11` |
| 10 | `def` | [frestrictLe₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/frestrictle--9803198ee9fc9e0c60f7c453.md) | 81 | `declaration-track:9803198ee9fc9e0c60f7c453ed0303fd3f15c4219921fab0e202d8adb1499023` |
| 11 | `lemma` | [frestrictLe₂_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/frestrictle-apply--4966c1087df6012c782c5513.md) | 84 | `result-track:4966c1087df6012c782c55132bcb3faaee7150a076f72240c1e027fbda3eba7b` |
| 12 | `theorem` | [frestrictLe₂_comp_frestrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/frestrictle-comp-frestrictle--dfe1ffe6d8147b7d6f65b062.md) | 87 | `result-track:dfe1ffe6d8147b7d6f65b06241ecf341a20666d261ab3e3d44aaeae1df64d84f` |
| 13 | `theorem` | [frestrictLe₂_comp_frestrictLe₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/frestrictle-comp-frestrictle--922849257c2f587234a5a57c.md) | 90 | `result-track:922849257c2f587234a5a57c99f74cb9696622d6be84a203f189755d994cda12` |
| 14 | `theorem` | [piCongrLeft_comp_restrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/picongrleft-comp-restrictle--58460121b081ef9b8d6b8ce5.md) | 93 | `result-track:58460121b081ef9b8d6b8ce5e96d64ef34e005f62c181653f4b989ec7e5ae02c` |
| 15 | `theorem` | [piCongrLeft_comp_frestrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/picongrleft-comp-frestrictle--ce43e9d28202abe7531318d1.md) | 97 | `result-track:ce43e9d28202abe7531318d1dab1c507961ffd5d36ccf290341d44dc82c977c7` |
| 16 | `lemma` | [frestrictLe_updateFinset_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/frestrictle-updatefinset-of-le--94aecee590592846bf42979b.md) | 107 | `result-track:94aecee590592846bf42979bab25f8de5e0f8a0ce6034def1034c7b5de6c3bd2` |
| 17 | `lemma` | [frestrictLe_updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/frestrictle-updatefinset--ef6f6593bb248b69c5a836bd.md) | 111 | `result-track:ef6f6593bb248b69c5a836bdf5da1aecb9997d101a2b68b53855ae7a6686b9c0` |
| 18 | `lemma` | [updateFinset_frestrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/updatefinset-frestrictle--70248d48c75087923d9a0c34.md) | 115 | `result-track:70248d48c75087923d9a0c343dcdd9e315d6c6a5957f0e0c2563173ad879dab5` |
| 19 | `lemma` | [dependsOn_frestrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3.lean/declarations/dependson-frestrictle--5aa77dff60b8c7b13aa89475.md) | 120 | `result-track:5aa77dff60b8c7b13aa8947586ff2242d54c1ae8e51a143fc0d78b71f3a47f8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
