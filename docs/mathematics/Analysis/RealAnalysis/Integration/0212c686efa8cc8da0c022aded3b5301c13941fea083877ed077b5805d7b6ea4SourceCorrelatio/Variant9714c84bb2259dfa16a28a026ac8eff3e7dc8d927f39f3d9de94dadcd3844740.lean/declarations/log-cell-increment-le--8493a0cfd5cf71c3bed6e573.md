# log_cell_increment_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d6a416a-12e6-78c6-f331-70c24b924fd0",
  "kind": "theorem",
  "lexical_name": "log_cell_increment_le",
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
  "slug": "log-cell-increment-le--8493a0cfd5cf71c3bed6e573",
  "source": {
    "blob": "53b14b1dbad950d54decd71b6c46e2313d7acb5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8493a0cfd5cf71c3bed6e5734cff40ee3f33f346c1516ea27584cdfafae8f6e5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d6a416a-12e6-78c6-f331-70c24b924fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_cell_increment_le {n : ℕ} (hn : 1 ≤ n) {x : ℝ}
    (hx : x ∈ Icc (n : ℝ) ((n : ℝ) + 1)) :
    Real.log x - Real.log n ≤ 2 / x := by
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hn0 : 0 < (n : ℝ) := by linarith
  have hx0 : 0 < x := hn0.trans_le hx.1
  calc
    Real.log x - Real.log n = Real.log (x / n) :=
      (Real.log_div hx0.ne' hn0.ne').symm
    _ ≤ x / n - 1 := Real.log_le_sub_one_of_pos (div_pos hx0 hn0)
    _ ≤ 1 / n := by apply (le_div_iff₀ hn0).2; field_simp; nlinarith [hx.2]
    _ ≤ 2 / x := by apply (div_le_div_iff₀ hn0 hx0).2; nlinarith [hx.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53b14b1dbad950d54decd71b6c46e2313d7acb5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
