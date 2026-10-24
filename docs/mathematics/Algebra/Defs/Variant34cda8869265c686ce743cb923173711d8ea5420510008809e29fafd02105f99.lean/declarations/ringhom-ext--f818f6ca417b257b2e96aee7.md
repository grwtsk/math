# ringHom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c21f44fc-6975-b50c-edd5-43ae17b8f7a7",
  "kind": "theorem",
  "lexical_name": "ringHom_ext",
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
  "slug": "ringhom-ext--f818f6ca417b257b2e96aee7",
  "source": {
    "blob": "4b40f765a01fb76a20359ed66a0436fa21a862c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 546,
    "path": "GRWTSK/Algebra/Defs/Variant34cda8869265c686ce743cb923173711d8ea5420510008809e29fafd02105f99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f818f6ca417b257b2e96aee737b6e45c4d23e3b26497109bc42eb90e2413486b",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant34cda8869265c686ce743cb923173711d8ea5420510008809e29fafd02105f99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c21f44fc-6975-b50c-edd5-43ae17b8f7a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ringHom_ext ⦃j k : S →+* P⦄ (h : j.comp (algebraMap R S) = k.comp (algebraMap R S)) :
    j = k :=
  RingHom.coe_monoidHom_injective <| monoidHom_ext M <| MonoidHom.ext <| RingHom.congr_fun h

/-- To show `j` and `k` agree on the whole localization, it suffices to show they agree
on the image of the base ring, if they preserve `1` and `*`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant34cda8869265c686ce743cb923173711d8ea5420510008809e29fafd02105f99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant34cda8869265c686ce743cb923173711d8ea5420510008809e29fafd02105f99.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b40f765a01fb76a20359ed66a0436fa21a862c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
