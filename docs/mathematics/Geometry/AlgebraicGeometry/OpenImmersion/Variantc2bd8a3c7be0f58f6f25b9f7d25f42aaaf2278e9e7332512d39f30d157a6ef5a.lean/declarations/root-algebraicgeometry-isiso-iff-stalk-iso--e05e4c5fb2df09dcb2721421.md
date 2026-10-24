# _root_.AlgebraicGeometry.isIso_iff_stalk_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e09b364f460e7c6653fce88e8bc03ab813f618f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 410,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2bd8a3c7be0f58f6f25b9f7d25f42aaaf2278e9e7332512d39f30d157a6ef5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8a70e44-b97a-443d-6345-e369baaeef82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9926de3-91e9-15e8-93ae-1235cf0e6fd0",
  "kind": "theorem",
  "lexical_name": "_root_.AlgebraicGeometry.isIso_iff_stalk_iso",
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
  "slug": "root-algebraicgeometry-isiso-iff-stalk-iso--e05e4c5fb2df09dcb2721421",
  "source": {
    "blob": "e09b364f460e7c6653fce88e8bc03ab813f618f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 410,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantc2bd8a3c7be0f58f6f25b9f7d25f42aaaf2278e9e7332512d39f30d157a6ef5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e05e4c5fb2df09dcb272142117efef81978ab456fa3b4cf8305fa6144a3e46cb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variantc2bd8a3c7be0f58f6f25b9f7d25f42aaaf2278e9e7332512d39f30d157a6ef5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9926de3-91e9-15e8-93ae-1235cf0e6fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.AlgebraicGeometry.isIso_iff_stalk_iso {X Y : Scheme.{u}} (f : X ⟶ Y) :
    IsIso f ↔ IsIso f.base ∧ ∀ x, IsIso (f.stalkMap x) := by
  rw [isIso_iff_isOpenImmersion, IsOpenImmersion.iff_stalk_iso, and_comm, ← and_assoc]
  refine and_congr ⟨?_, ?_⟩ Iff.rfl
  · rintro ⟨h₁, h₂⟩
    convert_to
      IsIso
        (TopCat.isoOfHomeo
          (Equiv.toHomeomorphOfContinuousOpen
            (.ofBijective _ ⟨h₂.injective, (TopCat.epi_iff_surjective _).mp h₁⟩) h₂.continuous
            h₂.isOpenMap)).hom
    infer_instance
  · intro H; exact ⟨inferInstance, (TopCat.homeoOfIso (asIso f.base)).isOpenEmbedding⟩

/-- An open immersion induces an isomorphism from the domain onto the image -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variantc2bd8a3c7be0f58f6f25b9f7d25f42aaaf2278e9e7332512d39f30d157a6ef5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantc2bd8a3c7be0f58f6f25b9f7d25f42aaaf2278e9e7332512d39f30d157a6ef5a.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09b364f460e7c6653fce88e8bc03ab813f618f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
