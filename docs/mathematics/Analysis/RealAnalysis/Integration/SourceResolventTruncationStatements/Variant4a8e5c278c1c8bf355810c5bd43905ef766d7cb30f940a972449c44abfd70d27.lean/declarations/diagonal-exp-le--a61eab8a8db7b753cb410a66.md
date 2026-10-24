# diagonal_exp_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c85e9a4-0432-5ab8-3e07-80f3be99b239",
  "kind": "theorem",
  "lexical_name": "diagonal_exp_le",
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
  "slug": "diagonal-exp-le--a61eab8a8db7b753cb410a66",
  "source": {
    "blob": "3207ffb3a95be936792efce10d5ef7423c2a718d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 439,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variant4a8e5c278c1c8bf355810c5bd43905ef766d7cb30f940a972449c44abfd70d27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a61eab8a8db7b753cb410a66fc7a086cafe83f4a93fa71579b0338ba12134a72",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variant4a8e5c278c1c8bf355810c5bd43905ef766d7cb30f940a972449c44abfd70d27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c85e9a4-0432-5ab8-3e07-80f3be99b239`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_exp_le (α : ℝ) (hα : 0 < α) :
    Real.exp ((1 - diagonalCutoff α) / 2) ≤ α ^ 2 := by
  have hN : 1 + 4 * Real.log (1 / α) ≤ diagonalCutoff α := le_max_right _ _
  calc
    _ ≤ Real.exp (-2 * Real.log (1 / α)) := Real.exp_le_exp.mpr (by linarith)
    _ = α ^ 2 := by
      rw [one_div, Real.log_inv]
      have he : -2 * -Real.log α = (2 : ℕ) * Real.log α := by norm_num
      rw [he, Real.exp_nat_mul, Real.exp_log hα]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variant4a8e5c278c1c8bf355810c5bd43905ef766d7cb30f940a972449c44abfd70d27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variant4a8e5c278c1c8bf355810c5bd43905ef766d7cb30f940a972449c44abfd70d27.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3207ffb3a95be936792efce10d5ef7423c2a718d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
