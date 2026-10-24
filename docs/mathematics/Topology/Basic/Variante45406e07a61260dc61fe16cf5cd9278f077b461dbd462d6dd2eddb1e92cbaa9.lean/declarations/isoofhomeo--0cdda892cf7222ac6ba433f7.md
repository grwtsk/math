# isoOfHomeo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb7cb3d015d249640f946cfae5af60d15518e4b9b689de3b0b20c9b4ebb74841",
  "kind": "def",
  "lexical_name": "isoOfHomeo",
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
  "slug": "isoofhomeo--0cdda892cf7222ac6ba433f7",
  "source": {
    "blob": "33329dc29183a147bda5f16322814cd720709912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 341,
    "path": "GRWTSK/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cdda892cf7222ac6ba433f7641c120d7fc74455d7c8f794504edb98ec8cca89",
  "verification": {
    "reference": "docs/verification/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb7cb3d015d249640f946cfae5af60d15518e4b9b689de3b0b20c9b4ebb74841`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoOfHomeo (f : X ≃ₜ Y) : X ≅ Y :=
  @asIso _ _ _ _ ⟨f, f.continuous⟩ (@isIso_of_reflects_iso _ _ _ _ _ _ _ profiniteToCompHaus
    (IsIso.of_iso (CompHaus.isoOfHomeo f)) _)
#align Profinite.iso_of_homeo Profinite.isoOfHomeo

/-- Construct a homeomorphism from an isomorphism. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33329dc29183a147bda5f16322814cd720709912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
