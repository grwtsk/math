# hasMellin_one_div_sqrt_sub_one_div_two_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb9e1a82-9467-b404-23a9-679f9fc75b6c",
  "kind": "theorem",
  "lexical_name": "hasMellin_one_div_sqrt_sub_one_div_two_Ioc",
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
  "slug": "hasmellin-one-div-sqrt-sub-one-div-two-ioc--1bfaec26750ea0f1571bbd8c",
  "source": {
    "blob": "32fb55b80053cd2ceca6e621ffb4cda24a0f7394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 449,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bfaec26750ea0f1571bbd8cf86f5a6c40ef0fdf1ffbb89fec353f66e3d07738",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb9e1a82-9467-b404-23a9-679f9fc75b6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasMellin_one_div_sqrt_sub_one_div_two_Ioc {s : ℂ} (hs : 1 / 2 < s.re) :
    HasMellin ((Ioc 0 1).indicator fun t => (1 - 1 / (sqrt t : ℂ)) / 2) s
      (1 / (2 * s) - 1 / (2 * s - 1)) := by
  have step1 :
    HasMellin (indicator (Ioc 0 1) (fun t => 1 - 1 / ↑(sqrt t) : ℝ → ℂ)) s
      (1 / s - 1 / (s - 1 / 2)) := by
    have a := hasMellin_one_Ioc (one_half_pos.trans hs)
    have b := hasMellin_one_div_sqrt_Ioc hs
    simpa only [a.2, b.2, ← indicator_sub] using hasMellin_sub a.1 b.1
  -- todo: implement something like "indicator.const_div" (blocked by the port for now)
  rw [show
      ((Ioc 0 1).indicator fun t => (1 - 1 / (sqrt t : ℂ)) / 2) = fun t =>
        (Ioc 0 1).indicator (fun t => 1 - 1 / (sqrt t : ℂ)) t / 2
      by ext1 t; simp_rw [div_eq_inv_mul, indicator_mul_right]]
  simp_rw [HasMellin, mellin_div_const, step1.2, sub_div, div_div]
  refine ⟨step1.1.div_const _, ?_⟩
  rw [mul_comm, sub_mul, div_mul_cancel _ (two_ne_zero' ℂ), mul_comm s 2]
#align has_mellin_one_div_sqrt_sub_one_div_two_Ioc hasMellin_one_div_sqrt_sub_one_div_two_Ioc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb55b80053cd2ceca6e621ffb4cda24a0f7394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
