# signedJetDet_five_negative_of_boxes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:358a721e-2577-fb22-51d9-979d1ecd46c8",
  "kind": "theorem",
  "lexical_name": "signedJetDet_five_negative_of_boxes",
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
  "slug": "signedjetdet-five-negative-of-boxes--f457ba83caa0bb47fc9966fe",
  "source": {
    "blob": "f4aeb264d9c3f068dfbfe11d65b57f82e5b7948f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5269ab98fee8c8af8987202339261f47ba31be0eaded24a5ec0b20aca453013dThetaIntervalScr/Variantf4219332216873eb5ba85949c9cce7c50ac1f51fd47dbc855f7e727840b8d6e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f457ba83caa0bb47fc9966fe4839dbe39c44dd919b7c1205a134a2e5a5ecb5d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5269ab98fee8c8af8987202339261f47ba31be0eaded24a5ec0b20aca453013dThetaIntervalScr/Variantf4219332216873eb5ba85949c9cce7c50ac1f51fd47dbc855f7e727840b8d6e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:358a721e-2577-fb22-51d9-979d1ecd46c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedJetDet_five_negative_of_boxes (jet : ℕ → ℝ)
    (h : ∀ n : Fin 9, Contains (jetBox n.val) (2000000 * jet n.val)) :
    signedJetDet 5 jet < 0 := by
  have hdet : Matrix.det ((2000000 : ℝ) •
      (Matrix.of fun i j : Fin 5 => jet (i.val + j.val))) < 0 := by
    apply hankelBox_sound
    intro i j
    exact h ⟨i.val + j.val, by omega⟩
  rw [Matrix.det_smul] at hdet
  norm_num only [Fintype.card_fin] at hdet
  have hd : Matrix.det (Matrix.of fun i j : Fin 5 => jet (i.val + j.val)) < 0 := by
    nlinarith
  norm_num [signedJetDet]
  exact hd

end RankFiveInterval

/-- The initial value and successor derivative equations uniquely identify
an all-order source jet on the whole real line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5269ab98fee8c8af8987202339261f47ba31be0eaded24a5ec0b20aca453013dThetaIntervalScr/Variantf4219332216873eb5ba85949c9cce7c50ac1f51fd47dbc855f7e727840b8d6e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5269ab98fee8c8af8987202339261f47ba31be0eaded24a5ec0b20aca453013dThetaIntervalScr/Variantf4219332216873eb5ba85949c9cce7c50ac1f51fd47dbc855f7e727840b8d6e7.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4aeb264d9c3f068dfbfe11d65b57f82e5b7948f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
