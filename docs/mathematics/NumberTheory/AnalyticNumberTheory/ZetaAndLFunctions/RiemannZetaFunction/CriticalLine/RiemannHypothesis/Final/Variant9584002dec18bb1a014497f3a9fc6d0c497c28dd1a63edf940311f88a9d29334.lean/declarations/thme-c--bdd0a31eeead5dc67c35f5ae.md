# thmE_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70fa805abaa2c73a650dc04556a813934b97d3de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9584002dec18bb1a014497f3a9fc6d0c497c28dd1a63edf940311f88a9d29334.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13d558e4-eb85-4944-561b-c93107c679b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd7d4c90-8705-3092-5070-dd43b99de2fe",
  "kind": "theorem",
  "lexical_name": "thmE_C",
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
  "slug": "thme-c--bdd0a31eeead5dc67c35f5ae",
  "source": {
    "blob": "70fa805abaa2c73a650dc04556a813934b97d3de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant9584002dec18bb1a014497f3a9fc6d0c497c28dd1a63edf940311f88a9d29334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdd0a31eeead5dc67c35f5ae9102ce863d181af0dfb3ae3feedfb417525fb50a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant9584002dec18bb1a014497f3a9fc6d0c497c28dd1a63edf940311f88a9d29334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd7d4c90-8705-3092-5070-dd43b99de2fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmE_C (hs : LSeam χ) (hprim : χ.IsPrimitive) (hq : 1 < q)
    (H : PaperInputsChi (parity χ) q (coeff χ) (LZeros hs)) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (3 / 4 - ε) * (NcountL χ T (2 * T) : ℝ) ≤ NdistL χ T (2 * T) := by
  refine Assembly.eps_form_threeQuarters (N := fun T => (NcountL χ T (2 * T) : ℝ))
    (lower := fun T => (NdistL χ T (2 * T) : ℝ)) (fun _ => Nat.cast_nonneg _) ?_
  intro lam hl1 hl2
  have hP := paramsOf_valid taperProfile_stdProfile (show (0:ℝ) < lam by linarith) hl2.le
  exact thmE_C_lam_of_traces hs (by omega) taperProfile_stdProfile (by linarith) hl2 H.RvM
    (thm_traces_chi hP (by omega) (coeffUnimodular_of_primitive hq hprim) H
      (PrimeSide.localHypsEventually hP))
    (eventually_GzGpChi _ hP H.EF)
    (Assembly.calE_tendsto_zero _ hP.lam_pos hP.lam_le_one (zero_le_one.trans hP.one_le_w))

/-! ## Zero hypotheses -/

/-- the full input package, from theorems alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant9584002dec18bb1a014497f3a9fc6d0c497c28dd1a63edf940311f88a9d29334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant9584002dec18bb1a014497f3a9fc6d0c497c28dd1a63edf940311f88a9d29334.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70fa805abaa2c73a650dc04556a813934b97d3de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
