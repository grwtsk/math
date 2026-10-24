# card_connectedComponent_eq_finrank_ker_toLin'_lapMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62654684abd09d46786536f0172042cb517cb891",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c823a530-b4e2-7261-04bb-978ebd9c0dc5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d65006e3-5ba9-b6c9-40ae-f7b7e1e1b6b7",
  "kind": "theorem",
  "lexical_name": "card_connectedComponent_eq_finrank_ker_toLin'_lapMatrix",
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
  "slug": "card-connectedcomponent-eq-finrank-ker-tolin-lapmatrix--c5d1c8437d0dbccecdbb6998",
  "source": {
    "blob": "62654684abd09d46786536f0172042cb517cb891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 204,
    "path": "GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5d1c8437d0dbccecdbb699848881b339fbed2a989a2d54d13b737637cf29518",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d65006e3-5ba9-b6c9-40ae-f7b7e1e1b6b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_connectedComponent_eq_finrank_ker_toLin'_lapMatrix :
    Fintype.card G.ConnectedComponent =
      Module.finrank ℝ (LinearMap.ker (Matrix.toLin' (G.lapMatrix ℝ))) := by
  classical
  rw [Module.finrank_eq_card_basis (lapMatrix_ker_basis G)]

@[deprecated (since := "2025-04-29")]
alias card_ConnectedComponent_eq_rank_ker_lapMatrix :=
  card_connectedComponent_eq_finrank_ker_toLin'_lapMatrix

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantcfec4fcb5ce0950eb5a11f4ec7667441f4f941cb5adef515815c4ef4fd891960.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62654684abd09d46786536f0172042cb517cb891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
