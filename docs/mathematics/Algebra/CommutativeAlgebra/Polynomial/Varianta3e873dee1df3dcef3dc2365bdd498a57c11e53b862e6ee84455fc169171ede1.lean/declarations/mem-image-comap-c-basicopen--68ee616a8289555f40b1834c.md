# mem_image_comap_C_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:709ad87b-5c3a-b53a-1674-97092881abaa",
  "kind": "lemma",
  "lexical_name": "mem_image_comap_C_basicOpen",
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
  "slug": "mem-image-comap-c-basicopen--68ee616a8289555f40b1834c",
  "source": {
    "blob": "5e3902506c8b4d8e0756983d7e53a47bbf02e0a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 206,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Varianta3e873dee1df3dcef3dc2365bdd498a57c11e53b862e6ee84455fc169171ede1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68ee616a8289555f40b1834ccc217d7ae7f9503f51dcce069f193396ae454ffe",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Varianta3e873dee1df3dcef3dc2365bdd498a57c11e53b862e6ee84455fc169171ede1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:709ad87b-5c3a-b53a-1674-97092881abaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_image_comap_C_basicOpen (f : MvPolynomial σ R) (x : PrimeSpectrum R) :
    x ∈ comap (C (σ := σ)) '' basicOpen f ↔ ∃ i, f.coeff i ∉ x.asIdeal := by
  trans f.map (algebraMap R x.asIdeal.ResidueField) ≠ 0
  · refine (mem_image_comap_basicOpen _ _).trans (not_iff_not.mpr ?_)
    let e : x.asIdeal.ResidueField ⊗[R] MvPolynomial σ R ≃ₐ[x.asIdeal.ResidueField]
        MvPolynomial σ x.asIdeal.ResidueField := scalarRTensorAlgEquiv
    rw [← IsNilpotent.map_iff (Algebra.TensorProduct.comm ..).injective,
      ← IsNilpotent.map_iff e.injective, isNilpotent_iff_eq_zero]
    change (e.toAlgHom.toRingHom.comp (Algebra.TensorProduct.comm ..).toRingHom).comp
      (algebraMap _ _) f = 0 ↔ MvPolynomial.map _ f = 0
    congr!
    ext
    · simp [scalarRTensorAlgEquiv, e, Algebra.smul_def]
    · simp [e, scalarRTensorAlgEquiv, map, X, monomial]
  · simp [MvPolynomial.ext_iff, coeff_map]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Varianta3e873dee1df3dcef3dc2365bdd498a57c11e53b862e6ee84455fc169171ede1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Varianta3e873dee1df3dcef3dc2365bdd498a57c11e53b862e6ee84455fc169171ede1.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e3902506c8b4d8e0756983d7e53a47bbf02e0a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
