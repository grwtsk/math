# convergents'_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38b65994d6484a3d533198354aaad6574b7ae99e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c58035b-985f-3e27-738d-849d541e1a7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c97e3df-f5a8-5303-6745-c14dde55a6bc",
  "kind": "theorem",
  "lexical_name": "convergents'_succ",
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
  "slug": "convergents-succ--27d2b68dc4f93529fabc917a",
  "source": {
    "blob": "38b65994d6484a3d533198354aaad6574b7ae99e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 339,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27d2b68dc4f93529fabc917a6b5c609390e6eca01b5ab8f7a96b72a0a2f1d4d4",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c97e3df-f5a8-5303-6745-c14dde55a6bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convergents'_succ :
    (of v).convergents' (n + 1) = ⌊v⌋ + 1 / (of (fract v)⁻¹).convergents' n := by
  cases' eq_or_ne (fract v) 0 with h h
  · obtain ⟨a, rfl⟩ : ∃ a : ℤ, v = a := ⟨⌊v⌋, eq_of_sub_eq_zero h⟩
    rw [convergents'_of_int, fract_intCast, inv_zero, ← cast_zero, convergents'_of_int, cast_zero,
      div_zero, add_zero, floor_intCast]
  · rw [convergents', of_h_eq_floor, add_right_inj, convergents'Aux_succ_some (of_s_head h)]
    exact congr_arg ((· / ·) 1) (by rw [convergents', of_h_eq_floor, add_right_inj, of_s_tail])
#align generalized_continued_fraction.convergents'_succ GeneralizedContinuedFraction.convergents'_succ

end Values

end sequence

end GeneralizedContinuedFraction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b65994d6484a3d533198354aaad6574b7ae99e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
