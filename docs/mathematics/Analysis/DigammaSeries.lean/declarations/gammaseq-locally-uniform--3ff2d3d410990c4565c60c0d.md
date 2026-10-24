# gammaSeq_locally_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2eb20fa-9b1b-d14b-7f45-32b7b4a31d86",
  "kind": "theorem",
  "lexical_name": "gammaSeq_locally_uniform",
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
  "slug": "gammaseq-locally-uniform--3ff2d3d410990c4565c60c0d",
  "source": {
    "blob": "c9d7301274e0a4219c4690105ce02dd71e8ac6d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 234,
    "path": "GRWTSK/Analysis/DigammaSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ff2d3d410990c4565c60c0d321684c477207e061dc445ad87bbcf269b30f3d2",
  "verification": {
    "reference": "docs/verification/Analysis/DigammaSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2eb20fa-9b1b-d14b-7f45-32b7b4a31d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gammaSeq_locally_uniform :
    TendstoLocallyUniformlyOn (fun n z ↦ Complex.GammaSeq z n)
      Complex.Gamma atTop {z : ℂ | 0 < z.re} := by
  apply tendstoLocallyUniformlyOn_of_forall_exists_nhds
  intro z hz
  change 0 < z.re at hz
  let a : ℝ := z.re / 2
  let b : ℝ := z.re + 1
  refine ⟨{w : ℂ | a ≤ w.re ∧ w.re ≤ b}, ?_, gammaSeq_uniformly_on_strip ?_ ?_⟩
  · apply mem_nhdsWithin_of_mem_nhds
    have ha : a < z.re := by dsimp [a]; linarith
    have hb : z.re < b := by dsimp [b]; linarith
    exact (Complex.continuous_re.continuousAt.eventually (Icc_mem_nhds ha hb))
  · dsimp [a]; linarith
  · dsimp [b]; linarith

/-- The derivative-limit proposition needed to transfer Euler approximation to the actual
    special function. Pointwise convergence alone would be insufficient; it is proved below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/DigammaSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DigammaSeries.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9d7301274e0a4219c4690105ce02dd71e8ac6d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
