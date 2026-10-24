# t2space_iff_isSeparatedMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63c339d8-1468-486f-0285-33f172e43915",
  "kind": "lemma",
  "lexical_name": "t2space_iff_isSeparatedMap",
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
  "slug": "t2space-iff-isseparatedmap--3910df9f3c6e99f221ae9a1a",
  "source": {
    "blob": "1354addf21a01f90bc7cd0a7e8dc4b50b7c7e520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3910df9f3c6e99f221ae9a1afa00adca6257650c61a494ad5d39b0a8a549872d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63c339d8-1468-486f-0285-33f172e43915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma t2space_iff_isSeparatedMap (y : Y) : T2Space X ↔ IsSeparatedMap fun _ : X ↦ y :=
  ⟨fun ⟨t2⟩ _ _ _ hne ↦ t2 hne, fun sep ↦ ⟨fun x₁ x₂ hne ↦ sep x₁ x₂ rfl hne⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1354addf21a01f90bc7cd0a7e8dc4b50b7c7e520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
