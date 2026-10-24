# rankOne_square_insert_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2269048-09f6-ac03-f34c-38cf37922f7d",
  "kind": "theorem",
  "lexical_name": "rankOne_square_insert_two",
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
  "slug": "rankone-square-insert-two--85fe0ee0cc10b4de88c27b8d",
  "source": {
    "blob": "228aa727efa6ffe81c871f224bdc803155c9aaae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 49,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85fe0ee0cc10b4de88c27b8d4aa5e9fc31b5586abe2e81c051b56a8d46891779",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2269048-09f6-ac03-f34c-38cf37922f7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rankOne_square_insert_two (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) :
    rectangularContribution (insert 2 P) g T T
      (fun q ↦ sourceRankOneCoefficient A / (q : ℝ)) =
        rectangularContribution P g T T
          (fun q ↦ sourceRankOneCoefficient A / (q : ℝ)) -
        (if Nat.Coprime g 2 then 1 else 0) *
          rectangularContribution P g (T / 2) T
            (fun q ↦ sourceRankOneCoefficient A / (q : ℝ)) := by
  rw [squareContribution_insert P 2 g T hP Nat.prime_two h2P,
    rectangular_rankOne_dilate_two]
  ring

/-- The finite missing half-rectangle is an explicit boundary sum, not zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228aa727efa6ffe81c871f224bdc803155c9aaae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
