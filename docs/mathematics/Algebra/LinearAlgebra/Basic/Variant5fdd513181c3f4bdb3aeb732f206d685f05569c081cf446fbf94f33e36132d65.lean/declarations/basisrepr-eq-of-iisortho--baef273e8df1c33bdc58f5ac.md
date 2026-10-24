# basisRepr_eq_of_iIsOrtho

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e9b3dcac3f8ec67e76b7bcc5bc844be648147cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fdd513181c3f4bdb3aeb732f206d685f05569c081cf446fbf94f33e36132d65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:806f90db-657a-2ba6-d771-c54106250094",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f6b5d05-f7fb-520b-7c6d-2d574410e5c1",
  "kind": "theorem",
  "lexical_name": "basisRepr_eq_of_iIsOrtho",
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
  "slug": "basisrepr-eq-of-iisortho--baef273e8df1c33bdc58f5ac",
  "source": {
    "blob": "1e9b3dcac3f8ec67e76b7bcc5bc844be648147cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1209,
    "line": 1193,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5fdd513181c3f4bdb3aeb732f206d685f05569c081cf446fbf94f33e36132d65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baef273e8df1c33bdc58f5ac8000c59b6bcb7f3c4dff0f08a429f9fa44cdee44",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5fdd513181c3f4bdb3aeb732f206d685f05569c081cf446fbf94f33e36132d65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f6b5d05-f7fb-520b-7c6d-2d574410e5c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1193–1209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basisRepr_eq_of_iIsOrtho {R₁ M} [CommRing R₁] [AddCommGroup M] [Module R₁ M]
    [Invertible (2 : R₁)] (Q : QuadraticForm R₁ M) (v : Basis ι R₁ M)
    (hv₂ : (associated (R₁ := R₁) Q).iIsOrtho v) :
    Q.basisRepr v = weightedSumSquares _ fun i => Q (v i) := by
  ext w
  rw [basisRepr_apply, ← @associated_eq_self_apply R₁, sum_left, weightedSumSquares_apply]
  refine' sum_congr rfl fun j hj => _
  rw [← @associated_eq_self_apply R₁, sum_right, sum_eq_single_of_mem j hj]
  · rw [smul_left, smul_right, smul_eq_mul]
    ring
  · intro i _ hij
    rw [smul_left, smul_right, show associatedHom R₁ Q (v j) (v i) = 0 from hv₂ hij.symm,
      mul_zero, mul_zero]
set_option linter.uppercaseLean3 false in
#align quadratic_form.basis_repr_eq_of_is_Ortho QuadraticForm.basisRepr_eq_of_iIsOrtho

end QuadraticForm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5fdd513181c3f4bdb3aeb732f206d685f05569c081cf446fbf94f33e36132d65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5fdd513181c3f4bdb3aeb732f206d685f05569c081cf446fbf94f33e36132d65.lean#L1193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e9b3dcac3f8ec67e76b7bcc5bc844be648147cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
