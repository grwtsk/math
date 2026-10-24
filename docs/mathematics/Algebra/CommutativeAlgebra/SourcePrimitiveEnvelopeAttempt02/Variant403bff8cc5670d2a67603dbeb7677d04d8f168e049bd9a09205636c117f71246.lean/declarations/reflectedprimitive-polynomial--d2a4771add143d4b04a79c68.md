# reflectedPrimitive_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a16a649-838e-f552-4cf5-aa6acb87011f",
  "kind": "theorem",
  "lexical_name": "reflectedPrimitive_polynomial",
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
  "slug": "reflectedprimitive-polynomial--d2a4771add143d4b04a79c68",
  "source": {
    "blob": "35a35f0813aa3b40f26129f47b9c198d83c48881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 127,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant403bff8cc5670d2a67603dbeb7677d04d8f168e049bd9a09205636c117f71246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2a4771add143d4b04a79c682349127d1c765054fa69aab7895bacb25469837f",
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

Occurrence: `result:1a16a649-838e-f552-4cf5-aa6acb87011f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedPrimitive_polynomial (A y : ℝ) :
    reflectedPrimitive A y=Real.exp (-y/2)/sourceNormalization A*
      (A^7*overlapPolynomial2 ((2*A-y)/A)-A^8*overlapPolynomial1 ((2*A-y)/A)+
        A^9*overlapPolynomial0 ((2*A-y)/A)/4) := by
  unfold reflectedPrimitive physicalScale positivePrimitive
  have he : Real.exp (-A)*Real.exp ((2*A-y)/2)=Real.exp (-y/2) := by
    rw [←Real.exp_add]
    congr 1
    ring
  by_cases hA : A=0
  · subst A
    norm_num
  · have hp : A^9*(overlapPolynomial2 ((2*A-y)/A)/A^2-
        overlapPolynomial1 ((2*A-y)/A)/A+overlapPolynomial0 ((2*A-y)/A)/4)=
        A^7*overlapPolynomial2 ((2*A-y)/A)-A^8*overlapPolynomial1 ((2*A-y)/A)+
          A^9*overlapPolynomial0 ((2*A-y)/A)/4 := by
      field_simp
      ring
    calc
      _ = (Real.exp (-A)*Real.exp ((2*A-y)/2))/sourceNormalization A*
        (A^9*(overlapPolynomial2 ((2*A-y)/A)/A^2-
          overlapPolynomial1 ((2*A-y)/A)/A+overlapPolynomial0 ((2*A-y)/A)/4)) := by ring
      _ = _ := by rw [he,hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant403bff8cc5670d2a67603dbeb7677d04d8f168e049bd9a09205636c117f71246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant403bff8cc5670d2a67603dbeb7677d04d8f168e049bd9a09205636c117f71246.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35a35f0813aa3b40f26129f47b9c198d83c48881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
