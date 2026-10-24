# isOpen_singleton_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7eda335a-75a7-d8bd-b5da-fae69d201e03",
  "kind": "theorem",
  "lexical_name": "isOpen_singleton_iff",
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
  "slug": "isopen-singleton-iff--21521a0494c9b66b2c04b61e",
  "source": {
    "blob": "a3d3a051d9455a3f25507254dc72644d911dc3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/SuccPred/Variant6d154ae05e7f472ee02bb654709250f188a4254720544ead6dc96146be6321e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21521a0494c9b66b2c04b61ef6cd90e4a21271ac46e9c619b804cfafc0c241f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SuccPred/Variant6d154ae05e7f472ee02bb654709250f188a4254720544ead6dc96146be6321e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eda335a-75a7-d8bd-b5da-fae69d201e03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_singleton_iff : IsOpen {a} ↔ ¬ IsSuccLimit a := by
  nontriviality α
  refine ⟨fun h ha ↦ ?_, fun ha ↦ ?_⟩
  · obtain ⟨l, u, h₁, h₂⟩ := mem_nhds_iff_exists_Ioo_subset' (by simpa using ha.not_isMin)
      (by simpa only [not_isMax_iff] using not_isMax a) |>.mp (h.mem_nhds (mem_singleton a))
    refine ha.isSuccPrelimit l ?_
    rw [← succ_eq_iff_covBy]
    simp only [mem_Ioo, subset_singleton_iff] at h₁ h₂
    exact h₂ _ ⟨lt_succ l, h₁.1.succ_le.trans_lt h₁.2⟩
  · obtain (ha | ha) := not_isSuccLimit_iff.mp ha
    · convert! isOpen_Iio (a := Order.succ a) using 1
      simp [ha.Iic_eq]
    · exact isOpen_singleton_of_not_isSuccPrelimit ha

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SuccPred/Variant6d154ae05e7f472ee02bb654709250f188a4254720544ead6dc96146be6321e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SuccPred/Variant6d154ae05e7f472ee02bb654709250f188a4254720544ead6dc96146be6321e8.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d3a051d9455a3f25507254dc72644d911dc3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
