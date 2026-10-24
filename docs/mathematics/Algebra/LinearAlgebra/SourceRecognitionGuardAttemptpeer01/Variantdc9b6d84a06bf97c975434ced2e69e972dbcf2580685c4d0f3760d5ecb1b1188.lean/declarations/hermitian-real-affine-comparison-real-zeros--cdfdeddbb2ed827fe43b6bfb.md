# hermitian_real_affine_comparison_real_zeros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f55a9eef-445c-1876-18f4-4e299f9d3059",
  "kind": "theorem",
  "lexical_name": "hermitian_real_affine_comparison_real_zeros",
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
  "slug": "hermitian-real-affine-comparison-real-zeros--cdfdeddbb2ed827fe43b6bfb",
  "source": {
    "blob": "17dd242682f6c8de2c58d96c3ff6a026cafff202",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 93,
    "path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variantdc9b6d84a06bf97c975434ced2e69e972dbcf2580685c4d0f3760d5ecb1b1188.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdfdeddbb2ed827fe43b6bfb59e28d60771deec768af3973a539e70bec56b9fe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variantdc9b6d84a06bf97c975434ced2e69e972dbcf2580685c4d0f3760d5ecb1b1188.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f55a9eef-445c-1876-18f4-4e299f9d3059`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hermitian_real_affine_comparison_real_zeros {n : Type*} [Fintype n] [DecidableEq n]
    {A : Matrix n n ℂ} (hA : A.IsHermitian) {source factor : ℂ → ℂ}
    {a b : ℝ} (ha : a ≠ 0) (hfactor : ∀ z, factor z ≠ 0)
    (hcompare : ∀ z, source z = factor z * A.charpoly.eval ((a : ℂ) * z + (b : ℂ))) :
    ∀ z, source z = 0 → z.im = 0 := by
  have hrec : Recognition (fun z => A.charpoly.eval z) source
      (fun z => (a : ℂ) * z + (b : ℂ)) :=
    recognition_of_exact_comparison (boundary := fun z => A.charpoly.eval z)
      (map := fun z => (a : ℂ) * z + (b : ℂ)) hfactor hcompare
      (real_affine_reflection source (b := b) ha)
  exact recognition_transfers_real_zeros hrec (fun z hz => hermitian_charpoly_zero_real hA hz)

/-- A genuine finite Hermitian operator, with actual characteristic polynomial X. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variantdc9b6d84a06bf97c975434ced2e69e972dbcf2580685c4d0f3760d5ecb1b1188.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variantdc9b6d84a06bf97c975434ced2e69e972dbcf2580685c4d0f3760d5ecb1b1188.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17dd242682f6c8de2c58d96c3ff6a026cafff202` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
