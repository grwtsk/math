# tendsto_setIntegral_of_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e00069c1-dc31-3ddd-ba67-e7e227e5827f",
  "kind": "theorem",
  "lexical_name": "tendsto_setIntegral_of_antitone",
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
  "slug": "tendsto-setintegral-of-antitone--e134bd36341287b2fde4f515",
  "source": {
    "blob": "44c0192c42240884d8c5ec272a56c3ae52098d06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 217,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e134bd36341287b2fde4f515618cbf6228456b4e9103a1a0fc7435409b2cfe63",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e00069c1-dc31-3ddd-ba67-e7e227e5827f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_setIntegral_of_antitone
    {ι : Type*} [Preorder ι] [(atTop : Filter ι).IsCountablyGenerated]
    {s : ι → Set X} (hsm : ∀ i, MeasurableSet (s i)) (h_anti : Antitone s)
    (hfi : ∃ i, IntegrableOn f (s i) μ) :
    Tendsto (fun i ↦ ∫ x in s i, f x ∂μ) atTop (𝓝 (∫ x in ⋂ n, s n, f x ∂μ)) := by
  refine .of_neBot_imp fun hne ↦ ?_
  have := (atTop_neBot_iff.mp hne).2
  rcases hfi with ⟨i₀, hi₀⟩
  suffices Tendsto (∫ x in s i₀, f x ∂μ - ∫ x in s i₀ \ s ·, f x ∂μ) atTop
      (𝓝 (∫ x in s i₀, f x ∂μ - ∫ x in ⋃ i, s i₀ \ s i, f x ∂μ)) by
    convert this.congr' <| (eventually_ge_atTop i₀).mono fun i hi ↦ ?_
    · rw [← diff_iInter, integral_diff _ hi₀ (iInter_subset _ _), sub_sub_cancel]
      exact .iInter_of_antitone h_anti hsm
    · rw [integral_diff (hsm i) hi₀ (h_anti hi), sub_sub_cancel]
  apply tendsto_const_nhds.sub
  refine tendsto_setIntegral_of_monotone (by measurability) ?_ ?_
  · exact fun i j h ↦ diff_subset_diff_right (h_anti h)
  · rw [← diff_iInter]
    exact hi₀.mono_set diff_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44c0192c42240884d8c5ec272a56c3ae52098d06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
