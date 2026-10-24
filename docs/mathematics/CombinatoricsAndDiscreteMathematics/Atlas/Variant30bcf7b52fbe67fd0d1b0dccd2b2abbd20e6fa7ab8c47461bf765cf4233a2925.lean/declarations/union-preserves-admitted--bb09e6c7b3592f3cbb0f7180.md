# union_preserves_admitted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f46d85c-be06-fea0-51f5-9c65ababa62a",
  "kind": "theorem",
  "lexical_name": "union_preserves_admitted",
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
  "slug": "union-preserves-admitted--bb09e6c7b3592f3cbb0f7180",
  "source": {
    "blob": "52e64fa0670caa71a59b490e2c597fb0f4c355f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 295,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb09e6c7b3592f3cbb0f71807479df0175389e5fb2b9d27bf73fc47090545380",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f46d85c-be06-fea0-51f5-9c65ababa62a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union_preserves_admitted (A B : BridgeSelection catalog) (e : E) :
    (A.union B).toGraph.admitted e = A.toGraph.admitted e := rfl

end BridgeSelection

/-- The finite composition language names only the following sound grammars.
A rule name is metadata; an application must supply its typed witness below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e64fa0670caa71a59b490e2c597fb0f4c355f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
