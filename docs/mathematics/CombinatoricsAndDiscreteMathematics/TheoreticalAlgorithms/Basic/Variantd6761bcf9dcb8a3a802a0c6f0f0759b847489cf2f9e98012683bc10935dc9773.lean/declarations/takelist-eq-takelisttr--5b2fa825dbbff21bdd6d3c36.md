# takeList_eq_takeListTR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62ed775c-30b3-efb6-ff21-bc398d6c0be9",
  "kind": "theorem",
  "lexical_name": "takeList_eq_takeListTR",
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
  "slug": "takelist-eq-takelisttr--5b2fa825dbbff21bdd6d3c36",
  "source": {
    "blob": "bcf49991f263cdec635073a6120ff920b3f2b1a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 937,
    "line": 926,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b2fa825dbbff21bdd6d3c362f396459ca5b3dbdb59c93e7a51fa3d20b361027",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62ed775c-30b3-efb6-ff21-bc398d6c0be9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 926–937.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[csimp] theorem takeList_eq_takeListTR : @takeList = @takeListTR := by
  funext α xs ns; simp [takeListTR]
  let rec go (acc) : ∀ ns xs, @takeListTR.go α ns xs acc =
      let (l, r) := xs.takeList ns; (acc.toList ++ l, r)
  | [], xs => by simp [takeListTR.go, takeList]
  | n::ns, xs => by simp [takeListTR.go, takeList, go _ ns]
  simp [go]

/-- Auxliary definition used to define `toChunks`.
  `toChunksAux n xs i` returns `(xs.take i, (xs.drop i).toChunks (n+1))`,
  that is, the first `i` elements of `xs`, and the remaining elements chunked into
  sublists of length `n+1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean#L926).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcf49991f263cdec635073a6120ff920b3f2b1a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
