# ContinuousOn.inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8225adc0-1a16-2ac9-e330-786017f59151",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.inversion",
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
  "slug": "continuouson-inversion--d59ba59208ee7b5394f4f6bf",
  "source": {
    "blob": "34a6612d0f7fe41e7e4ca5ce5e38b650d52a4e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 231,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd66af030b45e8fb77b694f82ffd5f0b50c3d2f2303846974824cc839c5ce975f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d59ba59208ee7b5394f4f6bfc926ca0b332e8f28f80cf2abdf400655526726cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd66af030b45e8fb77b694f82ffd5f0b50c3d2f2303846974824cc839c5ce975f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8225adc0-1a16-2ac9-e330-786017f59151`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ContinuousOn.inversion (hc : ContinuousOn c s) (hR : ContinuousOn R s)
    (hx : ContinuousOn x s) (hne : ∀ a ∈ s, x a ≠ c a) :
    ContinuousOn (fun a ↦ inversion (c a) (R a) (x a)) s := fun a ha ↦
  (hc a ha).inversion (hR a ha) (hx a ha) (hne a ha)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd66af030b45e8fb77b694f82ffd5f0b50c3d2f2303846974824cc839c5ce975f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd66af030b45e8fb77b694f82ffd5f0b50c3d2f2303846974824cc839c5ce975f.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a6612d0f7fe41e7e4ca5ce5e38b650d52a4e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
