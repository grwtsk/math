# selfLERadicalDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f31788b727c054e38f618bfb14f5c81fbb5041eaf1a6c4b7139d924ed972bb8e",
  "kind": "def",
  "lexical_name": "selfLERadicalDiagram",
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
  "slug": "selfleradicaldiagram--a094c2b8cd6fa4b05d9fbb63",
  "source": {
    "blob": "bb45f6ecc49bf1d486323f46efba5703db57054b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 162,
    "path": "GRWTSK/Algebra/LocalCohomology/Variant2bca8374b8a96c11358cf924dcf0e7e2422497a9de64c5b93209a6a0473d4288.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a094c2b8cd6fa4b05d9fbb63a1f5c6a67f60319ed9ff9307c44c31ec017220cc",
  "verification": {
    "reference": "docs/verification/Algebra/LocalCohomology/Variant2bca8374b8a96c11358cf924dcf0e7e2422497a9de64c5b93209a6a0473d4288.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f31788b727c054e38f618bfb14f5c81fbb5041eaf1a6c4b7139d924ed972bb8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selfLERadicalDiagram (J : Ideal R) : SelfLERadical J ⥤ Ideal R :=
  ObjectProperty.ι _

end Diagrams

end localCohomology

/-! We give two models for the local cohomology with support in an ideal `J`: first in terms of
the powers of `J` (`localCohomology`), then in terms of *all* ideals with radical
containing `J` (`localCohomology.ofSelfLERadical`). -/


section ModelsForLocalCohomology

open localCohomology

variable {R : Type u} [CommRing R]

/-- `localCohomology J i` is `i`-th the local cohomology module of a module `M` over
a commutative ring `R` with support in the ideal `J` of `R`, defined as the direct limit
of `Ext^i(R/J^t, M)` over all powers `t : ℕ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalCohomology/Variant2bca8374b8a96c11358cf924dcf0e7e2422497a9de64c5b93209a6a0473d4288.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalCohomology/Variant2bca8374b8a96c11358cf924dcf0e7e2422497a9de64c5b93209a6a0473d4288.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb45f6ecc49bf1d486323f46efba5703db57054b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
