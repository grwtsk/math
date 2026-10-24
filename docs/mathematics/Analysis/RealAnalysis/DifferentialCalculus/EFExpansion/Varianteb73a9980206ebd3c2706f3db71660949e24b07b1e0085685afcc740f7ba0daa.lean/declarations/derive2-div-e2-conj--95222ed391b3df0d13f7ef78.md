# derivE2_div_E2_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4cf3f04-3c46-bf1a-95c8-b8bb933d6abb",
  "kind": "theorem",
  "lexical_name": "derivE2_div_E2_conj",
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
  "slug": "derive2-div-e2-conj--95222ed391b3df0d13f7ef78",
  "source": {
    "blob": "9b07462fa708a42283cb7334515d99edaba3fc28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 652,
    "line": 640,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95222ed391b3df0d13f7ef78c5d104487604b78470d6e7743ce20e3ceda7ed12",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4cf3f04-3c46-bf1a-95c8-b8bb933d6abb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivE2_div_E2_conj (hc1 : 9/8 ≤ c) (hc2 : c ≤ 5/4) {t : ℝ} (ht : t ≠ 0)
    (hW : hardyW (((c:ℝ):ℂ) + t * I) ≠ 0) :
    deriv E2fn (conj (((c:ℝ):ℂ) + t * I)) / E2fn (conj (((c:ℝ):ℂ) + t * I))
      = conj (deriv E2fn (((c:ℝ):ℂ) + t * I) / E2fn (((c:ℝ):ℂ) + t * I)) := by
  set s : ℂ := ((c:ℝ):ℂ) + t * I with hs
  have hsim : s.im ≠ 0 := by rw [hs, im_line]; exact ht
  have hsG : s ∈ GoodStrip := mem_goodStrip_line hc1 hc2 t
  have hcG : conj s ∈ GoodStrip := by
    rw [hs, conj_line]; exact mem_goodStrip_line hc1 hc2 (-t)
  have hWc : hardyW (conj s) ≠ 0 := by rw [hardyW_conj hsim]; simpa using hW
  rw [derivE2_div_E2_eq hcG hWc, derivE2_div_E2_eq hsG hW, FZfn_conj hsim, E2fn_conj hsim, map_sub]

/-- **X7. uniform bound**: given W ≠ 0 on Re s = c, ‖E₂′/E₂(c+it)‖ ≤ C_E for every real t. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b07462fa708a42283cb7334515d99edaba3fc28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
