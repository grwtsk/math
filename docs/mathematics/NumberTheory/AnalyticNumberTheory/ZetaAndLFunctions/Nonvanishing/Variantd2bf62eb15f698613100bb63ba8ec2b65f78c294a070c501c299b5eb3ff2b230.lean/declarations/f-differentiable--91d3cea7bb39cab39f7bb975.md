# F_differentiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "789e0aae6e9378c8f5c8a7a07a905830e20b5433",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:411a6daf-ea2b-a367-c134-11e561f6667b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce8af521-481c-d941-8175-1d522dd34b75",
  "kind": "lemma",
  "lexical_name": "F_differentiable",
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
  "slug": "f-differentiable--91d3cea7bb39cab39f7bb975",
  "source": {
    "blob": "789e0aae6e9378c8f5c8a7a07a905830e20b5433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 167,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91d3cea7bb39cab39f7bb97585aef0449b6d0f680fab77450145c69ec8476056",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce8af521-481c-d941-8175-1d522dd34b75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma F_differentiable (B : BadChar N) : Differentiable ℂ B.F := by
  intro s
  rcases ne_or_eq s 1 with hs | rfl
  · exact B.F_differentiableAt_of_ne hs
  -- now need to deal with `s = 1`
  refine (analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt ?_ ?_).differentiableAt
  · filter_upwards [self_mem_nhdsWithin] with t ht
    exact B.F_differentiableAt_of_ne ht
  -- now reduced to showing *continuity* at s = 1
  let G := Function.update (fun s ↦ (s - 1) * riemannZeta s) 1 1
  let H := Function.update (fun s ↦ (B.χ.LFunction s - B.χ.LFunction 1) / (s - 1)) 1
    (deriv B.χ.LFunction 1)
  have : B.F = G * H := by
    ext1 t
    rcases eq_or_ne t 1 with rfl | ht
    · simp only [F, G, H, Pi.mul_apply, one_mul, Function.update_self]
    · simp only [F, G, H, Function.update_of_ne ht, mul_comm _ (riemannZeta _), B.hχ, sub_zero,
      Pi.mul_apply, mul_assoc, mul_div_cancel₀ _ (sub_ne_zero.mpr ht)]
  rw [this]
  apply ContinuousAt.mul
  · simpa only [G, continuousAt_update_same] using riemannZeta_residue_one
  · exact (B.χ.differentiableAt_LFunction 1 (.inr B.χ_ne)).hasDerivAt.continuousAt_div

/-- The trivial zero at `s = -2` of the zeta function gives that `F (-2) = 0`.
This is used later to obtain a contradiction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `789e0aae6e9378c8f5c8a7a07a905830e20b5433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
