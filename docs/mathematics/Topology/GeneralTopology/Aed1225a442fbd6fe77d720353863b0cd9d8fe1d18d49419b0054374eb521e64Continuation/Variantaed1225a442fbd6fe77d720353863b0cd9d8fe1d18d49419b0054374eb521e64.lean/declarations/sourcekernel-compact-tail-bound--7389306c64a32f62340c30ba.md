# sourceKernel_compact_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3521a03af2898ec2a0f178a7a4f6e1d6fea3d9ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 631,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b33653ed-16c6-4e17-8c27-554d7e7edcd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22c2e08e-19bd-0b1c-0b4d-7ec761668fba",
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
  "slug": "sourcekernel-compact-tail-bound--7389306c64a32f62340c30ba",
  "source": {
    "blob": "3521a03af2898ec2a0f178a7a4f6e1d6fea3d9ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 631,
    "path": "GRWTSK/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7389306c64a32f62340c30ba83584fce84227419aa4349d16edc0770967fd462",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22c2e08e-19bd-0b1c-0b4d-7ec761668fba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–656.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3521a03af2898ec2a0f178a7a4f6e1d6fea3d9ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
