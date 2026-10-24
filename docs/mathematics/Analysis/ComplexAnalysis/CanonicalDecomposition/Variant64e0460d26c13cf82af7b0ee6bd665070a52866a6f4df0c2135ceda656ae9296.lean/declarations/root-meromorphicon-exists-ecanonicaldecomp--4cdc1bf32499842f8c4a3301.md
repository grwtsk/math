# _root_.MeromorphicOn.exists_ecanonicalDecomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 469,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a25a483-35d6-17eb-d841-655320765018",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a267a6d8-f81b-5f44-f689-ecc6a5365381",
  "kind": "theorem",
  "lexical_name": "_root_.MeromorphicOn.exists_ecanonicalDecomp",
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
  "slug": "root-meromorphicon-exists-ecanonicaldecomp--4cdc1bf32499842f8c4a3301",
  "source": {
    "blob": "b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 469,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cdc1bf32499842f8c4a3301e6861ce295b168f7727490ebb4c4f2efeaeccd86",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a267a6d8-f81b-5f44-f689-ecc6a5365381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeromorphicOn.exists_ecanonicalDecomp (h₁f : MeromorphicOn f (closedBall 0 R))
    (h₂f : ∀ u : (closedBall (0 : ℂ) R), meromorphicOrderAt f u ≠ ⊤) :
    ∃ h, ECanonicalDecomp f h R := by
  rcases gt_trichotomy 0 R with hR | hR | hR
  · use fun _ ↦ f 0
    exact {
      meromorphicOn := by simp_all
      analyticOnNhd := by simp_all
      ne_zero := by simp_all
      eventuallyEq := by
        simp_all only [closedBall_of_neg]
        filter_upwards [Filter.self_mem_codiscreteWithin ∅] with a ha
        tauto
    }
  · use fun _ ↦ meromorphicTrailingCoeffAt f 0
    exact {
      meromorphicOn := by simp_all
      analyticOnNhd _ _ := by fun_prop
      ne_zero := by
        simp only [hR.symm, closedBall_zero, mem_singleton_iff, ne_eq, forall_eq]
        apply MeromorphicAt.meromorphicTrailingCoeffAt_ne_zero (h₁f 0 _) _
        <;> simp_all
      eventuallyEq := by
        simp only [hR.symm, closedBall_zero]
        apply subsingleton_singleton.mem_codiscreteWithin
    }
  obtain ⟨g, D⟩ := h₁f.exists_canonicalDecomp h₂f
  have h₄g : ∀ (u : closedBall (0 : ℂ) R), meromorphicOrderAt g u ≠ ⊤ := by
    rw [← D.meromorphicNFOn.meromorphicOn.exists_meromorphicOrderAt_ne_top_iff_forall
      (Metric.isConnected_closedBall hR.le)]
    have s₁ : (0 : ℂ) ∈ closedBall 0 R := by simp [hR.le]
    use ⟨0, s₁⟩
    simp [(D.meromorphicNFOn s₁).meromorphicOrderAt_eq_zero_iff.2 (D.ne_zero 0 (by simp [hR]))]
  obtain ⟨h, h₁h, h₂h, h₃h⟩ := D.meromorphicNFOn.meromorphicOn.extract_zeros_poles h₄g <|
    (divisor g (closedBall 0 R)).finiteSupport <| isCompact_closedBall 0 R
  use h
  exact {
    meromorphicOn := h₁f
    analyticOnNhd := h₁h
    ne_zero := (h₂h ⟨·, ·⟩)
    eventuallyEq := by
      filter_upwards [D.eventuallyEq, h₃h] with a h₁a h₂a
      simp_rw [← D.divisor_eq_divisor hR]
      simp_all [← smul_assoc]
    }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
