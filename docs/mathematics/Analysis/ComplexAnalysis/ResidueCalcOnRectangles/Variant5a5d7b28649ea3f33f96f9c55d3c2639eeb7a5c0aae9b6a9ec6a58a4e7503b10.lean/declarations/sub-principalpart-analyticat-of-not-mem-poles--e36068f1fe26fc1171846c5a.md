# sub_principalPart_analyticAt_of_not_mem_poles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21b3cf71-eb52-7f3b-8d14-0a0e036af103",
  "kind": "lemma",
  "lexical_name": "sub_principalPart_analyticAt_of_not_mem_poles",
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
  "slug": "sub-principalpart-analyticat-of-not-mem-poles--e36068f1fe26fc1171846c5a",
  "source": {
    "blob": "b12abf9932b8105d981085d6cb9e49fa409ef37a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 860,
    "line": 841,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant5a5d7b28649ea3f33f96f9c55d3c2639eeb7a5c0aae9b6a9ec6a58a4e7503b10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e36068f1fe26fc1171846c5a8c77e4776fdfaf14ff38697a144d5813304ab9fc",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant5a5d7b28649ea3f33f96f9c55d3c2639eeb7a5c0aae9b6a9ec6a58a4e7503b10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21b3cf71-eb52-7f3b-8d14-0a0e036af103`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 841–860.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma sub_principalPart_analyticAt_of_not_mem_poles
    {f : ℂ → ℂ} {polesFin : Finset ℂ} {x : ℂ}
    (h_nf : MeromorphicNFAt f x)
    (hxnp : x ∉ polesFin)
    (hxneg : 0 ≤ meromorphicOrderAt f x) :
    AnalyticAt ℂ (f - fun s ↦ ∑ p ∈ polesFin, residue f p / (s - p)) x := by
  have h_f_analytic : AnalyticAt ℂ f x :=
    h_nf.meromorphicOrderAt_nonneg_iff_analyticAt.1 hxneg
  have h_principal_analytic : AnalyticAt ℂ (fun s ↦ ∑ p ∈ polesFin, residue f p / (s - p)) x := by
    refine Finset.analyticAt_fun_sum polesFin ?_
    intro p hp
    have hxp : x ≠ p := by
      intro heq
      subst heq
      exact hxnp hp
    have : AnalyticAt ℂ (fun z : ℂ ↦ residue f p / (z - p)) x := by
      fun_prop (disch := exact sub_ne_zero.mpr hxp)
    simpa using this
  exact h_f_analytic.sub h_principal_analytic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant5a5d7b28649ea3f33f96f9c55d3c2639eeb7a5c0aae9b6a9ec6a58a4e7503b10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant5a5d7b28649ea3f33f96f9c55d3c2639eeb7a5c0aae9b6a9ec6a58a4e7503b10.lean#L841).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b12abf9932b8105d981085d6cb9e49fa409ef37a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
