# erfRemainderBound_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "564fc6f68eb65213896dd1733137e74007027fd4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a162df36-e285-9a69-b737-5df7d02f8f7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fabf136-8d92-93d6-7e63-373b96bebca7",
  "kind": "theorem",
  "lexical_name": "erfRemainderBound_nonneg",
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
  "slug": "erfremainderbound-nonneg--1ca328bc8fcac6b938151119",
  "source": {
    "blob": "564fc6f68eb65213896dd1733137e74007027fd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 70,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Special/Variant574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ca328bc8fcac6b93815111983d645c5ecd80a5f2719ecd0b3ea97aa9d2d94cb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Special/Variant574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fabf136-8d92-93d6-7e63-373b96bebca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erfRemainderBound_nonneg (domain : IntervalRat) (n : ℕ) :
    0 ≤ erfRemainderBound domain n := by
  unfold erfRemainderBound
  simp only [erfCoeff_hi, erfCoeff_lo]
  apply add_nonneg
  · apply div_nonneg
    · apply pow_nonneg
      exact le_max_of_le_left (abs_nonneg _)
    · exact Nat.cast_nonneg _
  · apply mul_nonneg
    · norm_num
    · exact le_max_of_le_left (abs_nonneg _)

/-- Taylor model for erf z on domain J, centered at 0, degree n.
    erf(z) = (2/√π) ∫₀ᶻ e^{-t²} dt. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Special/Variant574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Special/Variant574dde0205730b7e062933488b56fa2d43aad3750e643d0028d55cd8dc1b8873.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `564fc6f68eb65213896dd1733137e74007027fd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
