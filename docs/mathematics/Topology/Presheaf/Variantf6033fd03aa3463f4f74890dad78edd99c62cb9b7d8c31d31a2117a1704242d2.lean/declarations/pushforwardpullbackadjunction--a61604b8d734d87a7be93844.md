# pushforwardPullbackAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:331dcc7a53c570d8c6da7ddbfce9e9e71073cf195d5327f46b7e6c74c784f20d",
  "kind": "def",
  "lexical_name": "pushforwardPullbackAdjunction",
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
  "slug": "pushforwardpullbackadjunction--a61604b8d734d87a7be93844",
  "source": {
    "blob": "72fc4be0d1516126e666a7d8da5913eb3b312b71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 496,
    "path": "GRWTSK/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a61604b8d734d87a7be938440e6691157dbefa2f48a13cc092c617adffc96d46",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:331dcc7a53c570d8c6da7ddbfce9e9e71073cf195d5327f46b7e6c74c784f20d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushforwardPullbackAdjunction {X Y : TopCat.{v}} (f : X ⟶ Y) :
  pullback C f ⊣ pushforward C f :=
  Lan.adjunction _ _
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward_pullback_adjunction TopCat.Presheaf.pushforwardPullbackAdjunction

/-- Pulling back along a homeomorphism is the same as pushing forward along its inverse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72fc4be0d1516126e666a7d8da5913eb3b312b71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
