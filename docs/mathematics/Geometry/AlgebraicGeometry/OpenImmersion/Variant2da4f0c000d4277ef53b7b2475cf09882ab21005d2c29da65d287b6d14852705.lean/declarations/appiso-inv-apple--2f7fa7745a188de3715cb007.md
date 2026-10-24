# appIso_inv_appLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b5a95cde2e52256787a5d77014cc6bb79cfb9d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 282,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4e4ab48-8c5b-8119-61d0-caa8844632c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff4394a4-da51-76c9-9c58-a32315d4a109",
  "kind": "lemma",
  "lexical_name": "appIso_inv_appLE",
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
  "slug": "appiso-inv-apple--2f7fa7745a188de3715cb007",
  "source": {
    "blob": "3b5a95cde2e52256787a5d77014cc6bb79cfb9d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 282,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f7fa7745a188de3715cb007794209fb80cd9ca8bf611b136e8a141f165c5e66",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff4394a4-da51-76c9-9c58-a32315d4a109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma appIso_inv_appLE {X Y : Scheme.{u}} (f : X ⟶ Y) [IsOpenImmersion f] {U V : X.Opens}
    (e : V ≤ f ⁻¹ᵁ f ''ᵁ U) :
    (f.appIso U).inv ≫ f.appLE (f ''ᵁ U) V e =
        X.presheaf.map (homOfLE (by rwa [preimage_image_eq] at e)).op := by
  simp only [appLE, appIso_inv_app_assoc, eqToHom_op]
  rw [← Functor.map_comp]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b5a95cde2e52256787a5d77014cc6bb79cfb9d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
