# overlapPolynomial2_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:647fe35c-bd6d-ad7f-77fb-27463636ef17",
  "kind": "theorem",
  "lexical_name": "overlapPolynomial2_upper",
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
  "slug": "overlappolynomial2-upper--75690c07c37ed81957f4b4f7",
  "source": {
    "blob": "35a35f0813aa3b40f26129f47b9c198d83c48881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 93,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant403bff8cc5670d2a67603dbeb7677d04d8f168e049bd9a09205636c117f71246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75690c07c37ed81957f4b4f76253426cd027d19a950545fd2bb8c9892ea77cfb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant403bff8cc5670d2a67603dbeb7677d04d8f168e049bd9a09205636c117f71246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:647fe35c-bd6d-ad7f-77fb-27463636ef17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlapPolynomial2_upper {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    overlapPolynomial2 u≤(1024/35:ℝ)*(2-u)^7 := by
  have hp := overlapFactor1_nonneg hu.1
  have hsub : 0≤(2-u)*(overlapFactor1 u+u*overlapFactor1Prime u) :=
    mul_nonneg (by linarith [hu.2]) (add_nonneg hp.1 (mul_nonneg hu.1 hp.2))
  have hx : u*overlapFactor1 u≤2*164736 :=
    mul_le_mul hu.2 (overlapFactor1_bound hu) hp.1 (by norm_num)
  have hi : 8*u*overlapFactor1 u-
      (2-u)*(overlapFactor1 u+u*overlapFactor1Prime u)≤16*164736 := by
    nlinarith
  have hm := mul_le_mul_of_nonneg_left hi
    (pow_nonneg (by linarith [hu.2] : 0≤2-u) 7)
  have hq := div_le_div_of_nonneg_right hm (by norm_num : (0:ℝ)≤90090)
  rw [overlapPolynomial2_factor]
  calc
    _ ≤ (2-u)^7*(16*164736)/90090 := hq
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant403bff8cc5670d2a67603dbeb7677d04d8f168e049bd9a09205636c117f71246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant403bff8cc5670d2a67603dbeb7677d04d8f168e049bd9a09205636c117f71246.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35a35f0813aa3b40f26129f47b9c198d83c48881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
