# MeromorphicAt.meromorphicTrailingCoeffAt_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f60ed509-66ed-182f-7d8f-6fa21b6bae7e",
  "kind": "theorem",
  "lexical_name": "MeromorphicAt.meromorphicTrailingCoeffAt_comp",
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
  "slug": "meromorphicat-meromorphictrailingcoeffat-comp--fc1e2954a9eab1511576c810",
  "source": {
    "blob": "83ddc065af2aa54cff11436693db6cdad84a4928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 526,
    "path": "GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc1e2954a9eab1511576c81050335c9cff22961df21f437cf586b31160ce4432",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f60ed509-66ed-182f-7d8f-6fa21b6bae7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicAt.meromorphicTrailingCoeffAt_comp {g : 𝕜 → 𝕜} (hf : MeromorphicAt f (g x))
    (hg : AnalyticAt 𝕜 g x) (hg_nc : ¬EventuallyConst g (𝓝 x)) :
    meromorphicTrailingCoeffAt (f ∘ g) x =
      (meromorphicTrailingCoeffAt (g · - g x) x) ^ (meromorphicOrderAt f (g x)).untop₀ •
      meromorphicTrailingCoeffAt f (g x) := by
  by_cases h : meromorphicOrderAt f (g x) = ⊤
  · have : meromorphicTrailingCoeffAt (f ∘ g) x = 0 := by
      apply MeromorphicAt.meromorphicTrailingCoeffAt_of_order_eq_top
      rw [meromorphicOrderAt_eq_top_iff] at *
      exact (hg.map_nhdsNE hg_nc) h
    aesop
  · set r := (meromorphicOrderAt f (g x)).untop₀
    obtain ⟨F, h₁F, h₂F, h₃F⟩ := (meromorphicOrderAt_ne_top_iff hf).1 h
    have h₁ : meromorphicTrailingCoeffAt (f ∘ g) x
        = meromorphicTrailingCoeffAt ((g · - g x) ^ r • (F ∘ g)) x := by
      apply meromorphicTrailingCoeffAt_congr_nhdsNE
      apply Filter.Tendsto.eventually (hg.map_nhdsNE hg_nc) h₃F
    rw [h₁, MeromorphicAt.meromorphicTrailingCoeffAt_smul (by fun_prop) (by fun_prop),
      (h₁F.comp hg).meromorphicTrailingCoeffAt_of_ne_zero h₂F,
      h₁F.meromorphicTrailingCoeffAt_of_ne_zero_of_eq_nhdsNE h₂F h₃F]
    simp_all only [ne_eq, Function.comp_apply, not_false_eq_true, smul_left_inj]
    apply MeromorphicAt.meromorphicTrailingCoeffAt_zpow (by fun_prop)

/-- `meromorphicTrailingCoefficientAt` is invariant under translation. -/
@[to_fun meromorphicTrailingCoeffAt_fun_comp_add_const_eq_meromorphicTrailingCoeffAt]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ddc065af2aa54cff11436693db6cdad84a4928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
