# signedJetDet_five_negative_of_boxes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7ef4314-f6e3-f483-80d2-34f32a96880e",
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
  "slug": "signedjetdet-five-negative-of-boxes--d5839ddad2542bb7c88ede90",
  "source": {
    "blob": "8c07f6e2b6a959430ada7aec7e43ead1e9a63c42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 162,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianted1530df9684b41676fa2403dbda7ad91eb6f83c17a2cc64550f5600552ada0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5839ddad2542bb7c88ede902cb0cbfc39f87ff0ac4d197df9a49bf329409497",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianted1530df9684b41676fa2403dbda7ad91eb6f83c17a2cc64550f5600552ada0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7ef4314-f6e3-f483-80d2-34f32a96880e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–177.

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

/-- The full coarse numerical margin survives for every jet in the box. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianted1530df9684b41676fa2403dbda7ad91eb6f83c17a2cc64550f5600552ada0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianted1530df9684b41676fa2403dbda7ad91eb6f83c17a2cc64550f5600552ada0f.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c07f6e2b6a959430ada7aec7e43ead1e9a63c42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
