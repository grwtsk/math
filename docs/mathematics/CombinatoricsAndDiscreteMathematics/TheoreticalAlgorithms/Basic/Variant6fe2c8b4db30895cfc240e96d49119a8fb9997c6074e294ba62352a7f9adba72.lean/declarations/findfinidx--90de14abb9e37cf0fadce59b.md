# findFinIdx?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4fc2e2eedbb29ef8dec33ab6655d2b5731b14b811a110096c1595c5d50d3b1f",
  "kind": "def",
  "lexical_name": "findFinIdx?",
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
  "slug": "findfinidx--90de14abb9e37cf0fadce59b",
  "source": {
    "blob": "a45b3110afdf9a53be21f7051742b2f364d8dd49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1790,
    "line": 1765,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6fe2c8b4db30895cfc240e96d49119a8fb9997c6074e294ba62352a7f9adba72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90de14abb9e37cf0fadce59b3e1380d5b24cc69b5f05e8866f6089512ece60a6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6fe2c8b4db30895cfc240e96d49119a8fb9997c6074e294ba62352a7f9adba72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4fc2e2eedbb29ef8dec33ab6655d2b5731b14b811a110096c1595c5d50d3b1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1765–1790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def findFinIdx? (p : α → Bool) (l : List α) : Option (Fin l.length) :=
  go l 0 (by simp)
where
  @[specialize]
  go : (l' : List α) → (i : Nat) → (h : l'.length + i = l.length) → Option (Fin l.length)
  | [], _, _ => none
  | a :: l, i, h =>
    if p a then
      some ⟨i, by
        simp only [Nat.add_comm _ i] at h
        exact Nat.lt_of_add_right_lt (Nat.lt_of_succ_le (Nat.le_of_eq h))⟩
    else
      go l (i + 1) (by simp at h; simpa [← Nat.add_assoc, Nat.add_right_comm] using h)

/-! ### finIdxOf? -/

/--
Returns the index of the first element equal to `a`, or the length of the list if no element is
equal to `a`. The index is returned as a `Fin`, which guarantees that it is in bounds.

Examples:
 * `["carrot", "potato", "broccoli"].finIdxOf? "carrot" = some 0`
 * `["carrot", "potato", "broccoli"].finIdxOf? "broccoli" = some 2`
 * `["carrot", "potato", "broccoli"].finIdxOf? "tomato" = none`
 * `["carrot", "potato", "broccoli"].finIdxOf? "anything else" = none`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6fe2c8b4db30895cfc240e96d49119a8fb9997c6074e294ba62352a7f9adba72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6fe2c8b4db30895cfc240e96d49119a8fb9997c6074e294ba62352a7f9adba72.lean#L1765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a45b3110afdf9a53be21f7051742b2f364d8dd49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
