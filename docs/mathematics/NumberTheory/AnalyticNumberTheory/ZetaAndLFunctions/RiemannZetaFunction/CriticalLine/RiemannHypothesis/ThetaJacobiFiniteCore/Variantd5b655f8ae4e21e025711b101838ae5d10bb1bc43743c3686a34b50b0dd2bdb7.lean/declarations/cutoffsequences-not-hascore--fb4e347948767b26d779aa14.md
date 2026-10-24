# cutoffSequences_not_hasCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96759a02-0b58-bf14-826d-8b00304fe0c9",
  "kind": "theorem",
  "lexical_name": "cutoffSequences_not_hasCore",
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
  "slug": "cutoffsequences-not-hascore--fb4e347948767b26d779aa14",
  "source": {
    "blob": "013acb9a90dd2de9e603c6387dcbab0388b18d9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 234,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb4e347948767b26d779aa147966393643d268d7305129daa7bf4f46d6163508",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96759a02-0b58-bf14-826d-8b00304fe0c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffSequences_not_hasCore {t : ℝ} (ht : 0 ≤ t) (N : ℕ) :
    ¬(jacobiOperator t ht).HasCore (cutoffSequences N) := by
  intro hc
  let J := jacobiOperator t ht
  let L : (lp (fun _ : ℕ => ℂ) 2 × lp (fun _ : ℕ => ℂ) 2) →L[ℂ] ℂ :=
    (lp.evalCLM ℂ (fun _ : ℕ => ℂ) 2 (N + 1)).comp (ContinuousLinearMap.fst ℂ _ _)
  have hle : (J.domRestrict (cutoffSequences N)).graph ≤ L.ker := by
    intro z hz
    obtain ⟨f, rfl⟩ := (LinearPMap.mem_graph_iff' _).mp hz
    change f.val (N + 1) = 0
    exact cutoffSequences_coordinate_zero N f.val f.property.1
  have hclosure := Submodule.topologicalClosure_minimal _ hle L.isClosed_ker
  have hclosable := (jacobiOperator_isClosed ht).isClosable.leIsClosable
    (show J.domRestrict (cutoffSequences N) ≤ J from LinearPMap.domRestrict_le)
  rw [hclosable.graph_closure_eq_closure_graph, hc.closure_eq] at hclosure
  have hz := hclosure ((LinearPMap.mem_graph_iff' J).mpr
    ⟨standardDomainVector t ht (N + 1), rfl⟩)
  change lp.single (E := fun _ : ℕ => ℂ) 2 (N + 1) (1 : ℂ) (N + 1) = 0 at hz
  exact one_ne_zero (by simpa only [lp.single_apply_self] using hz)

end
end FormalResearch.RiemannHypothesis.ThetaJacobiFiniteCore
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `013acb9a90dd2de9e603c6387dcbab0388b18d9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
