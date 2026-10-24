# ofDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54bf3f8e1f0ad715486e929568c0bd45cce9e6c991b8966af1b4bd5fe43636c4",
  "kind": "abbrev",
  "lexical_name": "ofDiagram",
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
  "slug": "ofdiagram--0e3ab00ee0113bc7dad4a4b3",
  "source": {
    "blob": "bb45f6ecc49bf1d486323f46efba5703db57054b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 114,
    "path": "GRWTSK/Algebra/LocalCohomology/Variant2bca8374b8a96c11358cf924dcf0e7e2422497a9de64c5b93209a6a0473d4288.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e3ab00ee0113bc7dad4a4b3ba6076efb897f0e33f0dcf85cf03adf6d97b4c56",
  "verification": {
    "reference": "docs/verification/Algebra/LocalCohomology/Variant2bca8374b8a96c11358cf924dcf0e7e2422497a9de64c5b93209a6a0473d4288.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54bf3f8e1f0ad715486e929568c0bd45cce9e6c991b8966af1b4bd5fe43636c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ofDiagram (I : D ⥤ Ideal R) (i : ℕ) [HasColimit (diagram I i)] :
    ModuleCat.{u} R ⥤ ModuleCat.{u} R :=
  colimit (diagram I i)

end

section

variable {R : Type u} [CommRing R] {D : Type u₁} [Category.{v₁} D]
variable {E : Type u₂} [Category.{v₂} E] (I' : E ⥤ D) (I : D ⥤ Ideal R)

/-- Local cohomology along a composition of diagrams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalCohomology/Variant2bca8374b8a96c11358cf924dcf0e7e2422497a9de64c5b93209a6a0473d4288.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalCohomology/Variant2bca8374b8a96c11358cf924dcf0e7e2422497a9de64c5b93209a6a0473d4288.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb45f6ecc49bf1d486323f46efba5703db57054b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
