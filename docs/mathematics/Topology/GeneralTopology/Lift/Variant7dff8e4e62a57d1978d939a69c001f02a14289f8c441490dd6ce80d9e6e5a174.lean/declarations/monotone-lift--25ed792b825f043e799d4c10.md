# monotone_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e20eebc-d6f3-68a7-5f84-005fbbb08568",
  "kind": "theorem",
  "lexical_name": "monotone_lift",
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
  "slug": "monotone-lift--25ed792b825f043e799d4c10",
  "source": {
    "blob": "51d949e57518cdff4e244707dfa6a7fd5f3135f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25ed792b825f043e799d4c10e7d1cde15d97aa6bfff65223168de8bda5ad5e90",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e20eebc-d6f3-68a7-5f84-005fbbb08568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monotone_lift [Preorder γ] {f : γ → Filter α} {g : γ → Set α → Filter β} (hf : Monotone f)
    (hg : Monotone g) : Monotone fun c => (f c).lift (g c) := fun _ _ h => lift_mono (hf h) (hg h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51d949e57518cdff4e244707dfa6a7fd5f3135f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
