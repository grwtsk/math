# comp_coe_cocyle₁'_v_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa6ffedbb0156fe28dee22715e21ddc3d251db05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b58ada639385a4c5ce7ad44da3db2998248da282c4621e9bf72bcc522068801.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a26bde34-fa8b-fc9b-b29f-0da5812fe550",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:379c2815-ed67-cdb3-4ddc-c1e896ef2bdd",
  "kind": "lemma",
  "lexical_name": "comp_coe_cocyle₁'_v_eq_zero",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "comp-coe-cocyle-v-eq-zero--32181e855244790a1f9c1f3d",
  "source": {
    "blob": "aa6ffedbb0156fe28dee22715e21ddc3d251db05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Lifting/Variant1b58ada639385a4c5ce7ad44da3db2998248da282c4621e9bf72bcc522068801.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32181e855244790a1f9c1f3daad7e09d52767f0c5966d3590557d37ac66facc7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Lifting/Variant1b58ada639385a4c5ce7ad44da3db2998248da282c4621e9bf72bcc522068801.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:379c2815-ed67-cdb3-4ddc-c1e896ef2bdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_coe_cocyle₁'_v_eq_zero (n m : ℤ) (hnm : n + 1 = m := by lia) :
    i.f n ≫ (cocycle₁' sq hsq).1.v n m hnm = 0 := by
  have fac_left (k : ℤ) := (hsq k).fac_left
  dsimp at fac_left
  simp [cocycle₁', fac_left, reassoc_of% fac_left]

set_option backward.defeqAttrib.useBackward true in
include hQ hK in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Lifting/Variant1b58ada639385a4c5ce7ad44da3db2998248da282c4621e9bf72bcc522068801.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Lifting/Variant1b58ada639385a4c5ce7ad44da3db2998248da282c4621e9bf72bcc522068801.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa6ffedbb0156fe28dee22715e21ddc3d251db05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
