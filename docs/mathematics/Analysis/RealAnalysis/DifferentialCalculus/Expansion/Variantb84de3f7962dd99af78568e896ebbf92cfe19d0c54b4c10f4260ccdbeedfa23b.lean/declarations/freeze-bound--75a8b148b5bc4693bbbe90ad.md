# freeze_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c6c2b72-6d23-e24b-a9a5-e10d1b6c53b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfa2a99a-593e-ceaa-3e0c-59085288e264",
  "kind": "theorem",
  "lexical_name": "freeze_bound",
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
  "slug": "freeze-bound--75a8b148b5bc4693bbbe90ad",
  "source": {
    "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75a8b148b5bc4693bbbe90ad5afaf4a7a735d0c59847c1929190f0df10c22159",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfa2a99a-593e-ceaa-3e0c-59085288e264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem freeze_bound {L L' A B Λs : ℂ} {A₀ B₀ : ℝ} (hA : ‖A‖ ≤ A₀) (hB : ‖B‖ ≤ B₀)
    (hL : A₀ < ‖L‖) (hΛ : A₀ < ‖Λs‖) :
    ‖(L' + B) / (L - A) - B / (Λs - A)‖
      ≤ ‖L'‖ / (‖L‖ - A₀) + B₀ * ‖L - Λs‖ / ((‖L‖ - A₀) * (‖Λs‖ - A₀)) := by
  have h1 : ‖L‖ - A₀ ≤ ‖L - A‖ := norm_sub_ge_of_le hA
  have h2 : ‖Λs‖ - A₀ ≤ ‖Λs - A‖ := norm_sub_ge_of_le hA
  have hp1 : 0 < ‖L‖ - A₀ := by linarith
  have hp2 : 0 < ‖Λs‖ - A₀ := by linarith
  have hLA : L - A ≠ 0 := norm_pos_iff.mp (lt_of_lt_of_le hp1 h1)
  have hΛA : Λs - A ≠ 0 := norm_pos_iff.mp (lt_of_lt_of_le hp2 h2)
  have hB0 : 0 ≤ B₀ := le_trans (norm_nonneg _) hB
  rw [freeze_identity hLA hΛA]
  refine (norm_add_le _ _).trans (add_le_add ?_ ?_)
  · rw [norm_div]
    exact div_le_div_of_nonneg_left (norm_nonneg _) hp1 h1
  · rw [norm_div, norm_mul, norm_mul, norm_sub_rev Λs L]
    have hden : (‖L‖ - A₀) * (‖Λs‖ - A₀) ≤ ‖L - A‖ * ‖Λs - A‖ :=
      mul_le_mul h1 h2 hp2.le (norm_nonneg _)
    calc ‖B‖ * ‖L - Λs‖ / (‖L - A‖ * ‖Λs - A‖)
        ≤ B₀ * ‖L - Λs‖ / (‖L - A‖ * ‖Λs - A‖) := by
          gcongr
    _ ≤ B₀ * ‖L - Λs‖ / ((‖L‖ - A₀) * (‖Λs‖ - A₀)) := by
          exact div_le_div_of_nonneg_left (by positivity) (by positivity) hden

/-- E′/E in the (L′+B)/(L−A) form, on Re s > 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d287e15c2b4042e99aa14e63e405cf8c577743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
