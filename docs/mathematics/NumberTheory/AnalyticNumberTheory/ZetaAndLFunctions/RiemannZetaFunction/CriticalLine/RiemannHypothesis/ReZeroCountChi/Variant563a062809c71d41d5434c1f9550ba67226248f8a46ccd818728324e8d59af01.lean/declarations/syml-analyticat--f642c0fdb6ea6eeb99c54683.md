# symL_analyticAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af934bdf53717e621ad3fd60f957561b546fffe6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3164cb1e-d65a-5b85-5ab0-6b2100970978",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5685ef9d-4f10-f26c-d5e4-1bbc2895da91",
  "kind": "lemma",
  "lexical_name": "symL_analyticAt",
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
  "slug": "syml-analyticat--f642c0fdb6ea6eeb99c54683",
  "source": {
    "blob": "af934bdf53717e621ad3fd60f957561b546fffe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f642c0fdb6ea6eeb99c54683dcf94d658a1c50971b1693cc39b225c04aa522d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5685ef9d-4f10-f26c-d5e4-1bbc2895da91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma symL_analyticAt (hχ1 : χ ≠ 1) (T : ℝ) (z : ℂ) : AnalyticAt ℂ (symL χ T) z := by
  have hinv : χ⁻¹ ≠ 1 := fun h => hχ1 (inv_eq_one.mp h)
  unfold symL
  have ha : AnalyticAt ℂ (fun z : ℂ => χ.LFunction (z + T * I)) z :=
    (LFunction_analyticOnNhd hχ1 _ (mem_univ _)).comp_of_eq (by fun_prop) rfl
  have hb : AnalyticAt ℂ (fun z : ℂ => χ⁻¹.LFunction (z - T * I)) z :=
    (LFunction_analyticOnNhd hinv _ (mem_univ _)).comp_of_eq (by fun_prop) rfl
  exact (ha.add hb).div_const

/-- for real σ, g_T(σ) is the real number Re L(σ + iT, χ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant563a062809c71d41d5434c1f9550ba67226248f8a46ccd818728324e8d59af01.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af934bdf53717e621ad3fd60f957561b546fffe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
