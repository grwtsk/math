# ArrayIterator.exists_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b520897-0b2c-47fc-7092-fef6bf187576",
  "kind": "theorem",
  "lexical_name": "ArrayIterator.exists_iff",
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
  "slug": "arrayiterator-exists-iff--1495d9d85ba5dec99b03ab2f",
  "source": {
    "blob": "fbd6387362a48945c6625ae5e3cdf1927c7ef9d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1495d9d85ba5dec99b03ab2f77e934e09a4d8410ca0e03a99b3f0a35d004e5c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b520897-0b2c-47fc-7092-fef6bf187576`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ArrayIterator.exists_iff {α : Type w} {P : ArrayIterator α → Prop} :
    (∃ s, P s) ↔ ∃ array pos, P ⟨array, pos⟩ := by
  constructor
  · rintro ⟨⟨array, pos⟩, h⟩
    exact ⟨array, pos, h⟩
  · rintro ⟨array, pos, h⟩
    exact ⟨⟨array, pos⟩, h⟩

/--
Returns a finite monadic iterator for the given array starting at the given index.
The iterator yields the elements of the array in order and then terminates.

The pure version of this iterator is `Array.iterFromIdx`.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[always_inline, inline, match_pattern]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbd6387362a48945c6625ae5e3cdf1927c7ef9d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
