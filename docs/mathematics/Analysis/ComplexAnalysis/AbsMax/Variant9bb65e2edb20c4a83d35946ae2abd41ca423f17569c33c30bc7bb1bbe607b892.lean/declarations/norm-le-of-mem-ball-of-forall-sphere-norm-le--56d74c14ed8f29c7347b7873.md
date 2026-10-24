# norm_le_of_mem_ball_of_forall_sphere_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a17762cfd40f57fe67fde7dec89fa2b03e086b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bb65e2edb20c4a83d35946ae2abd41ca423f17569c33c30bc7bb1bbe607b892.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:067d0cac-a5cd-ae18-0a0c-9ab72983d27b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d53621d2-e46a-95bc-2bdb-0e6ad3726031",
  "kind": "theorem",
  "lexical_name": "norm_le_of_mem_ball_of_forall_sphere_norm_le",
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
  "slug": "norm-le-of-mem-ball-of-forall-sphere-norm-le--56d74c14ed8f29c7347b7873",
  "source": {
    "blob": "4a17762cfd40f57fe67fde7dec89fa2b03e086b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 20,
    "path": "GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant9bb65e2edb20c4a83d35946ae2abd41ca423f17569c33c30bc7bb1bbe607b892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56d74c14ed8f29c7347b7873a51c485b355ef2a709b8b248b33cf5fbc1542595",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AbsMax/Variant9bb65e2edb20c4a83d35946ae2abd41ca423f17569c33c30bc7bb1bbe607b892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d53621d2-e46a-95bc-2bdb-0e6ad3726031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_le_of_mem_ball_of_forall_sphere_norm_le {f : ℂ → F} {r C : ℝ} {z : ℂ}
    (hd : Differentiable ℂ f) (hrpos : 0 < r)
    (hz : z ∈ Metric.ball (0 : ℂ) r) (hsphere : ∀ u : ℂ, ‖u‖ = r → ‖f u‖ ≤ C) :
    ‖f z‖ ≤ C := by
  let U : Set ℂ := Metric.ball (0 : ℂ) r
  have hfront : ∀ u ∈ frontier U, ‖f u‖ ≤ C := by
    intro u hu
    have hur : ‖u‖ = r := by
      have hfront' : frontier (Metric.ball (0 : ℂ) r) = Metric.sphere (0 : ℂ) r := by
        simpa using (frontier_ball (x := (0 : ℂ)) (r := r) (ne_of_gt hrpos))
      have : u ∈ Metric.sphere (0 : ℂ) r := by simpa [U, hfront'] using hu
      simpa [Metric.mem_sphere, dist_zero_right] using this
    exact hsphere u hur
  exact norm_le_of_forall_mem_frontier_norm_le (f := f) (U := U) Metric.isBounded_ball
    hd.diffContOnCl hfront (subset_closure hz)

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/AbsMax/Variant9bb65e2edb20c4a83d35946ae2abd41ca423f17569c33c30bc7bb1bbe607b892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant9bb65e2edb20c4a83d35946ae2abd41ca423f17569c33c30bc7bb1bbe607b892.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a17762cfd40f57fe67fde7dec89fa2b03e086b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
