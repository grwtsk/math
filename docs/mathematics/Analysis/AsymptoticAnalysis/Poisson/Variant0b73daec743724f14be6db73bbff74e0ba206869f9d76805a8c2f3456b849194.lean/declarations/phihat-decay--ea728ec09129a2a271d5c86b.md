# phiHat_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78a61f9d425c3c55b23c4ddb612b986f0bcb34f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7c9a980-4826-1939-cc9f-667b3ce9856e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c643a9df-4115-a58c-6793-9c84d3644226",
  "kind": "theorem",
  "lexical_name": "phiHat_decay",
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
  "slug": "phihat-decay--ea728ec09129a2a271d5c86b",
  "source": {
    "blob": "78a61f9d425c3c55b23c4ddb612b986f0bcb34f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 335,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea728ec09129a2a271d5c86bf44eb3607c99b7943738c214ba58872f725bb0b0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c643a9df-4115-a58c-6793-9c84d3644226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phiHat_decay (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) :
    ∃ C, ∀ s : ℝ, ‖paperFT (fun u => (phi ϱ L w u : ℂ)) s‖ * (1 + s ^ 2) ≤ C := by
  refine ⟨L + C1 ϱ L w, fun s => ?_⟩
  have h0 := norm_phiHat_le hϱ hw hwL s
  have h2 := norm_phiHat_mul_sq_le hϱ hw hwL s
  simp only [ofReal_im, abs_zero, zero_mul, Real.exp_zero, one_mul, norm_real,
    Real.norm_eq_abs, sq_abs] at h0 h2
  unfold phiHat at h0 h2
  linarith

/-- [lem:poisson], general form, real-valued:
`Σ_{k∈ℤ} φ̂(τ−τ_k) φ̂(τ'−τ_k) = L Φ(τ−τ')` with `τ_k = T + k·(2π/L)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78a61f9d425c3c55b23c4ddb612b986f0bcb34f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
