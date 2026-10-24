# riemannZeta_isBigO_near_one_horizontal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c06e884-cd13-99f2-01e5-b2d6abe5c45f",
  "kind": "lemma",
  "lexical_name": "riemannZeta_isBigO_near_one_horizontal",
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
  "slug": "riemannzeta-isbigo-near-one-horizontal--eb1c4fe8c8b9f2ecf2820058",
  "source": {
    "blob": "09d49757ff63d00301feb0306c7b87bf0440dee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1873,
    "line": 1861,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Varianteb897e56622cb1507edc77658388fd7e5766a08e5972c55ed2384d385f8f6530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb1c4fe8c8b9f2ecf28200587a788a572913e656f60ee1de325f3602cb800455",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Varianteb897e56622cb1507edc77658388fd7e5766a08e5972c55ed2384d385f8f6530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c06e884-cd13-99f2-01e5-b2d6abe5c45f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1861–1873.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma riemannZeta_isBigO_near_one_horizontal :
    (fun x : ℝ ↦ ζ (1 + x)) =O[𝓝[>] 0] (fun x ↦ (1 : ℂ) / x) := by
  have : (fun w : ℂ ↦ ζ (1 + w)) =O[𝓝[≠] 0] (1 / ·) := by
    have H : Tendsto (fun w ↦ w * ζ (1 + w)) (𝓝[≠] 0) (𝓝 1) := by
      convert Tendsto.comp (f := fun w ↦ 1 + w) riemannZeta_residue_one ?_ using 1
      · ext w
        simp only [Function.comp_apply, add_sub_cancel_left]
      · refine tendsto_iff_comap.mpr <| map_le_iff_le_comap.mp <| Eq.le ?_
        convert Homeomorph.map_punctured_nhds_eq (Homeomorph.addLeft (1 : ℂ)) 0 using 2 <;> simp
    exact ((Asymptotics.isBigO_mul_iff_isBigO_div eventually_mem_nhdsWithin).mp <|
      Tendsto.isBigO_one ℂ H).trans <| Asymptotics.isBigO_refl ..
  exact (isBigO_comp_ofReal_nhds_ne this).mono <| nhdsGT_le_nhdsNE 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Varianteb897e56622cb1507edc77658388fd7e5766a08e5972c55ed2384d385f8f6530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Varianteb897e56622cb1507edc77658388fd7e5766a08e5972c55ed2384d385f8f6530.lean#L1861).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09d49757ff63d00301feb0306c7b87bf0440dee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
