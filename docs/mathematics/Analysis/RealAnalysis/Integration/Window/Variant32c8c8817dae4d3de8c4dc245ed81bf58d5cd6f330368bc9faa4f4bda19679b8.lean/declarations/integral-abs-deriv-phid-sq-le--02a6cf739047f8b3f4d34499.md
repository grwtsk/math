# integral_abs_deriv_phiD_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17d0bee8-28fd-95aa-e301-6bcb6fd2f459",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:889dd5b6-d274-9eae-9788-8246147b2c2e",
  "kind": "theorem",
  "lexical_name": "integral_abs_deriv_phiD_sq_le",
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
  "slug": "integral-abs-deriv-phid-sq-le--02a6cf739047f8b3f4d34499",
  "source": {
    "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 266,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02a6cf739047f8b3f4d34499bdd8fe6775aade553de0325dd00d1704b98a3893",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:889dd5b6-d274-9eae-9788-8246147b2c2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_deriv_phiD_sq_le (hϱ : TaperProfile ϱ) (h0 : 0 < lam) (h1 : lam ≤ 1)
    (hw : 0 < w) (hwL : 2 * w ≤ L) :
    ∫ u, |deriv (fun u => phiD ϱ lam L w u ^ 2) u| ≤ 2 := by
  have hL : 0 < L := by linarith
  refine integral_abs_deriv_le_two (by positivity : (0:ℝ) < L / 2)
    (((phiD_contDiff hϱ h0 h1 hw hwL).pow 2).of_le (by norm_num)) ?_ ?_ ?_ ?_
  · intro x
    rw [phiD_even]
  · intro x hx y hy hxy
    exact pow_le_pow_left₀ (phiD_nonneg hϱ y)
      (phiD_antitoneOn hϱ h0 h1 hw hwL hx hy hxy) 2
  · intro x
    calc phiD ϱ lam L w x ^ 2 ≤ 1 ^ 2 :=
          pow_le_pow_left₀ (phiD_nonneg hϱ x) (phiD_le_one hϱ x) 2
      _ = 1 := one_pow 2
  · intro x hx
    rw [phiD_eq_zero hϱ hw hx, zero_pow two_ne_zero]

/-- ‖φ_D''‖₁ ≤ C(ϱ, λ)/w: explicit window-constant (the §7.1 "≪ 1" with w-dependence kept,
matching [eq:phinorms]'s shape; cDT plays the role of c_ϱ for this window). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
