# IsRetrocompact.inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:879b0b13-ee6d-d48b-65e2-01f8e5471f4a",
  "kind": "lemma",
  "lexical_name": "IsRetrocompact.inter",
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
  "slug": "isretrocompact-inter--9610578e8174fd66d0c5d6dc",
  "source": {
    "blob": "15fe5be2b116dde295895c5f95065f3612588f49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9610578e8174fd66d0c5d6dcebdb26a3662376dbf7d4251f6b8215bd78b7d984",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:879b0b13-ee6d-d48b-65e2-01f8e5471f4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsRetrocompact.inter (hs : IsRetrocompact s) (ht : IsRetrocompact t) :
    IsRetrocompact (s ∩ t : Set X) :=
  fun _U hUcomp hUopen ↦ inter_inter_distrib_right .. ▸ (hs hUcomp hUopen).inter (ht hUcomp hUopen)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15fe5be2b116dde295895c5f95065f3612588f49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
