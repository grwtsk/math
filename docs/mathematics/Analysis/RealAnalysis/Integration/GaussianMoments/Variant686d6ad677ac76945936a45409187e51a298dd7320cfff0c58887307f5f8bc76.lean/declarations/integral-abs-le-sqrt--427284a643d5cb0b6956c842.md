# integral_abs_le_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e17a4ba4323af0860aa6ad1fc6164b22ce52d35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:556a2bb2-18e4-80fd-d3b7-179f3f215093",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60611d6a-e41d-801f-72b1-08382f406a84",
  "kind": "theorem",
  "lexical_name": "integral_abs_le_sqrt",
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
  "slug": "integral-abs-le-sqrt--427284a643d5cb0b6956c842",
  "source": {
    "blob": "6e17a4ba4323af0860aa6ad1fc6164b22ce52d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:427284a643d5cb0b6956c842711250d16abccd357a1e6be36a10cd471b7797c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60611d6a-e41d-801f-72b1-08382f406a84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_le_sqrt (v : ℝ≥0) :
    (∫ x : ℝ, |x| ∂gaussianReal 0 v) ≤ Real.sqrt (v : ℝ) := by
  have habs : MemLp (fun x : ℝ => |x|) 2 (gaussianReal 0 v) := by
    exact (memLp_id_gaussianReal' (μ := 0) (v := v) 2 (by norm_num)).abs.ae_eq
      (ae_of_all _ (fun x => by simp only [Pi.abs_apply, id_eq]))
  have hnonneg := variance_nonneg (fun x : ℝ => |x|) (gaussianReal 0 v)
  rw [variance_eq_sub habs] at hnonneg
  simp only [Pi.pow_apply, sq_abs] at hnonneg
  rw [integral_square v] at hnonneg
  exact Real.le_sqrt_of_sq_le (by linarith)


end GaussianCenteredMoments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GaussianMoments/Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e17a4ba4323af0860aa6ad1fc6164b22ce52d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
