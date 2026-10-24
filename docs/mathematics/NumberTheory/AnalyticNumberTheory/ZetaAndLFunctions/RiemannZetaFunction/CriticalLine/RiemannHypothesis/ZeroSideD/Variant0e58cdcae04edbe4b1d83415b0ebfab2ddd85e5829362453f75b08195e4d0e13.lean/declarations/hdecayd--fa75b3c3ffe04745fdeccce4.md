# hdecayD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7cf0e9a21cebd097e515b16a20b1c80c5ff1854d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e58cdcae04edbe4b1d83415b0ebfab2ddd85e5829362453f75b08195e4d0e13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4896ca7e-3f91-d610-c7bc-ec5f9fe565cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93ddb405-978c-7c37-c04a-10004730a3f3",
  "kind": "theorem",
  "lexical_name": "hdecayD",
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
  "slug": "hdecayd--fa75b3c3ffe04745fdeccce4",
  "source": {
    "blob": "7cf0e9a21cebd097e515b16a20b1c80c5ff1854d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant0e58cdcae04edbe4b1d83415b0ebfab2ddd85e5829362453f75b08195e4d0e13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa75b3c3ffe04745fdeccce496f9b9bb9602684af6ad604a82d11bf141ecdb76",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant0e58cdcae04edbe4b1d83415b0ebfab2ddd85e5829362453f75b08195e4d0e13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93ddb405-978c-7c37-c04a-10004730a3f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hdecayD (hP : P.Valid) {T : ℝ} (h8 : 8 * P.w ≤ P.L T) (r y : ℝ) (hy : |y| ≤ 1 / 2)
    (hz : (r : ℂ) - I * y ≠ 0) :
    ‖(P.atD T).phiHat T (r - I * y)‖
      ≤ Real.exp ((P.atD T).L T / 4) * C1D P T / ‖(r : ℂ) - I * y‖ ^ 2 := by
  have hW := admWindow_params hP h8
  have hL : 0 ≤ P.L T := hW.L_pos.le
  rw [atD_phiHat hP, Params.atD_L, le_div_iff₀ (by positivity)]
  refine le_trans (hW.norm_vHat_mul_sq_le _) ?_
  unfold C1D
  gcongr
  have him : ((r : ℂ) - I * y).im = -y := by simp
  rw [him, abs_neg]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant0e58cdcae04edbe4b1d83415b0ebfab2ddd85e5829362453f75b08195e4d0e13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant0e58cdcae04edbe4b1d83415b0ebfab2ddd85e5829362453f75b08195e4d0e13.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cf0e9a21cebd097e515b16a20b1c80c5ff1854d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
