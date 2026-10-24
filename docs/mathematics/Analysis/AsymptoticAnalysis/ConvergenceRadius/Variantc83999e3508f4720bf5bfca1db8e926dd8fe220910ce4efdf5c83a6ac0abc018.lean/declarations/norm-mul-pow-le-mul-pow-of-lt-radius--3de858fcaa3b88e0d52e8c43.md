# norm_mul_pow_le_mul_pow_of_lt_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7d408a99fcdcd61c6bcaa74bdf429991ba7f897",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c83999e3508f4720bf5bfca1db8e926dd8fe220910ce4efdf5c83a6ac0abc018.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bafaacd8-3771-3cb3-d9b2-66fedbc10203",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfc068ca-301b-0735-891f-7e23ae1d27fc",
  "kind": "theorem",
  "lexical_name": "norm_mul_pow_le_mul_pow_of_lt_radius",
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
  "slug": "norm-mul-pow-le-mul-pow-of-lt-radius--3de858fcaa3b88e0d52e8c43",
  "source": {
    "blob": "b7d408a99fcdcd61c6bcaa74bdf429991ba7f897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 190,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ConvergenceRadius/Variantc83999e3508f4720bf5bfca1db8e926dd8fe220910ce4efdf5c83a6ac0abc018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3de858fcaa3b88e0d52e8c438f94fc501c05badd237263be19f3477f96a6c765",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ConvergenceRadius/Variantc83999e3508f4720bf5bfca1db8e926dd8fe220910ce4efdf5c83a6ac0abc018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfc068ca-301b-0735-891f-7e23ae1d27fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_mul_pow_le_mul_pow_of_lt_radius (h : ↑r < p.radius) :
    ∃ a ∈ Ioo (0 : ℝ) 1, ∃ C > 0, ∀ n, ‖p n‖ * (r : ℝ) ^ n ≤ C * a ^ n := by
  have := ((TFAE_exists_lt_isLittleO_pow (fun n => ‖p n‖ * (r : ℝ) ^ n) 1).out 2 6).mp
    (p.isLittleO_of_lt_radius h)
  rcases this with ⟨a, ha, C, hC, H⟩
  exact ⟨a, ha, C, hC, fun n => (le_abs_self _).trans (H n)⟩

/-- If `r ≠ 0` and `‖pₙ‖ rⁿ = O(aⁿ)` for some `-1 < a < 1`, then `r < p.radius`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ConvergenceRadius/Variantc83999e3508f4720bf5bfca1db8e926dd8fe220910ce4efdf5c83a6ac0abc018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ConvergenceRadius/Variantc83999e3508f4720bf5bfca1db8e926dd8fe220910ce4efdf5c83a6ac0abc018.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7d408a99fcdcd61c6bcaa74bdf429991ba7f897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
