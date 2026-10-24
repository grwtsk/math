# AffineIndependent.eq_of_sum_eq_sum_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d71a25b9-66e7-c2a7-2738-f1c91b08a7c3",
  "kind": "lemma",
  "lexical_name": "AffineIndependent.eq_of_sum_eq_sum_subtype",
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
  "slug": "affineindependent-eq-of-sum-eq-sum-subtype--78be8b6895d5c54b6fb80f69",
  "source": {
    "blob": "12f84f9534fc3cd7c0373d25a1afd855e06167cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 505,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variantf2ecc03f9f2281be83ad9ee11a1a86446be67dcd74c1e860f995de811a553880.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78be8b6895d5c54b6fb80f69b18a47da09b4768798814ea83ba29bcef1e8990a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variantf2ecc03f9f2281be83ad9ee11a1a86446be67dcd74c1e860f995de811a553880.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d71a25b9-66e7-c2a7-2738-f1c91b08a7c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AffineIndependent.eq_of_sum_eq_sum_subtype {s : Finset V}
    (hp : AffineIndependent k ((↑) : s → V)) {w₁ w₂ : V → k} (hw : ∑ i ∈ s, w₁ i = ∑ i ∈ s, w₂ i)
    (hwp : ∑ i ∈ s, w₁ i • i = ∑ i ∈ s, w₂ i • i) : ∀ i ∈ s, w₁ i = w₂ i := by
  refine fun i hi => sub_eq_zero.1 (hp.eq_zero_of_sum_eq_zero_subtype (w := w₁ - w₂) ?_ ?_ _ hi) <;>
    simpa [sub_mul, sub_smul, sub_eq_zero]

/-- Given an affinely independent family of points, a weighted subtraction lies in the
`vectorSpan` of two points given as affine combinations if and only if it is a weighted
subtraction with weights a multiple of the difference between the weights of the two points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variantf2ecc03f9f2281be83ad9ee11a1a86446be67dcd74c1e860f995de811a553880.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variantf2ecc03f9f2281be83ad9ee11a1a86446be67dcd74c1e860f995de811a553880.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12f84f9534fc3cd7c0373d25a1afd855e06167cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
