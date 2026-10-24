# compactSpace_iff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "204fbbc4c45b97912d69fc5fe5ceaa0b3b166663",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9fe2fa80-b90a-039d-cd5a-e3eaeaaec003",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff5c7be3-0e45-34b1-ecc5-51cae60641ad",
  "kind": "lemma",
  "lexical_name": "compactSpace_iff_exists",
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
  "slug": "compactspace-iff-exists--5b58d1b0af643b59f46d8316",
  "source": {
    "blob": "204fbbc4c45b97912d69fc5fe5ceaa0b3b166663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 183,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b58d1b0af643b59f46d83160cbf3694f7148140b2fc543f6238be173f98b27b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff5c7be3-0e45-34b1-ecc5-51cae60641ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compactSpace_iff_exists :
    CompactSpace X ↔ ∃ R, ∃ f : Spec R ⟶ X, Function.Surjective f.base := by
  refine ⟨fun h ↦ ?_, fun ⟨R, f, hf⟩ ↦ ⟨hf.range_eq ▸ isCompact_range f.continuous⟩⟩
  let 𝒰 : X.OpenCover := X.affineCover.finiteSubcover
  have (x : 𝒰.J) : IsAffine (𝒰.obj x) := X.isAffine_affineCover _
  refine ⟨Γ(∐ 𝒰.obj, ⊤), (∐ 𝒰.obj).isoSpec.inv ≫ Sigma.desc 𝒰.map, ?_⟩
  refine Function.Surjective.comp (g := (Sigma.desc 𝒰.map).base)
    (fun x ↦ ?_) (∐ 𝒰.obj).isoSpec.inv.surjective
  obtain ⟨y, hy⟩ := 𝒰.covers x
  exact ⟨(Sigma.ι 𝒰.obj (𝒰.f x)).base y, by rw [← Scheme.comp_base_apply, Sigma.ι_desc, hy]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `204fbbc4c45b97912d69fc5fe5ceaa0b3b166663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
