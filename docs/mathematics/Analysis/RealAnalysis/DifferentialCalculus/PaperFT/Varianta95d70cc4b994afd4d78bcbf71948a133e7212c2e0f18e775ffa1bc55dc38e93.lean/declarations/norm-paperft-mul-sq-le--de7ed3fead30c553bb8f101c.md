# norm_paperFT_mul_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa04095239f60ef3d8c99923a5bdea966357d234",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d746860-cb8f-9752-8699-c56f24202553",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96c2398e-8909-a591-becc-debc18121d97",
  "kind": "theorem",
  "lexical_name": "norm_paperFT_mul_sq_le",
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
  "slug": "norm-paperft-mul-sq-le--de7ed3fead30c553bb8f101c",
  "source": {
    "blob": "aa04095239f60ef3d8c99923a5bdea966357d234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de7ed3fead30c553bb8f101c4d67b2d55bfd6469d692541e8092ddc4475b7612",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96c2398e-8909-a591-becc-debc18121d97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_paperFT_mul_sq_le {f : ℝ → ℂ} {Λ : ℝ} (hf : ContDiff ℝ 2 f)
    (hsupp : ∀ u, f u ≠ 0 → |u| ≤ Λ) (z : ℂ) :
    ‖paperFT f z‖ * ‖z‖ ^ 2 ≤ Real.exp (|z.im| * Λ) * ∫ u, ‖deriv (deriv f) u‖ := by
  have hcs : HasCompactSupport f := hasCompactSupport_of_support_subset_abs hsupp
  have hts := tsupport_subset_of_support_subset_abs hsupp
  have hsupp2 : ∀ u, deriv (deriv f) u ≠ 0 → |u| ≤ Λ := by
    intro u hu
    have : u ∈ tsupport f :=
      tsupport_deriv_subset (support_deriv_subset (Function.mem_support.mpr hu))
    exact abs_le.mpr (hts this)
  have hint : Integrable (deriv (deriv f)) :=
    (hf.deriv'.continuous_deriv le_rfl).integrable_of_hasCompactSupport hcs.deriv.deriv
  have := norm_paperFT_le hint hsupp2 z
  rw [paperFT_deriv_deriv hf hcs, norm_mul, norm_neg, norm_pow, mul_comm] at this
  exact this

/-- [eq:hfbound] in the paper's form for `z ≠ 0`: `‖h_f(z)‖ ≤ e^{|Im z|Λ} ‖f''‖₁ / ‖z‖²`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa04095239f60ef3d8c99923a5bdea966357d234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
