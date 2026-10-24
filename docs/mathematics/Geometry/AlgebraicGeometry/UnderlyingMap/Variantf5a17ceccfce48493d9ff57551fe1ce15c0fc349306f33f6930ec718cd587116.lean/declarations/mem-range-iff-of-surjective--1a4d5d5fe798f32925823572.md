# mem_range_iff_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a342e3c6e8d2060420121f7c881360e7a7306423",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5a17ceccfce48493d9ff57551fe1ce15c0fc349306f33f6930ec718cd587116.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c9d3849-1b4c-9fe0-fdf4-2619ff7f7c2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9563eab7-e21c-0ad4-e80a-a5e2f2c55c7f",
  "kind": "lemma",
  "lexical_name": "mem_range_iff_of_surjective",
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
  "slug": "mem-range-iff-of-surjective--1a4d5d5fe798f32925823572",
  "source": {
    "blob": "a342e3c6e8d2060420121f7c881360e7a7306423",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 112,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variantf5a17ceccfce48493d9ff57551fe1ce15c0fc349306f33f6930ec718cd587116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a4d5d5fe798f3292582357207e488823dad2b2e08e8e2f99126fa6845f35379",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UnderlyingMap/Variantf5a17ceccfce48493d9ff57551fe1ce15c0fc349306f33f6930ec718cd587116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9563eab7-e21c-0ad4-e80a-a5e2f2c55c7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_range_iff_of_surjective {S : Scheme.{u}} (f : X ⟶ S) (g : Y ⟶ S) (e : X ⟶ Y)
    [Surjective e] (hge : e ≫ g = f) (s : S) : s ∈ Set.range f ↔ s ∈ Set.range g := by
  rw [range_eq_range_of_surjective f g e hge]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UnderlyingMap/Variantf5a17ceccfce48493d9ff57551fe1ce15c0fc349306f33f6930ec718cd587116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variantf5a17ceccfce48493d9ff57551fe1ce15c0fc349306f33f6930ec718cd587116.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a342e3c6e8d2060420121f7c881360e7a7306423` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
