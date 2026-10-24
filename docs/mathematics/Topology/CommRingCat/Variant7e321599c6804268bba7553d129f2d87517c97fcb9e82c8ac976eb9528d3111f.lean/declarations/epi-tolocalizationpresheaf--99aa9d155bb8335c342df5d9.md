# epi_toLocalizationPresheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b52c37f48a696f3c1779eaf116a39ccb666a0c60bf40aaa282ef9c69a278fa2d",
  "kind": "instance",
  "lexical_name": "epi_toLocalizationPresheaf",
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
  "slug": "epi-tolocalizationpresheaf--99aa9d155bb8335c342df5d9",
  "source": {
    "blob": "1bc2af5c7919623710f8831682b9a257b58de714",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 139,
    "path": "GRWTSK/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99aa9d155bb8335c342df5d902e74846bd7ea869916cf1dd1d73f76920d3982f",
  "verification": {
    "reference": "docs/verification/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b52c37f48a696f3c1779eaf116a39ccb666a0c60bf40aaa282ef9c69a278fa2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance epi_toLocalizationPresheaf : Epi G.toLocalizationPresheaf :=
  @NatTrans.epi_of_epi_app _ _ _ _ _ _ G.toLocalizationPresheaf fun U => Localization.epi' (G.obj U)

variable (F)

/-- Given a submonoid at each of the stalks, we may define a submonoid presheaf consisting of
sections whose restriction onto each stalk falls in the given submonoid. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc2af5c7919623710f8831682b9a257b58de714` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
