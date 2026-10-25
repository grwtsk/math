# IterM.Total.findM?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e854ec047b0e15c134e3e1c3b59502f9ef3036c146be36d2ac1af95c29991060",
  "kind": "def",
  "lexical_name": "IterM.Total.findM?",
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
  "slug": "iterm-total-findm--21c566302d10a7bcb0a15c88",
  "source": {
    "blob": "da790ebc593fce905c4c803667114a01385478a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 871,
    "line": 852,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21c566302d10a7bcb0a15c88d50254635195bc4e66414ac6cd7e5f1da1991575",
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

Occurrence: `declaration:e854ec047b0e15c134e3e1c3b59502f9ef3036c146be36d2ac1af95c29991060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 852–871.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IterM.Total.findM? {α β : Type w} {m : Type w → Type w'} [Monad m] [Iterator α m β]
    [IteratorLoop α m m] [Finite α m] (it : IterM.Total (α := α) m β) (f : β → m (ULift Bool)) :
    m (Option β) :=
  it.it.findM? f

/--
Returns the first output of the iterator for which the predicate `p` returns `true`, or `none` if
no such output is found.

`O(|it|)`. Short-circuits upon encountering the first match. The elements in `it` are examined in
order of iteration.

If the iterator is not finite, this function might run forever. The variant
`it.ensureTermination.find?` always terminates after finitely many steps.

Examples:
* `([7, 6, 5, 8, 1, 2, 6].iterM Id).find? (· < 5) = pure (some 1)`
* `([7, 6, 5, 8, 1, 2, 6].iterM Id).find? (· < 1) = pure none`
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean#L852).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da790ebc593fce905c4c803667114a01385478a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
