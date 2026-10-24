# StableUnderGeneralization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2cf3138baf0ec6e9466c65f9bb05f089429965ca89fa192d1a1bf2b53aadd55",
  "kind": "def",
  "lexical_name": "StableUnderGeneralization",
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
  "slug": "stableundergeneralization--206606251c0c2123a5eb6f39",
  "source": {
    "blob": "bc887ad763fd154a1fd2d6ab57a0bf33e102ec3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 238,
    "path": "GRWTSK/Topology/GeneralTopology/Inseparable/Variant15527a47336055bcf8e700b0dbfa77c289e01e2f712d415c59473760b52e0906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:206606251c0c2123a5eb6f3902cd3a86e73593bb84ca69361eb89b997cd2cb14",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inseparable/Variant15527a47336055bcf8e700b0dbfa77c289e01e2f712d415c59473760b52e0906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2cf3138baf0ec6e9466c65f9bb05f089429965ca89fa192d1a1bf2b53aadd55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StableUnderGeneralization (s : Set X) : Prop :=
  ∀ ⦃x y⦄, y ⤳ x → x ∈ s → y ∈ s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inseparable/Variant15527a47336055bcf8e700b0dbfa77c289e01e2f712d415c59473760b52e0906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inseparable/Variant15527a47336055bcf8e700b0dbfa77c289e01e2f712d415c59473760b52e0906.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc887ad763fd154a1fd2d6ab57a0bf33e102ec3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
