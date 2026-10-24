# map_center_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41e51b8952dfc090e39449a7e2b3fabe58b46477",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:988f6c0a-d1dc-2c72-99f9-adbdf0ed6b07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cea30fcd-6297-3e1a-2ef4-b8dc94866721",
  "kind": "lemma",
  "lexical_name": "map_center_le",
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
  "slug": "map-center-le--959b6a32a09049b2a96fb464",
  "source": {
    "blob": "41e51b8952dfc090e39449a7e2b3fabe58b46477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:959b6a32a09049b2a96fb4643bd2816c2defb3340f9a47bec5fe9408a3ab198f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cea30fcd-6297-3e1a-2ef4-b8dc94866721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_center_le {S : Type*} [CommRing S] (f : R →+* S) :
    Subgroup.center (GL n R) ≤ (Subgroup.center (GL n S)).comap (map f) := fun u hu ↦ by
  simp only [GeneralLinearGroup.center_eq_range_scalar, MonoidHom.mem_range,
    Subgroup.mem_comap] at hu ⊢
  obtain ⟨r, rfl⟩ := hu
  exact ⟨(Units.map f) r, GeneralLinearGroup.map_scalar _ _ |>.symm⟩

end Center

end GeneralLinearGroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41e51b8952dfc090e39449a7e2b3fabe58b46477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
