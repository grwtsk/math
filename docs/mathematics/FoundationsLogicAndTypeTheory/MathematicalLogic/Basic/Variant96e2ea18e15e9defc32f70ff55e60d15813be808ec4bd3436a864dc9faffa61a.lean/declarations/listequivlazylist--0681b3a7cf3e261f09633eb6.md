# listEquivLazyList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2eb8c4de498899b2c2eb176281cf0cc2d9e2b6954ba3f82cbb92ff43db1ec2be",
  "kind": "def",
  "lexical_name": "listEquivLazyList",
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
  "slug": "listequivlazylist--0681b3a7cf3e261f09633eb6",
  "source": {
    "blob": "0b10c7c2cf1b0a1c7ab5db30588d5caaff6c4fc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0681b3a7cf3e261f09633eb6194252bfb652ac250572b8efd15cc3c849fc393f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2eb8c4de498899b2c2eb176281cf0cc2d9e2b6954ba3f82cbb92ff43db1ec2be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def listEquivLazyList (α : Type*) : List α ≃ LazyList α where
  toFun := LazyList.ofList
  invFun := LazyList.toList
  right_inv := by
    intro xs
    induction' xs using LazyList.rec with _ _ _ _ ih
    · rfl
    · simpa only [toList, ofList, cons.injEq, true_and]
    · rw [Thunk.get, ih]
  left_inv := by
    intro xs
    induction xs
    · rfl
    · simpa [ofList, toList]
#align lazy_list.list_equiv_lazy_list LazyList.listEquivLazyList

-- Porting note: Added a name to make the recursion work.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b10c7c2cf1b0a1c7ab5db30588d5caaff6c4fc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
