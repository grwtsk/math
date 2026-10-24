# recoverRows_traceRows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:812860b8-2c63-0619-d549-f11a48a82e6c",
  "kind": "theorem",
  "lexical_name": "recoverRows_traceRows",
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
  "slug": "recoverrows-tracerows--caf0f3639fc55d589be2c9e2",
  "source": {
    "blob": "34153984b56e347eea3bd224fa216652c06a765d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 157,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caf0f3639fc55d589be2c9e24e78005dcbac9ea75d18923d56b1a42d05c95ca9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:812860b8-2c63-0619-d549-f11a48a82e6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recoverRows_traceRows (rows : List (Key × Occurrence root)) :
    recoverRows (traceRows rows) (traceRows_valid rows) = rows := by
  unfold recoverRows traceRows
  rw [List.attach_map, List.map_map]
  calc
    _ = rows.attach.map (fun row => row.1) := by
      apply List.map_congr_left
      intro row _
      rcases row with ⟨⟨key, node⟩, hrow⟩
      change (key, _) = (key, node)
      apply Prod.ext
      · rfl
      · apply trace_injective
        exact EdgeTrace.encode_decode root _ _
    _ = rows := List.attach_map_subtype_val rows

/-- Any successful actual unpacking recovers precisely the original actual occurrences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34153984b56e347eea3bd224fa216652c06a765d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
