# HoleIterator.next

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3800641744ef8d1cb7db616c223c3d614ff503e06b5065fe21e30d93d45d844d",
  "kind": "def",
  "lexical_name": "HoleIterator.next",
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
  "slug": "holeiterator-next--d0439180a8b713fbd1767742",
  "source": {
    "blob": "777c86b6581b030a5ac07a7deaf920be62d46fca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubExpr/Variantd85fa8388d8d71b1b23ca24371d599457bfc0ba4bcc0f6f39ebe74c4ea2de47f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0439180a8b713fbd17677420314c6617c6453edf29d61db50a6751c54c9c363",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubExpr/Variantd85fa8388d8d71b1b23ca24371d599457bfc0ba4bcc0f6f39ebe74c4ea2de47f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3800641744ef8d1cb7db616c223c3d614ff503e06b5065fe21e30d93d45d844d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HoleIterator.next (iter : HoleIterator) : HoleIterator :=
  if (iter.curr+1) == iter.top then
    ⟨2*iter.top, Pos.maxChildren*iter.top⟩
  else ⟨iter.curr+1, iter.top⟩

/-- The positioning scheme guarantees that there will be an infinite number of extra positions
which are never used by `Expr`s. The `HoleIterator` always points at the next such "hole".
We use these to attach additional `Elab.Info`.

Note: these positions are incompatible with `Lean.SubExpr.Pos.push` since the iterator
will eventually yield every child of every returned position. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubExpr/Variantd85fa8388d8d71b1b23ca24371d599457bfc0ba4bcc0f6f39ebe74c4ea2de47f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubExpr/Variantd85fa8388d8d71b1b23ca24371d599457bfc0ba4bcc0f6f39ebe74c4ea2de47f.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `777c86b6581b030a5ac07a7deaf920be62d46fca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
