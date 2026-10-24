# col_weak

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9200e70-0c25-d169-a028-2bb17501f24f",
  "kind": "theorem",
  "lexical_name": "col_weak",
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
  "slug": "col-weak--9c81cfb7bf7a4d5f813492bb",
  "source": {
    "blob": "f196b7e94670c2d4c198b480f7ea7a122ff68aeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c81cfb7bf7a4d5f813492bb4920b001e932c028337932f93ec6f1c79b52c9a0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9200e70-0c25-d169-a028-2bb17501f24f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem col_weak {μ : YoungDiagram} (T : SemistandardYoungTableau μ) {i1 i2 j : ℕ} (hi : i1 ≤ i2)
    (cell : (i2, j) ∈ μ) : T i1 j ≤ T i2 j := by
  rcases eq_or_lt_of_le hi with h | h
  · rw [h]
  · exact le_of_lt (T.col_strict h cell)

/-- The "highest weight" SSYT of a given shape has all i's in row i, for each i. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f196b7e94670c2d4c198b480f7ea7a122ff68aeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
