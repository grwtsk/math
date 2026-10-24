# eigenvalueCount_le_of_quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0785cf7d-600d-27a5-447b-680509acba23",
  "kind": "theorem",
  "lexical_name": "eigenvalueCount_le_of_quadratic",
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
  "slug": "eigenvaluecount-le-of-quadratic--38b79472d226642b2a4aacda",
  "source": {
    "blob": "88de4aff802aae87fbf78dd2b6f080e2ac222df8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 142,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38b79472d226642b2a4aacdaa17e03c041efdf4f662d8cc422be72ae03226c85",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0785cf7d-600d-27a5-447b-680509acba23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eigenvalueCount_le_of_quadratic {A B : Matrix ι ι ℝ}
    (hA : A.IsHermitian) (hB : B.IsHermitian) (EA EB : ℝ)
    (horder : ∀ v : EuclideanSpace ℝ ι,
      ⟪v, A.toEuclideanLin v⟫ ≤ ⟪v, B.toEuclideanLin v⟫ + (EA-EB)*‖v‖^2) :
    eigenvalueCount hB EB ≤ eigenvalueCount hA EA := by
  let f := (cutAnalysis hA.eigenvectorBasis (eigenvalueCut hA EA)).comp
    (cutSynthesis hB.eigenvectorBasis (eigenvalueCut hB EB))
  have hf : Function.Injective f := by
    apply (LinearMap.ker_eq_bot).mp
    rw [Submodule.eq_bot_iff]
    intro x hx
    have hx0 : f x = 0 := hx
    let v := cutSynthesis hB.eigenvectorBasis (eigenvalueCut hB EB) x
    by_contra hxn
    have hv0 : v ≠ 0 := by
      intro hz
      apply hxn
      apply cutSynthesis_injective hB.eigenvectorBasis (eigenvalueCut hB EB)
      simpa [v] using hz
    have hlow : ⟪v, B.toEuclideanLin v⟫ ≤ EB * ‖v‖^2 :=
      low_quadratic hB EB v (by intro i hi; simp [v, cutSynthesis_repr, hi])
    have hhigh : EA * ‖v‖^2 < ⟪v, A.toEuclideanLin v⟫ :=
      high_quadratic hA EA v hv0 (by
        intro i hi
        exact congrFun hx0 ⟨i,hi⟩)
    have hcompare := horder v
    nlinarith
  have hd := LinearMap.finrank_le_finrank_of_injective hf
  simpa [eigenvalueCount, Module.finrank_pi, Fintype.card_coe] using hd

/-- Positive semidefinite matrix difference, with no energy shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88de4aff802aae87fbf78dd2b6f080e2ac222df8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
