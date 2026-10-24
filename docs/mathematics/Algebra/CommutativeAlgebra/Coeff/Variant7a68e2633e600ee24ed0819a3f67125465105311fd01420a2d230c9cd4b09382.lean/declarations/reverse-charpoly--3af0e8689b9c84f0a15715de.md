# reverse_charpoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77dbe2a2d1114175ca441a7dbbf8c154499e1237",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a68e2633e600ee24ed0819a3f67125465105311fd01420a2d230c9cd4b09382.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5afc325a-98af-cc18-b913-37e200e93fb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99b24449-a843-574d-6a05-ec3f8ff4976e",
  "kind": "lemma",
  "lexical_name": "reverse_charpoly",
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
  "slug": "reverse-charpoly--3af0e8689b9c84f0a15715de",
  "source": {
    "blob": "77dbe2a2d1114175ca441a7dbbf8c154499e1237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 302,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant7a68e2633e600ee24ed0819a3f67125465105311fd01420a2d230c9cd4b09382.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3af0e8689b9c84f0a15715dea65ba14759600395b0b9d29a40a0f997d1d3a7df",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Coeff/Variant7a68e2633e600ee24ed0819a3f67125465105311fd01420a2d230c9cd4b09382.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99b24449-a843-574d-6a05-ec3f8ff4976e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reverse_charpoly (M : Matrix n n R) :
    M.charpoly.reverse = M.charpolyRev := by
  nontriviality R
  let t : R[T;T⁻¹] := T 1
  let t_inv : R[T;T⁻¹] := T (-1)
  let p : R[T;T⁻¹] := det (scalar n t - M.map LaurentPolynomial.C)
  let q : R[T;T⁻¹] := det (1 - scalar n t * M.map LaurentPolynomial.C)
  have ht : t_inv * t = 1 := by rw [← T_add, neg_add_cancel, T_zero]
  have hp : toLaurentAlg M.charpoly = p := by
    simp [p, t, charpoly, charmatrix, AlgHom.map_det, map_sub, map_smul']
  have hq : toLaurentAlg M.charpolyRev = q := by
    simp [q, t, charpolyRev, AlgHom.map_det, map_sub, map_smul', smul_eq_diagonal_mul]
  suffices t_inv ^ Fintype.card n * p = invert q by
    apply toLaurent_injective
    rwa [toLaurent_reverse, ← coe_toLaurentAlg, hp, hq, ← involutive_invert.injective.eq_iff,
      map_mul, involutive_invert p, charpoly_natDegree_eq_dim,
      ← mul_one (Fintype.card n : ℤ), ← T_pow, map_pow, invert_T, mul_comm]
  rw [← det_smul, smul_sub, scalar_apply, ← diagonal_smul, Pi.smul_def, smul_eq_mul, ht,
    diagonal_one, invert.map_det]
  simp [t_inv, map_sub, map_one, map_mul, t, map_smul', smul_eq_diagonal_mul]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Coeff/Variant7a68e2633e600ee24ed0819a3f67125465105311fd01420a2d230c9cd4b09382.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant7a68e2633e600ee24ed0819a3f67125465105311fd01420a2d230c9cd4b09382.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77dbe2a2d1114175ca441a7dbbf8c154499e1237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
