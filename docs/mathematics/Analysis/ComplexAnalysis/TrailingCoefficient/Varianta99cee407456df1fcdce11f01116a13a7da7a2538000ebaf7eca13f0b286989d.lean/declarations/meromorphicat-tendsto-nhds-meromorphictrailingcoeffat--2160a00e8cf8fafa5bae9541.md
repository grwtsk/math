# MeromorphicAt.tendsto_nhds_meromorphicTrailingCoeffAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8614a494-e0dc-baee-2487-a2fd78c23d5b",
  "kind": "lemma",
  "lexical_name": "MeromorphicAt.tendsto_nhds_meromorphicTrailingCoeffAt",
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
  "slug": "meromorphicat-tendsto-nhds-meromorphictrailingcoeffat--2160a00e8cf8fafa5bae9541",
  "source": {
    "blob": "83ddc065af2aa54cff11436693db6cdad84a4928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 126,
    "path": "GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2160a00e8cf8fafa5bae9541f2066c1df85f3ea06d5e25882dd47bbf4c9887ca",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8614a494-e0dc-baee-2487-a2fd78c23d5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeromorphicAt.tendsto_nhds_meromorphicTrailingCoeffAt (h : MeromorphicAt f x) :
    Tendsto ((· - x) ^ (-(meromorphicOrderAt f x).untop₀) • f) (𝓝[≠] x)
      (𝓝 (meromorphicTrailingCoeffAt f x)) := by
  by_cases h₂ : meromorphicOrderAt f x = ⊤
  · simp_all only [WithTop.untop₀_top, neg_zero, zpow_zero, one_smul,
      meromorphicTrailingCoeffAt_of_order_eq_top]
    apply Tendsto.congr' (f₁ := 0)
    · filter_upwards [meromorphicOrderAt_eq_top_iff.1 h₂] with y hy
      simp_all
    · apply Tendsto.congr' (f₁ := 0) (by rfl) continuousWithinAt_const.tendsto
  obtain ⟨g, h₁g, h₂g, h₃g⟩ := (meromorphicOrderAt_ne_top_iff h).1 h₂
  apply Tendsto.congr' (f₁ := g)
  · filter_upwards [h₃g, self_mem_nhdsWithin] with y h₁y h₂y
    rw [zpow_neg, Pi.smul_apply', Pi.inv_apply, Pi.pow_apply, h₁y, ← smul_assoc, smul_eq_mul,
      ← zpow_neg, ← zpow_add', neg_add_cancel, zpow_zero, one_smul]
    left
    simp_all [sub_ne_zero]
  · rw [h₁g.meromorphicTrailingCoeffAt_of_eq_nhdsNE h₃g]
    apply h₁g.continuousAt.continuousWithinAt

/-!
## Elementary Properties
-/

/--
If `f` is meromorphic of finite order at `x`, then the trailing coefficient is not zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ddc065af2aa54cff11436693db6cdad84a4928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
