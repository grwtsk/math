# IterM.findSome?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:823c1e706e9465190369c3e8382f9c60c1f05be58cfe42ac5fa5d3254324e9c4",
  "kind": "def",
  "lexical_name": "IterM.findSome?",
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
  "slug": "iterm-findsome--cab381cb6bd32524c5fa7820",
  "source": {
    "blob": "da790ebc593fce905c4c803667114a01385478a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 715,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cab381cb6bd32524c5fa78206759677cc0bc872449552462f90d6bb7808d8246",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:823c1e706e9465190369c3e8382f9c60c1f05be58cfe42ac5fa5d3254324e9c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 715–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IterM.findSome? {α β γ : Type w} {m : Type w → Type w'} [Monad m] [Iterator α m β]
    [IteratorLoop α m m] (it : IterM (α := α) m β) (f : β → Option γ) :
    m (Option γ) :=
  it.findSomeM? (pure <| f ·)

/--
Returns the first non-`none` result of applying `f` to each output of the iterator, in order.
Returns `none` if `f` returns `none` for all outputs.

`O(|it|)`. Short-circuits when `f` returns `some _`.The outputs of `it` are examined in order of
iteration.

This function is deprecated. Instead of `it.allowNontermination.findSome?`, use `it.findSome?`.

Examples:
 * `([7, 6, 5, 8, 1, 2, 6].iterM Id).allowNontermination.findSome? (fun x => if x < 5 then some (10 * x) else none) = pure (some 10)`
 * `([7, 6, 5, 8, 1, 2, 6].iterM Id).allowNontermination.findSome? (fun x => if x < 1 then some (10 * x) else none) = pure none`
-/
@[inline, deprecated IterM.findSome? (since := "2025-12-04")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean#L715).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da790ebc593fce905c4c803667114a01385478a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
