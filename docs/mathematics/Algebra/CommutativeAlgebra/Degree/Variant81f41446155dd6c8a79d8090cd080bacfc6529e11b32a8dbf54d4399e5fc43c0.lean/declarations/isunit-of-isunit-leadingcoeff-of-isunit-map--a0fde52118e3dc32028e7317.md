# isUnit_of_isUnit_leadingCoeff_of_isUnit_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99d810e78b13bda310ed88b71413dfc940aab64b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81f41446155dd6c8a79d8090cd080bacfc6529e11b32a8dbf54d4399e5fc43c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73ca3fa4-cf3f-d129-50f1-44039d409b19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c598810-6fd5-18c0-1c00-baf2dc126be4",
  "kind": "lemma",
  "lexical_name": "isUnit_of_isUnit_leadingCoeff_of_isUnit_map",
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
  "slug": "isunit-of-isunit-leadingcoeff-of-isunit-map--a0fde52118e3dc32028e7317",
  "source": {
    "blob": "99d810e78b13bda310ed88b71413dfc940aab64b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 235,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant81f41446155dd6c8a79d8090cd080bacfc6529e11b32a8dbf54d4399e5fc43c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0fde52118e3dc32028e73174712fa1e30467b138ea5202727bd6dccefe80980",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Degree/Variant81f41446155dd6c8a79d8090cd080bacfc6529e11b32a8dbf54d4399e5fc43c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c598810-6fd5-18c0-1c00-baf2dc126be4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUnit_of_isUnit_leadingCoeff_of_isUnit_map (hf : IsUnit f.leadingCoeff)
    (H : IsUnit (map φ f)) : IsUnit f := by
  have dz := degree_eq_zero_of_isUnit H
  rw [degree_map_eq_of_leadingCoeff_ne_zero] at dz
  · rw [eq_C_of_degree_eq_zero dz]
    refine IsUnit.map C ?_
    convert! hf
    change coeff f 0 = coeff f (natDegree f)
    rw [(degree_eq_iff_natDegree_eq _).1 dz]
    · rfl
    rintro rfl
    simp at H
  · intro h
    have u : IsUnit (φ f.leadingCoeff) := IsUnit.map φ hf
    rw [h] at u
    simp at u

end

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degree/Variant81f41446155dd6c8a79d8090cd080bacfc6529e11b32a8dbf54d4399e5fc43c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant81f41446155dd6c8a79d8090cd080bacfc6529e11b32a8dbf54d4399e5fc43c0.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d810e78b13bda310ed88b71413dfc940aab64b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
