# salient_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:402a2001-beb0-72fd-68cb-9c5fd1260890",
  "kind": "theorem",
  "lexical_name": "salient_positive",
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
  "slug": "salient-positive--0b0079c12e8b4867748866ac",
  "source": {
    "blob": "c6f463e7334b5820e579b56cf61c1d46e2349855",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 592,
    "path": "GRWTSK/Analysis/Basic/Variantdbe5efe60788443425458f3f91b0e682bdc8b0f05506e31373a35b740283c5ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b0079c12e8b4867748866acc76d76a370113c106be988ae96c40b190aea5ec4",
  "verification": {
    "reference": "docs/verification/Analysis/Basic/Variantdbe5efe60788443425458f3f91b0e682bdc8b0f05506e31373a35b740283c5ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:402a2001-beb0-72fd-68cb-9c5fd1260890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem salient_positive : Salient (positive 𝕜 E) := fun x xs hx hx' =>
  lt_irrefl (0 : E)
    (calc
      0 < x := lt_of_le_of_ne xs hx.symm
      _ ≤ x + -x := (le_add_of_nonneg_right hx')
      _ = 0 := add_neg_self x
      )
#align convex_cone.salient_positive ConvexCone.salient_positive

/-- The positive cone of an ordered module is always pointed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Basic/Variantdbe5efe60788443425458f3f91b0e682bdc8b0f05506e31373a35b740283c5ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Basic/Variantdbe5efe60788443425458f3f91b0e682bdc8b0f05506e31373a35b740283c5ba.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6f463e7334b5820e579b56cf61c1d46e2349855` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
