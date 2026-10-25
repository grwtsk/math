# MonadFinally

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9549b5605b4da30deb8aa73d7fbe3790730a593d12d8c6d93fac381f37f3467",
  "kind": "class",
  "lexical_name": "MonadFinally",
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
  "slug": "monadfinally--54b72f8b05e61f22ae8e9c9c",
  "source": {
    "blob": "fb65a426b29e43f2ca6493953213fd3a7704ec9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54b72f8b05e61f22ae8e9c9c6607c65cb0f47d7cbcb1a159246f3ac279fe6fcb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9549b5605b4da30deb8aa73d7fbe3790730a593d12d8c6d93fac381f37f3467`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MonadFinally (m : Type u → Type v) where
  /--
  Runs an action, ensuring that some other action always happens afterward.

  More specifically, `tryFinally' x f` runs `x` and then the “finally” computation `f`. If `x`
  succeeds with some value `a : α`, `f (some a)` is returned. If `x` fails for `m`'s definition of
  failure, `f none` is returned.

  `tryFinally'` can be thought of as performing the same role as a `finally` block in an imperative
  programming language.
  -/
  tryFinally' {α β} : (x : m α) → (f : Option α → m β) → m (α × β)

export MonadFinally (tryFinally')

/-- Execute `x` and then execute `finalizer` even if `x` threw an exception -/
@[always_inline, inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Except/Variantd9a657fcea7eb6c7ee5480b755691e1a4ed87089fb044ab8cef94f19e321da48.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb65a426b29e43f2ca6493953213fd3a7704ec9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
