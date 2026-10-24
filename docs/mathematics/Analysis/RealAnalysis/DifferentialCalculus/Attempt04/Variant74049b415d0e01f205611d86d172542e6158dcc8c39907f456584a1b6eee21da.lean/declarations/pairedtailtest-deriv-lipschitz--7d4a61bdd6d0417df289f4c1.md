# pairedTailTest_deriv_lipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:342c529b-0a9a-2dbf-4dd3-43f460e18902",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_deriv_lipschitz",
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
  "slug": "pairedtailtest-deriv-lipschitz--7d4a61bdd6d0417df289f4c1",
  "source": {
    "blob": "ac49ae97b70f031f1ca0e02c72abd71872d6713e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d4a61bdd6d0417df289f4c1ed39d7b507e402482c1a92bdd1e0c43f2b94cfa6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:342c529b-0a9a-2dbf-4dd3-43f460e18902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_deriv_lipschitz {A : ℝ} (hA : 1 ≤ A) :
    ∃ K : ℝ≥0, LipschitzWith K (deriv (pairedTailTest A)) := by
  obtain ⟨K,hp,hn⟩ := actual_slope_phases_lipschitz (by linarith : 0 < A)
  have hscale : LipschitzWith ‖positiveMass A/negativeMass A‖₊
      (fun x : ℝ => (positiveMass A/negativeMass A) • x) :=
    lipschitzWith_smul (positiveMass A/negativeMass A)
  have hh := hp.neg.add (hscale.comp hn)
  refine ⟨_,?_⟩
  have he : deriv (pairedTailTest A) = fun u =>
      -positiveSlope A u+(positiveMass A/negativeMass A)*negativeSlope A u := by
    funext u
    exact pairedTailTest_deriv hA u
  rw [he]
  simpa only [Function.comp_def, smul_eq_mul] using hh

/-- The actual paired first derivative is absolutely continuous on every finite interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant74049b415d0e01f205611d86d172542e6158dcc8c39907f456584a1b6eee21da.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac49ae97b70f031f1ca0e02c72abd71872d6713e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
