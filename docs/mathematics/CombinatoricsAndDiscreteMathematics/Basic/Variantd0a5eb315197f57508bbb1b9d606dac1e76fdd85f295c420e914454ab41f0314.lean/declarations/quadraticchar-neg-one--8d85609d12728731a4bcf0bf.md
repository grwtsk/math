# quadraticChar_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4574d7e5f25ab57e02030c01b069d85ad8646c01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0a5eb315197f57508bbb1b9d606dac1e76fdd85f295c420e914454ab41f0314.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a71a6298-b452-a56f-4655-d1fd2dd1ca37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8ca3f41-873b-5af1-fa98-445b23ea1cd9",
  "kind": "theorem",
  "lexical_name": "quadraticChar_neg_one",
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
  "slug": "quadraticchar-neg-one--8d85609d12728731a4bcf0bf",
  "source": {
    "blob": "4574d7e5f25ab57e02030c01b069d85ad8646c01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 258,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd0a5eb315197f57508bbb1b9d606dac1e76fdd85f295c420e914454ab41f0314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d85609d12728731a4bcf0bf4c818b30d911ac8fb758b104fd15dcea7637690d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd0a5eb315197f57508bbb1b9d606dac1e76fdd85f295c420e914454ab41f0314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8ca3f41-873b-5af1-fa98-445b23ea1cd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticChar_neg_one [DecidableEq F] (hF : ringChar F ≠ 2) :
    quadraticChar F (-1) = χ₄ (Fintype.card F) := by
  have h := quadraticChar_eq_pow_of_char_ne_two hF (neg_ne_zero.mpr one_ne_zero)
  rw [h, χ₄_eq_neg_one_pow (FiniteField.odd_card_of_char_ne_two hF)]
  generalize Fintype.card F / 2 = n
  rcases Nat.even_or_odd n with h₂ | h₂
  · simp only [Even.neg_one_pow h₂, ite_true]
  · simp only [Odd.neg_one_pow h₂, Ring.neg_one_ne_one_of_char_ne_two hF, ite_false]

/-- `-1` is a square in `F` iff `#F` is not congruent to `3` mod `4`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd0a5eb315197f57508bbb1b9d606dac1e76fdd85f295c420e914454ab41f0314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd0a5eb315197f57508bbb1b9d606dac1e76fdd85f295c420e914454ab41f0314.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4574d7e5f25ab57e02030c01b069d85ad8646c01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
