# zipWithRight'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a75b18a29fefc1486c5761afb4e59c5eccea48d86047b5a14d2f81b5a0a16066",
  "kind": "def",
  "lexical_name": "zipWithRight'",
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
  "slug": "zipwithright--f20fc192a6080bd6ccacc502",
  "source": {
    "blob": "259c26784826ee775872f1aeb666dee30565a411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1364,
    "line": 1352,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6ab11c07f15eb1f95f83b5d8a3e9dbd94f7c625ab9f8060894b401333aaddd02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f20fc192a6080bd6ccacc502c106b584a8010e261ca495bf5ea73690be61ffd1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6ab11c07f15eb1f95f83b5d8a3e9dbd94f7c625ab9f8060894b401333aaddd02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a75b18a29fefc1486c5761afb4e59c5eccea48d86047b5a14d2f81b5a0a16066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1352–1364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[inline] def zipWithRight' (f : Option α → β → γ) (as : List α) (bs : List β) : List γ × List α :=
  zipWithLeft' (flip f) bs as

/--
Left-biased version of `List.zip`. `zipLeft' as bs` returns the list of
pairs `(aᵢ, bᵢ)` for `aᵢ ∈ as` and `bᵢ ∈ bs`. If `bs` is shorter than `as`, the
remaining `aᵢ` are paired with `none`. Also returns the remaining `bs`.
```
zipLeft' [1, 2] ['a'] = ([(1, some 'a'), (2, none)], [])
zipLeft' [1] ['a', 'b'] = ([(1, some 'a')], ['b'])
zipLeft' = zipWithLeft' prod.mk
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6ab11c07f15eb1f95f83b5d8a3e9dbd94f7c625ab9f8060894b401333aaddd02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6ab11c07f15eb1f95f83b5d8a3e9dbd94f7c625ab9f8060894b401333aaddd02.lean#L1352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `259c26784826ee775872f1aeb666dee30565a411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
