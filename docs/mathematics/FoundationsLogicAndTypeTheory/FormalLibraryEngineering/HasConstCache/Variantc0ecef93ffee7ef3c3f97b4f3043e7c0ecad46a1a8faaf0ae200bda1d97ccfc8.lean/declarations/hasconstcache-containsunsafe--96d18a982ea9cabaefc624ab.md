# HasConstCache.containsUnsafe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c1a9f7c581ff1e74b3a92604557589b4b5d0d8e3a96c33126839292a76fcc06",
  "kind": "def",
  "lexical_name": "HasConstCache.containsUnsafe",
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
  "slug": "hasconstcache-containsunsafe--96d18a982ea9cabaefc624ab",
  "source": {
    "blob": "787d3c7929d9f879228094433456f2a25400b343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasConstCache/Variantc0ecef93ffee7ef3c3f97b4f3043e7c0ecad46a1a8faaf0ae200bda1d97ccfc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96d18a982ea9cabaefc624ab7b9960d58dadf098ee1b37c713353aa2db07af43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasConstCache/Variantc0ecef93ffee7ef3c3f97b4f3043e7c0ecad46a1a8faaf0ae200bda1d97ccfc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c1a9f7c581ff1e74b3a92604557589b4b5d0d8e3a96c33126839292a76fcc06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def HasConstCache.containsUnsafe (e : Expr) : StateM (HasConstCache declNames) Bool := do
  if let some r := (← get).cache.get? (beq := ⟨ptrEq⟩) e then
    return r
  else
    match e with
    | .const n ..        => return declNames.contains n
    | .app f a           => cache e (← containsUnsafe f <||> containsUnsafe a)
    | .lam _ d b _       => cache e (← containsUnsafe d <||> containsUnsafe b)
    | .forallE _ d b _   => cache e (← containsUnsafe d <||> containsUnsafe b)
    | .letE _ t v b _    => cache e (← containsUnsafe t <||> containsUnsafe v <||> containsUnsafe b)
    | .mdata _ b         => cache e (← containsUnsafe b)
    | .proj _ _ b        => cache e (← containsUnsafe b)
    | _                  => return false
where
  cache (e : Expr) (r : Bool) : StateM (HasConstCache declNames) Bool := do
    modify fun ⟨cache⟩ => ⟨cache.insert (beq := ⟨ptrEq⟩) e r⟩
    return r

/--
  Return true iff `e` contains the constant `declName`.
  Remark: the results for visited expressions are stored in the state cache. -/
@[implemented_by HasConstCache.containsUnsafe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasConstCache/Variantc0ecef93ffee7ef3c3f97b4f3043e7c0ecad46a1a8faaf0ae200bda1d97ccfc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasConstCache/Variantc0ecef93ffee7ef3c3f97b4f3043e7c0ecad46a1a8faaf0ae200bda1d97ccfc8.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `787d3c7929d9f879228094433456f2a25400b343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
