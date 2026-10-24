# wordProd_invRev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e366202f-e500-cf6b-4e84-76274ffe820a",
  "kind": "lemma",
  "lexical_name": "wordProd_invRev",
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
  "slug": "wordprod-invrev--778f56f563da63c38032f36b",
  "source": {
    "blob": "a71249754e9d94a1b1a2604c8c5e6c08eb0630f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 71,
    "path": "GRWTSK/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:778f56f563da63c38032f36bb0aac8230e30438a2c58ccde3ce2d123d2c68df8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e366202f-e500-cf6b-4e84-76274ffe820a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma wordProd_invRev : P.wordProd (FreeGroup.invRev l) = (P.wordProd l)⁻¹ := by
  simp [wordProd, ← FreeGroup.inv_mk]

end Group.Generators
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a71249754e9d94a1b1a2604c8c5e6c08eb0630f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
