# sin_pi_div_ten

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a5823140c25e661c7d3858db5109737283b4323",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81960a4d-759d-935f-b629-c0c3d7e2856f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d94277f-41bd-b3e0-16a4-264f4aa44135",
  "kind": "theorem",
  "lexical_name": "sin_pi_div_ten",
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
  "slug": "sin-pi-div-ten--85026f2a55c8a56c105faea8",
  "source": {
    "blob": "8a5823140c25e661c7d3858db5109737283b4323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 108,
    "path": "GRWTSK/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85026f2a55c8a56c105faea8844e3639bf143004967cd64a973e7fbd9e785345",
  "verification": {
    "reference": "docs/verification/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d94277f-41bd-b3e0-16a4-264f4aa44135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_pi_div_ten :
    sin (π / 10) = (Real.sqrt 5 - 1) / 4 := by
  -- Use cos(π/5) = 1 - 2sin²(π/10)
  have hcos : cos (π / 5) = 1 - 2 * sin (π / 10) ^ 2 := by
    have h : π / 5 = 2 * (π / 10) := by ring
    rw [h, cos_two_mul]
    have := sin_sq (π / 10)
    linarith
  rw [cos_pi_div_five] at hcos
  -- sin(π/10) ≥ 0
  have hsin_nn : 0 ≤ sin (π / 10) := by
    apply sin_nonneg_of_nonneg_of_le_pi
    · linarith [pi_pos]
    · linarith [pi_pos]
  -- sin²(π/10) = (3 - √5)/8
  have hsq : sin (π / 10) ^ 2 = (3 - Real.sqrt 5) / 8 := by linarith
  -- target² = (3 - √5)/8
  have h5 : Real.sqrt 5 ^ 2 = 5 := Real.sq_sqrt (by norm_num : (5 : ℝ) ≥ 0)
  have htarget_sq : ((Real.sqrt 5 - 1) / 4) ^ 2 = (3 - Real.sqrt 5) / 8 := by nlinarith
  -- target ≥ 0
  have htarget_nn : 0 ≤ (Real.sqrt 5 - 1) / 4 := by
    apply div_nonneg _ (by norm_num)
    have : 1 ≤ Real.sqrt 5 := by
      rw [show (1 : ℝ) = Real.sqrt 1 from by simp]
      exact Real.sqrt_le_sqrt (by norm_num)
    linarith
  -- Both nonneg with same square → equal
  nlinarith [sq_nonneg (sin (π / 10) - (Real.sqrt 5 - 1) / 4)]

/-- The golden ratio bridge: 2 sin(π/10) = φ⁻¹ = -ψ.
    This means β = 1/φ, connecting the pentagon sequence root to the golden ratio. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a5823140c25e661c7d3858db5109737283b4323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
