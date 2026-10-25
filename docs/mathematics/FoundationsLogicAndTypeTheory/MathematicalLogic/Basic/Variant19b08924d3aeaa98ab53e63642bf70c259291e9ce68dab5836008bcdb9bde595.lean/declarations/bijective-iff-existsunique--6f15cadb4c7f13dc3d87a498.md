# bijective_iff_existsUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20e7575024a71bfc4ea4dda2317f5160f412262a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/19b08924d3aeaa98ab53e63642bf70c259291e9ce68dab5836008bcdb9bde595.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c2e97a6-19f5-5eef-b7bb-8e5588ace0b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9660e1d8-48fb-3dae-9ddf-ca3c9522c032",
  "kind": "theorem",
  "lexical_name": "bijective_iff_existsUnique",
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
  "slug": "bijective-iff-existsunique--6f15cadb4c7f13dc3d87a498",
  "source": {
    "blob": "20e7575024a71bfc4ea4dda2317f5160f412262a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 243,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant19b08924d3aeaa98ab53e63642bf70c259291e9ce68dab5836008bcdb9bde595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f15cadb4c7f13dc3d87a4982a09eac9054fa54e58bd4100cb9f1ce218834800",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant19b08924d3aeaa98ab53e63642bf70c259291e9ce68dab5836008bcdb9bde595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9660e1d8-48fb-3dae-9ddf-ca3c9522c032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bijective_iff_existsUnique (f : α → β) : Bijective f ↔ ∀ b : β, ∃! a : α, f a = b :=
  ⟨fun hf b ↦
      let ⟨a, ha⟩ := hf.surjective b
      ⟨a, ha, fun _ ha' ↦ hf.injective (ha'.trans ha.symm)⟩,
    fun he ↦ ⟨fun {_a a'} h ↦ (he (f a')).unique h rfl, fun b ↦ (he b).exists⟩⟩
#align function.bijective_iff_exists_unique Function.bijective_iff_existsUnique

/-- Shorthand for using projection notation with `Function.bijective_iff_existsUnique`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant19b08924d3aeaa98ab53e63642bf70c259291e9ce68dab5836008bcdb9bde595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant19b08924d3aeaa98ab53e63642bf70c259291e9ce68dab5836008bcdb9bde595.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20e7575024a71bfc4ea4dda2317f5160f412262a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
