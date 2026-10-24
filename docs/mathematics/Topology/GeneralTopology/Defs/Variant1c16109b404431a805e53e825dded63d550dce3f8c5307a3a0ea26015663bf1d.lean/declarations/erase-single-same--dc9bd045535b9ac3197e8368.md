# erase_single_same

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ede92d06-b018-ebf8-d144-4908d67fe4be",
  "kind": "theorem",
  "lexical_name": "erase_single_same",
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
  "slug": "erase-single-same--dc9bd045535b9ac3197e8368",
  "source": {
    "blob": "508e6b417841822f3735dba061237c026e730a2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 611,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc9bd045535b9ac3197e83686d091d9130b4ca44a684e7454a0b9733aa791958",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ede92d06-b018-ebf8-d144-4908d67fe4be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 611–614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erase_single_same (i : ι) (x : β i) : (single i x).erase i = 0 := by
  rw [erase_single, ite_eq_left rfl]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean#L611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `508e6b417841822f3735dba061237c026e730a2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
