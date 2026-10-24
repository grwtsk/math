# completion_of_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fd3455fcf2b1ee05dca9dc59a2146cc58fe0d13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fff6c79-3e13-5721-5394-1757ea0dea0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6ee51ac-e2ad-f5b1-95d7-0db9c17682b9",
  "kind": "theorem",
  "lexical_name": "completion_of_squares",
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
  "slug": "completion-of-squares--f380f0d148f273b99e5c8442",
  "source": {
    "blob": "4fd3455fcf2b1ee05dca9dc59a2146cc58fe0d13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 30,
    "path": "GRWTSK/Algebra/LinearAlgebra/FeshbachHermitian/Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f380f0d148f273b99e5c8442d583a05d5420e29d1ed90f813986b34c014915e7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FeshbachHermitian/Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6ee51ac-e2ad-f5b1-95d7-0db9c17682b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completion_of_squares
    (A : Matrix m m α) (C : Matrix n m α) (B : Matrix n n α)
    [Invertible B] (hB : B.IsHermitian) (x : m → α) (y : n → α) :
    star (Sum.elim x y) ⬝ᵥ (Matrix.fromBlocks A Cᴴ C B).mulVec (Sum.elim x y) =
      star x ⬝ᵥ (Feshbach.schur A Cᴴ C B).mulVec x +
        star (y + (⅟B * C).mulVec x) ⬝ᵥ B.mulVec (y + (⅟B * C).mulVec x) := by
  simpa only [Feshbach.schur, Matrix.conjTranspose_conjTranspose, Matrix.invOf_eq_nonsing_inv,
    Matrix.dotProduct_mulVec, add_comm] using
    Matrix.schur_complement_eq₂₂ A Cᴴ x y hB

omit [Fintype m] in
/-- The full block packet is Hermitian exactly when its Schur center is
Hermitian, provided that the complementary block is Hermitian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FeshbachHermitian/Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FeshbachHermitian/Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fd3455fcf2b1ee05dca9dc59a2146cc58fe0d13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
