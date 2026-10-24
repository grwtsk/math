# sourceKernel_compact_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e71e3446-e088-7593-146a-bf66ea31f1e5",
  "kind": "theorem",
  "lexical_name": "sourceKernel_compact_tail_bound",
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
  "slug": "sourcekernel-compact-tail-bound--bd1e9a4a0a011fe3ca6e0adc",
  "source": {
    "blob": "1438693e0fb6181391a2722f10f83edca2e1457f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 664,
    "line": 639,
    "path": "GRWTSK/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantf5f5d453fba8f2754b9e423a9e181d05a6ed8e520166da49e3d2e3173c012977.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd1e9a4a0a011fe3ca6e0adc00129353ed19acd90d7fdb7263be0a98c242ffdf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantf5f5d453fba8f2754b9e423a9e181d05a6ed8e520166da49e3d2e3173c012977.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e71e3446-e088-7593-146a-bf66ea31f1e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–664.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernel_compact_tail_bound
    (K : Set ℂ) (hK : IsCompact K)
    (hKD : K ⊆ convergenceDomain) :
    ∃ R C : ℝ,
      0 ≤ R ∧ 0 ≤ C ∧
      ∀ o : ZeroOccurrence,
        R ≤ ‖shiftedValue o‖ →
        ∀ s ∈ K,
          ‖sourceKernel (shiftedValue o) s‖ ≤
            C * (1 + ‖shiftedValue o‖) ^
              (-6 : ℝ) := by
  have hzero : 0 ∉ K := by
    intro h
    have hpos :=
      ((mem_convergenceDomain_iff 0).mp
        (hKD h)).1
    simp at hpos
  obtain ⟨R, C, hR, hC, hbound⟩ :=
    compact_sourceKernel_tail_bound K hK hzero
  exact ⟨R, C, hR, hC,
    fun o ho s hs ↦
      hbound s hs (shiftedValue o) ho
        ⟨(shiftedValue_strip o).1.le,
          (shiftedValue_strip o).2.le⟩⟩

/-- Normal convergence retains all finite exceptional occurrence slots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantf5f5d453fba8f2754b9e423a9e181d05a6ed8e520166da49e3d2e3173c012977.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantf5f5d453fba8f2754b9e423a9e181d05a6ed8e520166da49e3d2e3173c012977.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1438693e0fb6181391a2722f10f83edca2e1457f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
