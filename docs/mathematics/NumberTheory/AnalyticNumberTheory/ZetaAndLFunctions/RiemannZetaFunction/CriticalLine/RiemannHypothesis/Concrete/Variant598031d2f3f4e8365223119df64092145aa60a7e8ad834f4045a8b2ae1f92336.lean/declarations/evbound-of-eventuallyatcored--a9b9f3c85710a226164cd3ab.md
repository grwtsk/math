# evBound_of_eventuallyAtCoreD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8092bef6bbccba1b112de5e1c7f83dc8c767c04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfd3e169-493e-45b3-3a11-1d7a1b5e2c89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:469deee6-3546-5a90-b94b-10897b9fca32",
  "kind": "lemma",
  "lexical_name": "evBound_of_eventuallyAtCoreD",
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
  "slug": "evbound-of-eventuallyatcored--a9b9f3c85710a226164cd3ab",
  "source": {
    "blob": "e8092bef6bbccba1b112de5e1c7f83dc8c767c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9b9f3c85710a226164cd3aba0d93f2108d600923157248e70af375e99c90d0e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:469deee6-3546-5a90-b94b-10897b9fca32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma evBound_of_eventuallyAtCoreD (hLoc : LocalHypsCoreDEventually P)
    {f g : Setting → LocalFun → ℝ}
    (h : ∃ C : ℝ, EventuallyAtCore (cDT P.ϱ P.lam) P.lam (fun p F => |f p F| ≤ C * g p F))
    (hg : ∀ᶠ T in atTop, 0 ≤ g (P.toSetting T) (P.localFunD T)) :
    EvBound (fun T => f (P.toSetting T) (P.localFunD T))
      (fun T => g (P.toSetting T) (P.localFunD T)) := by
  obtain ⟨T₀, hT₀⟩ := hLoc
  obtain ⟨C, T₁, hT₁⟩ := h
  obtain ⟨T₂, hT₂⟩ := eventually_atTop.mp hg
  refine ⟨max C 1, by positivity, max T₀ (max T₁ T₂), fun T hT => ?_⟩
  have h0 : T₀ ≤ T := (le_max_left _ _).trans hT
  have h1 : T₁ ≤ T := ((le_max_left _ _).trans (le_max_right _ _)).trans hT
  have h2 : T₂ ≤ T := ((le_max_right _ _).trans (le_max_right _ _)).trans hT
  have := hT₁ (P.toSetting T) (P.localFunD T) rfl h1 (hT₀ T h0)
  calc |f (P.toSetting T) (P.localFunD T)| ≤ C * g (P.toSetting T) (P.localFunD T) := this
    _ ≤ max C 1 * g (P.toSetting T) (P.localFunD T) :=
      mul_le_mul_of_nonneg_right (le_max_left _ _) (hT₂ T h2)

/-- vanishing of the autocorrelation beyond the support width. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8092bef6bbccba1b112de5e1c7f83dc8c767c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
