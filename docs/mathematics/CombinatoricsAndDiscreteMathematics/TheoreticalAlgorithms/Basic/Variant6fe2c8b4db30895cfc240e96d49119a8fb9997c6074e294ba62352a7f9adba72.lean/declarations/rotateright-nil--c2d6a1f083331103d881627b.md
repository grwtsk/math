# rotateRight_nil

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ff9140c-452f-1601-0fe2-187a4a315d4c",
  "kind": "theorem",
  "lexical_name": "rotateRight_nil",
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
  "slug": "rotateright-nil--c2d6a1f083331103d881627b",
  "source": {
    "blob": "a45b3110afdf9a53be21f7051742b2f364d8dd49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1368,
    "line": 1347,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6fe2c8b4db30895cfc240e96d49119a8fb9997c6074e294ba62352a7f9adba72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2d6a1f083331103d881627badaeb890d0464079225b81df5c37ef1353fe17af",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6fe2c8b4db30895cfc240e96d49119a8fb9997c6074e294ba62352a7f9adba72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ff9140c-452f-1601-0fe2-187a4a315d4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1347–1368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem rotateRight_nil : ([] : List α).rotateRight n = [] := rfl

/-! ## Pairwise, Nodup -/

section Pairwise

variable (R : α → α → Prop)

/--
Each element of a list is related to all later elements of the list by `R`.

`Pairwise R l` means that all the elements of `l` with earlier indexes are `R`-related to all the
elements with later indexes.

For example, `Pairwise (· ≠ ·) l` asserts that `l` has no duplicates, and `Pairwise (· < ·) l`
asserts that `l` is (strictly) sorted.

Examples:
 * `Pairwise (· < ·) [1, 2, 3] ↔ (1 < 2 ∧ 1 < 3) ∧ 2 < 3`
 * `Pairwise (· = ·) [1, 2, 3] = False`
 * `Pairwise (· ≠ ·) [1, 2, 3] = True`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6fe2c8b4db30895cfc240e96d49119a8fb9997c6074e294ba62352a7f9adba72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6fe2c8b4db30895cfc240e96d49119a8fb9997c6074e294ba62352a7f9adba72.lean#L1347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a45b3110afdf9a53be21f7051742b2f364d8dd49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
