# IterM.Total.all

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b9b7ce8ab7d58b7da4a88d3cc9507d8b7077d305a2fc2cad2e2b7c431610b6f",
  "kind": "def",
  "lexical_name": "IterM.Total.all",
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
  "slug": "iterm-total-all--11ed8c537ecef4eedfaeab32",
  "source": {
    "blob": "da790ebc593fce905c4c803667114a01385478a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 626,
    "line": 594,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11ed8c537ecef4eedfaeab32dcd6fe403bd24f82637794aa422c46332afb74ce",
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

Occurrence: `declaration:5b9b7ce8ab7d58b7da4a88d3cc9507d8b7077d305a2fc2cad2e2b7c431610b6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 594–626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def IterM.Total.all {α β : Type w} {m : Type w → Type w'} [Monad m] [Iterator α m β]
    [IteratorLoop α m m] [Finite α m] (p : β → Bool) (it : IterM.Total (α := α) m β) :
    m (ULift Bool) := do
  it.it.all p

/--
Returns the first non-`none` result of applying the monadic function `f` to each output
of the iterator, in order. Returns `none` if `f` returns `none` for all outputs.

`O(|it|)`. Short-circuits when `f` returns `some _`. The outputs of `it` are
examined in order of iteration.

If the iterator is not finite, this function might run forever. The variant
`it.ensureTermination.findSomeM?` always terminates after finitely many steps.

Example:
```lean example
#eval ([7, 6, 5, 8, 1, 2, 6].iterM IO).findSomeM? fun i => do
  if i < 5 then
    return some (i * 10)
  if i ≤ 6 then
    IO.println s!"Almost! {i}"
  return none
```
```output
Almost! 6
Almost! 5
```
```output
some 10
```
-/
@[inline]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean#L594).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da790ebc593fce905c4c803667114a01385478a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
