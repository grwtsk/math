# LSeries.tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6c715ef-9bf7-5077-ff89-617635133559",
  "kind": "lemma",
  "lexical_name": "LSeries.tendsto_atTop",
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
  "slug": "lseries-tendsto-attop--7e78b060b496a25d80e42492",
  "source": {
    "blob": "69a783abfff257827ac1eac2012750893a304c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 132,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variantd1828969c68bff99a61f9b63d76563e04cc416d9a1f77ac3e26620e92f7a911f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e78b060b496a25d80e42492e91a1b123b250183ffe06a46ea7bbcfa3131e22c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variantd1828969c68bff99a61f9b63d76563e04cc416d9a1f77ac3e26620e92f7a911f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6c715ef-9bf7-5077-ff89-617635133559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.tendsto_atTop {f : ℕ → ℂ} (ha : abscissaOfAbsConv f < ⊤) :
    Tendsto (fun x : ℝ ↦ LSeries f x) atTop (nhds (f 1)) := by
  let F (n : ℕ) : ℂ := if n = 0 then 0 else f n
  have hF₀ : F 0 = 0 := rfl
  have hF {n : ℕ} (hn : n ≠ 0) : F n = f n := ite_eq_right hn
  have ha' : abscissaOfAbsConv F < ⊤ := (abscissaOfAbsConv_congr hF).symm ▸ ha
  simp_rw [← LSeries_congr hF]
  convert! LSeries.tendsto_cpow_mul_atTop (n := 0) (fun _ hm ↦ Nat.le_zero.mp hm ▸ hF₀) ha' using 1
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variantd1828969c68bff99a61f9b63d76563e04cc416d9a1f77ac3e26620e92f7a911f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variantd1828969c68bff99a61f9b63d76563e04cc416d9a1f77ac3e26620e92f7a911f.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69a783abfff257827ac1eac2012750893a304c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
