# reverseIndex_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e28eaf2d-504f-d88a-2173-41b6763b0f15",
  "kind": "theorem",
  "lexical_name": "reverseIndex_iff",
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
  "slug": "reverseindex-iff--a2910c851eafe06dac0cdf11",
  "source": {
    "blob": "f8680e38a34c7eed0b92e66223e9980a7b0f36eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant8c6dd0583020925df8127d7ac1182b6bd29ec7a397c04b79deb36c585dc4bde8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2910c851eafe06dac0cdf11adff3e772cf3c2c9fd9ee4c5db2f836b0f19d127",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant8c6dd0583020925df8127d7ac1182b6bd29ec7a397c04b79deb36c585dc4bde8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e28eaf2d-504f-d88a-2173-41b6763b0f15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reverseIndex_iff (n : Nat) :
    WeaklyNormalizing (M.rename (Expr.reverseIndex n)) ↔ WeaklyNormalizing M := by
  constructor
  · intro h
    simpa only [Expr.reverseIndex_twice] using h.rename (Expr.reverseIndex n)
  · intro h
    exact h.rename _

end WeaklyNormalizing

/-- Finite prefixes of a common context, using fixed-level names when viewed
outside a prefix. Every sortable fixed-level expression is declared arbitrarily
late. Bound variables remain de Bruijn indices and are never declared here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant8c6dd0583020925df8127d7ac1182b6bd29ec7a397c04b79deb36c585dc4bde8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant8c6dd0583020925df8127d7ac1182b6bd29ec7a397c04b79deb36c585dc4bde8.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8680e38a34c7eed0b92e66223e9980a7b0f36eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
