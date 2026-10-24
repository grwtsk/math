# source_bound_zero_false_of_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecdc8d137780e0461adf72dbc28da23d6a5c74d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/Analysis/Fourier/Checks/Positive/SchwartzMoments.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ada66db-3fcf-e1c5-74d7-914369f1fde1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a60670b-64d7-99b7-d38c-44a9665dab36",
  "kind": "theorem",
  "lexical_name": "source_bound_zero_false_of_nonzero",
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
  "slug": "source-bound-zero-false-of-nonzero--11c2d0d6b04c7a54caf6d06c",
  "source": {
    "blob": "ecdc8d137780e0461adf72dbc28da23d6a5c74d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 30,
    "path": "GRWTSK/Analysis/Fourier/Checks/Positive/SchwartzMoments.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11c2d0d6b04c7a54caf6d06c3aea3290b0d86a109441d13db1766215f79a9174",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/SchwartzMoments.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a60670b-64d7-99b7-d38c-44a9665dab36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_bound_zero_false_of_nonzero (g : 𝓢(ℝ,ℂ)) (y : ℝ) (hy : g y≠0) (J : ℕ) :
    ¬ (∀i≤J+(volume : Measure ℝ).integrablePower,
      (1:ℝ)*(SchwartzMap.seminorm ℝ 0 i g+
        SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower i g)≤0) := by
  intro h
  have hb := h 0 (by omega)
  have hn : ‖g y‖≤SchwartzMap.seminorm ℝ 0 0 g := by
    simpa only [pow_zero,one_mul,iteratedDeriv_zero] using SchwartzMap.le_seminorm' ℝ 0 0 g y
  have hp : 0≤SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower 0 g := by positivity
  have hz : 0<‖g y‖ := norm_pos_iff.mpr hy
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/SchwartzMoments.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/Checks/Positive/SchwartzMoments.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecdc8d137780e0461adf72dbc28da23d6a5c74d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
