# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d45b1492ddb9a196f5223381e327e434cf31711530f153845543b387dbc9b83",
  "kind": "structure",
  "lexical_name": "Context",
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
  "slug": "context--0eeb34c28516dfbff7dab015",
  "source": {
    "blob": "e694ff179c58bd373538d9e3f48bae26c18cdbbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantfd43d0c9890f0602349138ccf6ee2f1395e8934b4a0205cfee3869c7b6b2ee58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0eeb34c28516dfbff7dab01537bc29c321460d766d8dc7aeb556a6c9c1811fe3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantfd43d0c9890f0602349138ccf6ee2f1395e8934b4a0205cfee3869c7b6b2ee58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d45b1492ddb9a196f5223381e327e434cf31711530f153845543b387dbc9b83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Context where
  /-- Configuration. -/
  cfg : DepRewrite.Config
  /-- The pattern to generalize over. -/
  p : Expr
  /-- The free variable to substitute for `p`. -/
  x : Expr
  /-- A proof of `p = x`. Must be an fvar. -/
  h : Expr
  /-- The list of *value-less* binders (`cdecl`s and nondependent `ldecl`s)
  that we have introduced.
  Together with each binder, we store its type abstracted over `x` and `h`,
  and with all occurrences of previous entries in `Δ`
  casted along the abstracting equation.

  E.g., if the local context is `a : T, b : U`,
  we store `(a, Ma)` where `Ma := fun (x' : α) (h' : x = x') => T[x'/x, h'/h]`
  and `(b, fun (x' : α) (h' : x = x') => U[x'/x, h'/h, (Eq.rec (motive := Ma) a h)/a])`
  See the docstring on `visitAndCast`. -/
  Δ : Array (FVarId × Expr)
  /-- The set of all *dependent* `ldecl`s that we have introduced. -/
  δ : Std.HashSet FVarId
  -- TODO: use `@[computed_field]`s below when `structure` supports that
  /-- Cached `p.toHeadIndex`. -/
  pHeadIdx : HeadIndex := p.toHeadIndex
  /-- Cached `p.toNumArgs`. -/
  pNumArgs : Nat := p.headNumArgs

/-- We use a cache entry iff the upcoming traversal would abstract exactly the same occurrences
as the cached traversal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantfd43d0c9890f0602349138ccf6ee2f1395e8934b4a0205cfee3869c7b6b2ee58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantfd43d0c9890f0602349138ccf6ee2f1395e8934b4a0205cfee3869c7b6b2ee58.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e694ff179c58bd373538d9e3f48bae26c18cdbbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
