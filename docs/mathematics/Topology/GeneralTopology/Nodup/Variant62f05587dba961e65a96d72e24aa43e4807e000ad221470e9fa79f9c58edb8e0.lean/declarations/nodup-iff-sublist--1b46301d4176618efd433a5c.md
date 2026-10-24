# nodup_iff_sublist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7735e324-a698-a28c-d6f7-20a0a65e6fde",
  "kind": "theorem",
  "lexical_name": "nodup_iff_sublist",
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
  "slug": "nodup-iff-sublist--1b46301d4176618efd433a5c",
  "source": {
    "blob": "30e9411c4a15154dd639675750bdb0606593c79a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b46301d4176618efd433a5c6af9768dc60e3b1ad2b98dbd3fbee2582ad98f54",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7735e324-a698-a28c-d6f7-20a0a65e6fde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_iff_sublist {l : List α} : Nodup l ↔ ∀ a, ¬[a, a] <+ l :=
  ⟨fun d a h => not_nodup_pair a (d.sublist h),
    by
      induction l <;> intro h; · exact nodup_nil
      case cons a l IH =>
        exact (IH fun a s => h a <| sublist_cons_of_sublist _ s).cons
          fun al => h a <| (singleton_sublist.2 al).cons_cons _⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30e9411c4a15154dd639675750bdb0606593c79a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
