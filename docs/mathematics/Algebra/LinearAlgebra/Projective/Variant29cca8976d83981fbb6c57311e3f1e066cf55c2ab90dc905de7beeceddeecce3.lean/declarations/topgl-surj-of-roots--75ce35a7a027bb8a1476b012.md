# toPGL_surj_of_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6210e72122ac0dc223666ef218461098ba595469",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfd3b70a-ea16-aeb9-0e9f-04d313632e27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:616e1c13-a3e5-0741-406f-58a43169e341",
  "kind": "lemma",
  "lexical_name": "toPGL_surj_of_roots",
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
  "slug": "topgl-surj-of-roots--75ce35a7a027bb8a1476b012",
  "source": {
    "blob": "6210e72122ac0dc223666ef218461098ba595469",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75ce35a7a027bb8a1476b01256946f691c3ec457c6a127c575a8164ea34a2e85",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:616e1c13-a3e5-0741-406f-58a43169e341`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toPGL_surj_of_roots
    (hR : ∀ r : Rˣ, ∃ k : Rˣ, k ^ Fintype.card n = r) :
    Function.Surjective (ProjectiveSpecialLinearGroup.toPGL (n := n) (R := R)) := fun g ↦ by
  induction g using Matrix.ProjGenLinGroup.induction_on with | mk g =>
  obtain ⟨r, hr⟩ : ∃ r : Rˣ, r ^ Fintype.card n * g.det = 1 := by
    obtain ⟨r, hr⟩ := hR g.det⁻¹
    exact ⟨r, by simpa [mul_eq_one_iff_eq_inv] using hr⟩
  simp only [Units.ext_iff, Units.val_mul, Units.val_pow_eq_pow_val,
    GeneralLinearGroup.val_det_apply, ← Matrix.det_smul g.1 r.1, Units.val_one] at hr
  use QuotientGroup.mk ⟨r.1 • g.1, hr⟩
  simp only [ProjectiveSpecialLinearGroup.toPGL_mk, mk_eq_mk_iff]
  refine ⟨r⁻¹, Units.ext ?_⟩
  simp only [Units.val_mul, coe_GL_coe_matrix, GeneralLinearGroup.coe_scalar]
  simp [← Matrix.mul_smul, ← Matrix.diagonal_smul, Pi.smul_def, smul_eq_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variant29cca8976d83981fbb6c57311e3f1e066cf55c2ab90dc905de7beeceddeecce3.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6210e72122ac0dc223666ef218461098ba595469` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
