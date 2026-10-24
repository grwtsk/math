# sum_orderedMinor_sq_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd27e1e9-f49f-fe91-7f97-746b9b2690b0",
  "kind": "theorem",
  "lexical_name": "sum_orderedMinor_sq_eq_one",
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
  "slug": "sum-orderedminor-sq-eq-one--1c469ae6f7057c3e135b2562",
  "source": {
    "blob": "8352748bd2c0f99dbb9a5d95ebb59b0daa8cc180",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c469ae6f7057c3e135b25620e0539ccd86b445bb15a54330b3fc0fe1924236f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd27e1e9-f49f-fe91-7f97-746b9b2690b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_orderedMinor_sq_eq_one (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) :
    (∑ I : Fin k ↪o Fin n, orderedMinor A I ^ 2) = 1 := by
  have h := Toeplitz.cauchyBinet_all_functions A A.transpose
  have ht (c : Fin k → Fin n) :
      A.transpose.submatrix c id = (columnSubmatrix A c).transpose := rfl
  simp only [ht, Matrix.det_transpose] at h
  change (k.factorial : ℝ) * Matrix.det (A * A.transpose) =
    ∑ c : Fin k → Fin n, columnMinor A c * columnMinor A c at h
  simp only [← pow_two] at h
  rw [hA, Matrix.det_one, sum_columnMinor_sq] at h
  exact (mul_left_cancel₀ (by positivity : (k.factorial : ℝ) ≠ 0) h).symm

/-- At least one ordered pivot has squared determinant at least `1 / choose n k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8352748bd2c0f99dbb9a5d95ebb59b0daa8cc180` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
