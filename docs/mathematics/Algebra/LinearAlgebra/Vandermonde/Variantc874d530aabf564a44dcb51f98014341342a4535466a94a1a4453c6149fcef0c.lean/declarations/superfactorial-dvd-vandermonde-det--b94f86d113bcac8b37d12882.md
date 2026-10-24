# superFactorial_dvd_vandermonde_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83e37881-f4ad-3cc6-f535-c16e417adccf",
  "kind": "lemma",
  "lexical_name": "superFactorial_dvd_vandermonde_det",
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
  "slug": "superfactorial-dvd-vandermonde-det--b94f86d113bcac8b37d12882",
  "source": {
    "blob": "a62ae70c9359ee5c4653fbc3f1818de59817cfaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 319,
    "path": "GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b94f86d113bcac8b37d12882ff39f62d08afab631ff42331357cf5ce2d011bb4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83e37881-f4ad-3cc6-f535-c16e417adccf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma superFactorial_dvd_vandermonde_det {n : ℕ} (v : Fin (n + 1) → ℤ) :
    ↑n.superFactorial ∣ (vandermonde v).det := by
  let m := inf' univ ⟨0, mem_univ _⟩ v
  let w' := fun i ↦ (v i - m).toNat
  have hw' : ∀ i, (w' i : ℤ) = v i - m := fun i ↦ Int.toNat_sub_of_le (inf'_le _ (mem_univ _))
  have h := det_eval_matrixOfPolynomials_eq_det_vandermonde (fun i ↦ ↑(w' i))
      (fun i => descPochhammer ℤ i)
      (fun i => descPochhammer_natDegree ℤ i)
      (fun i => monic_descPochhammer ℤ i)
  conv_lhs at h => simp only [hw', det_vandermonde_sub]
  use (of (fun (i j : Fin (n + 1)) => (Nat.choose (w' i) (j : ℕ) : ℤ))).det
  simp [h, of_eval_descPochhammer_eq_mul_of_choose w', Fin.prod_univ_eq_prod_range]

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a62ae70c9359ee5c4653fbc3f1818de59817cfaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
