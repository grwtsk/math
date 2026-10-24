# subtype_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6665b1c-a81e-bf3c-7f13-c748ecadac01",
  "kind": "theorem",
  "lexical_name": "subtype_map",
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
  "slug": "subtype-map--87f25c371e7d5c290d627c4e",
  "source": {
    "blob": "37a0a6b6ddf1fd932d27fc5956d90d0d33d84572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 606,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variantb06eb6cbcf5927d76113232a3268f1b605798cb5a21508daf511cec324ac6432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87f25c371e7d5c290d627c4e08109dcb93f616c85bcbb19ff86a7525019fc75a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Image/Variantb06eb6cbcf5927d76113232a3268f1b605798cb5a21508daf511cec324ac6432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6665b1c-a81e-bf3c-7f13-c748ecadac01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subtype_map (p : α → Prop) [DecidablePred p] {s : Finset α} :
    (s.subtype p).map (Embedding.subtype _) = s.filter p := by
  ext x
  simp [@and_comm _ (_ = _), @and_left_comm _ (_ = _), @and_comm (p x) (x ∈ s)]

/-- If all elements of a `Finset` satisfy the predicate `p`,
`s.subtype p` converts back to `s` with `Embedding.subtype`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Image/Variantb06eb6cbcf5927d76113232a3268f1b605798cb5a21508daf511cec324ac6432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variantb06eb6cbcf5927d76113232a3268f1b605798cb5a21508daf511cec324ac6432.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37a0a6b6ddf1fd932d27fc5956d90d0d33d84572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
