# Spec.locallyRingedSpaceObj_presheaf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbc1a71d05448912e16895aa2debc5c7eacc28d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4aefd66e-44d9-50d3-47ec-e3fa87f5d123",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d8ae196-f7c1-e922-3933-1b9891a0bfeb",
  "kind": "lemma",
  "lexical_name": "Spec.locallyRingedSpaceObj_presheaf'",
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
  "slug": "spec-locallyringedspaceobj-presheaf--4edab0fa25e7d31f3ef66023",
  "source": {
    "blob": "dbc1a71d05448912e16895aa2debc5c7eacc28d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 191,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4edab0fa25e7d31f3ef660236b21fc74563767620ddcfe59f507fc5592ec17f6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d8ae196-f7c1-e922-3933-1b9891a0bfeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Spec.locallyRingedSpaceObj_presheaf' (R : Type u) [CommRing R] :
    (Spec.locallyRingedSpaceObj <| CommRingCat.of R).presheaf = (structureSheaf R).1 := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbc1a71d05448912e16895aa2debc5c7eacc28d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
