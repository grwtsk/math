# isomorphisms_eq_stalkwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85cbeba7116078d4311bf5449c841f179664b029",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:916b82e1-cd37-36db-60ec-d7fadbbb56c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75d4d621-7123-d83c-026f-4abfd6d7f601",
  "kind": "lemma",
  "lexical_name": "isomorphisms_eq_stalkwise",
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
  "slug": "isomorphisms-eq-stalkwise--091d02079a339bd3c77caebc",
  "source": {
    "blob": "85cbeba7116078d4311bf5449c841f179664b029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 24,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:091d02079a339bd3c77caebc273003344b716f292577e8957ee04a92ae34f389",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75d4d621-7123-d83c-026f-4abfd6d7f601`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isomorphisms_eq_stalkwise :
    isomorphisms Scheme = (isomorphisms TopCat).inverseImage Scheme.forgetToTop ⊓
      stalkwise (fun f ↦ Function.Bijective f) := by
  rw [isomorphisms_eq_isOpenImmersion_inf_surjective, isOpenImmersion_eq_inf,
    surjective_eq_topologically, inf_right_comm]
  congr 1
  ext X Y f
  exact ⟨fun H ↦ inferInstanceAs (IsIso (TopCat.isoOfHomeo
    (H.1.1.toHomeomorphOfSurjective H.2)).hom), fun (_ : IsIso f.base) ↦
    let e := (TopCat.homeoOfIso <| asIso f.base); ⟨e.isOpenEmbedding, e.surjective⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85cbeba7116078d4311bf5449c841f179664b029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
