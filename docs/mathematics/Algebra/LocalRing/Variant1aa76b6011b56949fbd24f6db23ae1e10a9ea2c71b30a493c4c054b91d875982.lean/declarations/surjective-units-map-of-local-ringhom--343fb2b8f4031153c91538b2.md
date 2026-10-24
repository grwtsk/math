# surjective_units_map_of_local_ringHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edc761e544ff194a9598b8528f634f2dcea429bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7404cde8-9c7d-4e75-bcb6-7aba4d901c78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6138b4c3-ca6d-bf2a-c43e-88f7b10c6a82",
  "kind": "theorem",
  "lexical_name": "surjective_units_map_of_local_ringHom",
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
  "slug": "surjective-units-map-of-local-ringhom--343fb2b8f4031153c91538b2",
  "source": {
    "blob": "edc761e544ff194a9598b8528f634f2dcea429bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 334,
    "path": "GRWTSK/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:343fb2b8f4031153c91538b2f168e1ec4e8fff1dfe8f455c32f8e8d6497e1d0d",
  "verification": {
    "reference": "docs/verification/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6138b4c3-ca6d-bf2a-c43e-88f7b10c6a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_units_map_of_local_ringHom [CommRing R] [CommRing S] (f : R →+* S)
    (hf : Function.Surjective f) (h : IsLocalRingHom f) :
    Function.Surjective (Units.map <| f.toMonoidHom) := by
  intro a
  obtain ⟨b, hb⟩ := hf (a : S)
  use (isUnit_of_map_unit f b (by rw [hb]; exact Units.isUnit _)).unit
  ext
  exact hb
#align local_ring.surjective_units_map_of_local_ring_hom LocalRing.surjective_units_map_of_local_ringHom

section

variable (R) [CommRing R] [LocalRing R] [CommRing S] [LocalRing S] [CommRing T] [LocalRing T]

/-- The residue field of a local ring is the quotient of the ring by its maximal ideal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc761e544ff194a9598b8528f634f2dcea429bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
