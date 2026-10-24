# Surjective.sigmaDesc_of_union_range_eq_univ

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
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5a17ceccfce48493d9ff57551fe1ce15c0fc349306f33f6930ec718cd587116.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a1ff57a-5496-510d-13d3-464e087af475",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b181c70-3d85-52cb-c281-953a9b5d8e28",
  "kind": "lemma",
  "lexical_name": "Surjective.sigmaDesc_of_union_range_eq_univ",
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
  "slug": "surjective-sigmadesc-of-union-range-eq-univ--091fae7989d8c960eee211b8",
  "source": {
    "blob": "a342e3c6e8d2060420121f7c881360e7a7306423",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 116,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variantf5a17ceccfce48493d9ff57551fe1ce15c0fc349306f33f6930ec718cd587116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:091fae7989d8c960eee211b85c29cf7fcb3a522eea3a96bb4dd2c836fd8b9c44",
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

Occurrence: `result:9b181c70-3d85-52cb-c281-953a9b5d8e28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Surjective.sigmaDesc_of_union_range_eq_univ {X : Scheme.{u}}
    {ι : Type v} [Small.{u} ι] {Y : ι → Scheme.{u}} {f : ∀ i, Y i ⟶ X}
    (H : ⋃ i, Set.range (f i) = Set.univ) : Surjective (Limits.Sigma.desc f) := by
  refine ⟨fun x ↦ ?_⟩
  simp_rw [Set.eq_univ_iff_forall, Set.mem_iUnion] at H
  obtain ⟨i, x, rfl⟩ := H x
  use Limits.Sigma.ι Y i x
  rw [← Scheme.Hom.comp_apply, Limits.Sigma.ι_comp_desc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UnderlyingMap/Variantf5a17ceccfce48493d9ff57551fe1ce15c0fc349306f33f6930ec718cd587116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variantf5a17ceccfce48493d9ff57551fe1ce15c0fc349306f33f6930ec718cd587116.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a342e3c6e8d2060420121f7c881360e7a7306423` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
