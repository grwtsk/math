# SemiLocalSymbolProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:380625fb3ec3c8c768bda03f1cfb9433a11c994d7e63c1d13212db2338e6d7db",
  "kind": "structure",
  "lexical_name": "SemiLocalSymbolProfile",
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
  "slug": "semilocalsymbolprofile--30e776e5a197307c0bcce6f7",
  "source": {
    "blob": "f6842c618f0f62d1528e254dbbf240cd6a8e8560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 15,
    "path": "GRWTSK/Algebra/GroupTheory/Symbol/Variant4ddcd8a27304a316dc5f9ad97a3d252a5173b62fc4aee2de751d46b35cddfe68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30e776e5a197307c0bcce6f7f871a05f7ae6a11fbd6f53774ea3531dcea98dfb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Symbol/Variant4ddcd8a27304a316dc5f9ad97a3d252a5173b62fc4aee2de751d46b35cddfe68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:380625fb3ec3c8c768bda03f1cfb9433a11c994d7e63c1d13212db2338e6d7db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SemiLocalSymbolProfile
    (Prime : Type uPrime)
    (Symbol : Type uSymbol)
    [CommGroup Symbol] where
  archimedeanRatio : Symbol
  finiteRatio : Prime → Symbol

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Symbol/Variant4ddcd8a27304a316dc5f9ad97a3d252a5173b62fc4aee2de751d46b35cddfe68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Symbol/Variant4ddcd8a27304a316dc5f9ad97a3d252a5173b62fc4aee2de751d46b35cddfe68.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6842c618f0f62d1528e254dbbf240cd6a8e8560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
