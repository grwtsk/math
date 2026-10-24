# mul_polyOfInterest_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cd1b5e4cbcaf3d21227cac1440eeac231bc661c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6824edf-6b0a-29fe-86f1-cc296c56de68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad67cb38-b1dd-27a3-0bf1-57a9e2cc1cb6",
  "kind": "theorem",
  "lexical_name": "mul_polyOfInterest_aux1",
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
  "slug": "mul-polyofinterest-aux1--1f3de64f8779e6fcb31a64e1",
  "source": {
    "blob": "2cd1b5e4cbcaf3d21227cac1440eeac231bc661c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 125,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f3de64f8779e6fcb31a64e1c5a96b8825236b0eda5466abe06a6cec239132c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad67cb38-b1dd-27a3-0bf1-57a9e2cc1cb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_polyOfInterest_aux1 (n : ℕ) :
    ∑ i in range (n + 1), (p : 𝕄) ^ i * wittMul p i ^ p ^ (n - i) = wittPolyProd p n := by
  simp only [wittPolyProd]
  convert wittStructureInt_prop p (X (0 : Fin 2) * X 1) n using 1
  · simp only [wittPolynomial, wittMul]
    rw [AlgHom.map_sum]
    congr 1 with i
    congr 1
    have hsupp : (Finsupp.single i (p ^ (n - i))).support = {i} := by
      rw [Finsupp.support_eq_singleton]
      simp only [and_true_iff, Finsupp.single_eq_same, eq_self_iff_true, Ne.def]
      exact pow_ne_zero _ hp.out.ne_zero
    simp only [bind₁_monomial, hsupp, Int.cast_ofNat, prod_singleton, eq_intCast,
      Finsupp.single_eq_same, C_pow, mul_eq_mul_left_iff, true_or_iff, eq_self_iff_true,
      Int.cast_pow]
  · simp only [map_mul, bind₁_X_right]
#align witt_vector.mul_poly_of_interest_aux1 WittVector.mul_polyOfInterest_aux1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variantcfc63b1e1f5c01f798536dbb1fc4f0d560334ea189977afa831d1a0ebdf6525e.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cd1b5e4cbcaf3d21227cac1440eeac231bc661c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
