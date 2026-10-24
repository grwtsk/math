# evBound_of_eventuallyAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b55d7df-2122-923a-3f9e-e23f616afb9a",
  "kind": "lemma",
  "lexical_name": "evBound_of_eventuallyAt",
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
  "slug": "evbound-of-eventuallyat--c43b2fcbf43c5e9fe73ede0d",
  "source": {
    "blob": "4379b5d7a24be3ef8d2b265e9edae73778925e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant49e9471feb8cb64371f0e80dc6309aeb95621b3071fdf5764eec8e9d369c5ea1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c43b2fcbf43c5e9fe73ede0df545eab6cb08b630c305387f35bda19dfb687a49",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant49e9471feb8cb64371f0e80dc6309aeb95621b3071fdf5764eec8e9d369c5ea1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b55d7df-2122-923a-3f9e-e23f616afb9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma evBound_of_eventuallyAt {cϱ : ℝ} (hLoc : LocalHypsEventually cϱ P)
    {f g : Setting → LocalFun → ℝ}
    (h : ∃ C : ℝ, EventuallyAt cϱ P.lam (fun p F => |f p F| ≤ C * g p F))
    (hg : ∀ᶠ T in atTop, 0 ≤ g (P.toSetting T) (P.localFun T)) :
    EvBound (fun T => f (P.toSetting T) (P.localFun T))
      (fun T => g (P.toSetting T) (P.localFun T)) := by
  obtain ⟨T₀, hT₀⟩ := hLoc
  obtain ⟨C, T₁, hT₁⟩ := h
  obtain ⟨T₂, hT₂⟩ := eventually_atTop.mp hg
  refine ⟨max C 1, by positivity, max T₀ (max T₁ T₂), fun T hT => ?_⟩
  have h0 : T₀ ≤ T := (le_max_left _ _).trans hT
  have h1 : T₁ ≤ T := ((le_max_left _ _).trans (le_max_right _ _)).trans hT
  have h2 : T₂ ≤ T := ((le_max_right _ _).trans (le_max_right _ _)).trans hT
  calc |f (P.toSetting T) (P.localFun T)| ≤ C * g (P.toSetting T) (P.localFun T) :=
        hT₁ _ _ rfl h1 (hT₀ T h0)
    _ ≤ max C 1 * g (P.toSetting T) (P.localFun T) :=
        mul_le_mul_of_nonneg_right (le_max_left _ _) (hT₂ T h2)



end PrimeSide

end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant49e9471feb8cb64371f0e80dc6309aeb95621b3071fdf5764eec8e9d369c5ea1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant49e9471feb8cb64371f0e80dc6309aeb95621b3071fdf5764eec8e9d369c5ea1.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4379b5d7a24be3ef8d2b265e9edae73778925e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
