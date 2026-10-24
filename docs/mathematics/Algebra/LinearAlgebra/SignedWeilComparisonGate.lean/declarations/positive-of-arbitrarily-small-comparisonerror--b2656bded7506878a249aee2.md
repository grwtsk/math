# positive_of_arbitrarily_small_comparisonError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f81cabc4b5c9a7fc60c3a9a742588dc6ac0399f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/LinearAlgebra/SignedWeilComparisonGate.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29089095-0e4f-aa78-95fa-c6879516c878",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db4bab0d-41d9-c23c-578c-d8153c51089a",
  "kind": "theorem",
  "lexical_name": "positive_of_arbitrarily_small_comparisonError",
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
  "slug": "positive-of-arbitrarily-small-comparisonerror--b2656bded7506878a249aee2",
  "source": {
    "blob": "6f81cabc4b5c9a7fc60c3a9a742588dc6ac0399f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 60,
    "path": "GRWTSK/LinearAlgebra/SignedWeilComparisonGate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2656bded7506878a249aee2716fdebc3ff402ca92419bb0c2046b565f7c6044",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SignedWeilComparisonGate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db4bab0d-41d9-c23c-578c-d8153c51089a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_of_arbitrarily_small_comparisonError
    (q : X → ℝ) (x : X)
    (hsmall : ∀ eps : ℝ, 0 < eps →
      ∃ (y : ι → ℝ),
        |q x - positiveEnergy y| ≤ eps) :
    0 ≤ q x := by
  by_contra hneg
  have hq : q x < 0 := lt_of_not_ge hneg
  let eps : ℝ := -(q x) / 2
  have heps : 0 < eps := by dsimp [eps]; linarith
  obtain ⟨y, hbound⟩ := hsmall eps heps
  have hp := positiveEnergy_nonneg y
  have hl := (abs_le.mp hbound).1
  dsimp [eps] at hl
  linarith

/-- Exact hostile control: nonnegative Hodge/Gram energy need not mean that
the signed source consumer has nonnegative orientation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/SignedWeilComparisonGate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/SignedWeilComparisonGate.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f81cabc4b5c9a7fc60c3a9a742588dc6ac0399f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
