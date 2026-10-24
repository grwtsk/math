# LSeries.eq_of_LSeries_eventually_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:320db1d7-e3c1-0b9d-5b29-b51932366829",
  "kind": "lemma",
  "lexical_name": "LSeries.eq_of_LSeries_eventually_eq",
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
  "slug": "lseries-eq-of-lseries-eventually-eq--25e3267b65be925ad075bb14",
  "source": {
    "blob": "04236be259421119f58d70bdd946fc5dad35b873",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 223,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25e3267b65be925ad075bb14fac0feea4a352ac90ade4562512378f5d58bdb71",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:320db1d7-e3c1-0b9d-5b29-b51932366829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.eq_of_LSeries_eventually_eq {f g : ℕ → ℂ} (hf : abscissaOfAbsConv f < ⊤)
    (hg : abscissaOfAbsConv g < ⊤) (h : (fun x : ℝ ↦ LSeries f x) =ᶠ[atTop] fun x ↦ LSeries g x)
    {n : ℕ} (hn : n ≠ 0) :
    f n = g n := by
  have hsub : (fun x : ℝ ↦ LSeries (f - g) x) =ᶠ[atTop] (0 : ℝ → ℂ) :=
    LSeries_sub_eventuallyEq_zero_of_LSeries_eventually_eq hf hg h
  have ha : abscissaOfAbsConv (f - g) ≠ ⊤ :=
    lt_top_iff_ne_top.mp <| (abscissaOfAbsConv_sub_le f g).trans_lt <| max_lt hf hg
  simpa only [Pi.sub_apply, sub_eq_zero]
    using (LSeries_eventually_eq_zero_iff'.mp hsub).resolve_right ha n hn

/-- If the `LSeries` of `f` and of `g` both converge somewhere, then they are equal if and only
if `f n = g n` whenever `n ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04236be259421119f58d70bdd946fc5dad35b873` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
