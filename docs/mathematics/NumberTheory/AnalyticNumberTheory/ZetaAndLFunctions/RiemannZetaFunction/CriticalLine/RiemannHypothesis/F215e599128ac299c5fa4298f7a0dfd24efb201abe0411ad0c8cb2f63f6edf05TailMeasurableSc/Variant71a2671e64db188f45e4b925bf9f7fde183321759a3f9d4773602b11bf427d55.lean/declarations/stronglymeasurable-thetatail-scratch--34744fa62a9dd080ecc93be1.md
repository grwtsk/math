# stronglyMeasurable_thetaTail_scratch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:711acb7b-406a-b569-4146-31c0e5fb14b0",
  "kind": "theorem",
  "lexical_name": "stronglyMeasurable_thetaTail_scratch",
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
  "slug": "stronglymeasurable-thetatail-scratch--34744fa62a9dd080ecc93be1",
  "source": {
    "blob": "74333a51dfc5998a5fd49c1c82016c69772f212a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 16,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05TailMeasurableSc/Variant71a2671e64db188f45e4b925bf9f7fde183321759a3f9d4773602b11bf427d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34744fa62a9dd080ecc93be1a9fc3504cfbfae30ef22f4f407b5edf652816c25",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05TailMeasurableSc/Variant71a2671e64db188f45e4b925bf9f7fde183321759a3f9d4773602b11bf427d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:711acb7b-406a-b569-4146-31c0e5fb14b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stronglyMeasurable_thetaTail_scratch (q : ℕ) : StronglyMeasurable (thetaTail q) := by
  cases q with
  | zero => exact continuous_thetaPhi.stronglyMeasurable
  | succ q =>
    let F : ℝ × ℝ → ℝ := fun p =>
      thetaPhi p.2 * (p.2 - p.1) ^ q / (q.factorial : ℝ)
    have hF : StronglyMeasurable F :=
      (((continuous_thetaPhi.comp continuous_snd).mul
        ((continuous_snd.sub continuous_fst).pow q)).div_const _).stronglyMeasurable
    have hS : MeasurableSet {p : ℝ × ℝ | p.1 ≤ p.2} :=
      measurableSet_le measurable_fst measurable_snd
    have hi := (hF.indicator hS).integral_prod_right' (ν := volume)
    have he (t : ℝ) :
        (fun u => ({p : ℝ × ℝ | p.1 ≤ p.2}.indicator F) (t, u)) =
          (Ici t).indicator (fun u => thetaPhi u * (u - t) ^ q / (q.factorial : ℝ)) := rfl
    simpa only [he, integral_indicator measurableSet_Ici, thetaTail] using hi

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05TailMeasurableSc/Variant71a2671e64db188f45e4b925bf9f7fde183321759a3f9d4773602b11bf427d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05TailMeasurableSc/Variant71a2671e64db188f45e4b925bf9f7fde183321759a3f9d4773602b11bf427d55.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74333a51dfc5998a5fd49c1c82016c69772f212a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
