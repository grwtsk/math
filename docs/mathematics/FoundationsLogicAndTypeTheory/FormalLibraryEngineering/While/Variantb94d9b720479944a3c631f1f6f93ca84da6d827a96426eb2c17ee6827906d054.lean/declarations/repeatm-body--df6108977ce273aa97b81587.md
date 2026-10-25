# repeatM.body

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03196763ac556c1855f2b34a2cf3701ec9664761275783e280ded8b3179bca26",
  "kind": "abbrev",
  "lexical_name": "repeatM.body",
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
  "slug": "repeatm-body--df6108977ce273aa97b81587",
  "source": {
    "blob": "d6c953c39bad07eaf16f37cf8a006df58c49646d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df6108977ce273aa97b815873aa4b97eb52b3fa5025c1133fb0892fc770c5a4d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03196763ac556c1855f2b34a2cf3701ec9664761275783e280ded8b3179bca26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public abbrev repeatM.body (f : α → m (α ⊕ β)) (recur : α → m β) (a : α) : m β := do
  match ← f a with
  | .inl a => recur a
  | .inr b => pure b

/-- Pinning predicate for `repeatM.impl`: trivial unless `repeatM.body f` has a fixed point,
in which case `r` is logically pinned to that fixed point applied to `a`. -/
-- For monads like `List`, `Multiset`, no fixed point of `repeatM.body f` need exist:
-- e.g. for `List`, `f a = [.inr 0, .inl a]` forces `g a = [0] ++ g a`, unsatisfiable in
-- finite lists because `++` isn't idempotent. There this `Pred` collapses to `True`;
-- a future per-point `Acc` / `MonadAttach` branch could pin `r` for the cases where
-- execution from `a` is structurally well-founded.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6c953c39bad07eaf16f37cf8a006df58c49646d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
