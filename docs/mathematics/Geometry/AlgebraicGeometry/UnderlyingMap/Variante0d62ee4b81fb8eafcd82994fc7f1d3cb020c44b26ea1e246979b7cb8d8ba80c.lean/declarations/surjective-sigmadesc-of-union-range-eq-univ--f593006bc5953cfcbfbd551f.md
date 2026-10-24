# Surjective.sigmaDesc_of_union_range_eq_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb886eac347fe9dead8310466655bd99c9814988",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0d62ee4b81fb8eafcd82994fc7f1d3cb020c44b26ea1e246979b7cb8d8ba80c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:212a246a-13df-1e01-dc7e-93d1db87e716",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a37a45c-8a55-975f-d8dc-840116204efe",
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
  "slug": "surjective-sigmadesc-of-union-range-eq-univ--f593006bc5953cfcbfbd551f",
  "source": {
    "blob": "cb886eac347fe9dead8310466655bd99c9814988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 100,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variante0d62ee4b81fb8eafcd82994fc7f1d3cb020c44b26ea1e246979b7cb8d8ba80c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f593006bc5953cfcbfbd551fc3bb82d72511c72a1856a7a8eac20d41374f6871",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UnderlyingMap/Variante0d62ee4b81fb8eafcd82994fc7f1d3cb020c44b26ea1e246979b7cb8d8ba80c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a37a45c-8a55-975f-d8dc-840116204efe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Surjective.sigmaDesc_of_union_range_eq_univ {X : Scheme.{u}}
    {ι : Type v} [Small.{u} ι] {Y : ι → Scheme.{u}} {f : ∀ i, Y i ⟶ X}
    (H : ⋃ i, Set.range (f i).base = Set.univ) : Surjective (Limits.Sigma.desc f) := by
  refine ⟨fun x ↦ ?_⟩
  simp_rw [Set.eq_univ_iff_forall, Set.mem_iUnion] at H
  obtain ⟨i, x, rfl⟩ := H x
  use (Limits.Sigma.ι (fun i ↦ Y i) i).base x
  rw [← Scheme.comp_base_apply, Limits.Sigma.ι_desc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UnderlyingMap/Variante0d62ee4b81fb8eafcd82994fc7f1d3cb020c44b26ea1e246979b7cb8d8ba80c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variante0d62ee4b81fb8eafcd82994fc7f1d3cb020c44b26ea1e246979b7cb8d8ba80c.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb886eac347fe9dead8310466655bd99c9814988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
