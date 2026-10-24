# LowerHemicontinuous.hasOpenCGraph_of_add_hasOpenCGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15858ff1-0217-6371-49b5-71f9e5bdb5f8",
  "kind": "lemma",
  "lexical_name": "LowerHemicontinuous.hasOpenCGraph_of_add_hasOpenCGraph",
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
  "slug": "lowerhemicontinuous-hasopencgraph-of-add-hasopencgraph--7c1d9a520c30bfa8e3819b2f",
  "source": {
    "blob": "2c501780b484f8bb7f7f33bed382a8a4895d89ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c1d9a520c30bfa8e3819b2feac88086716ac860c306933e8a9ee69f23c6fbf0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15858ff1-0217-6371-49b5-71f9e5bdb5f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LowerHemicontinuous.hasOpenCGraph_of_add_hasOpenCGraph [TopologicalSpace β] [AddGroup β]
    [IsTopologicalAddGroup β] {g : α → Set β} (hf : LowerHemicontinuous f) (hg : HasOpenCGraph g) :
    HasOpenCGraph (f + g) := by
  rw [HasOpenCGraph, isOpen_prod_iff]
  rintro a b ⟨y, hy, z, hz, rfl⟩
  obtain ⟨W, O_z, hW, hO_z, ha_W, hz_Oz, hWO_z⟩ := isOpen_prod_iff.mp hg a z hz
  obtain ⟨U_y, U_b, hU_y, hU_b, hy_Uy, hb_Ub, hU⟩ :=
    isOpen_prod_iff.mp (hO_z.preimage <| continuous_fst.neg.add continuous_snd) y (y + z)
      (by simpa using hz_Oz)
  have hopen_a : IsOpen {a' | (f a' ∩ U_y).Nonempty} :=
    lowerHemicontinuous_iff_isOpen_inter_nonempty.mp hf U_y hU_y
  refine ⟨{a' | (f a' ∩ U_y).Nonempty} ∩ W, U_b, hopen_a.inter hW, hU_b,
    ⟨⟨y, hy, hy_Uy⟩, ha_W⟩, hb_Ub, ?_⟩
  intro ⟨a', b'⟩ ⟨⟨⟨y', hy'_fa, hy'_Uy⟩, ha'_W⟩, hb'_Ub⟩
  exact ⟨y', hy'_fa, -y' + b',
    hWO_z (Set.mk_mem_prod ha'_W (hU (Set.mk_mem_prod hy'_Uy hb'_Ub))), by simp⟩

end tvs

variable {g : α → β} [NormalSpace α] [ParacompactSpace α] [AddCommGroup β] [Module ℝ β]

section approximate

variable [TopologicalSpace β] [ContinuousSMul ℝ β]

/-- **Michael's selection theorem (approximate):** A correspondence with open lower sections and
convex, nonempty values admits a continuous selection. This holds in any topological vector space
over `ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Michael/Variantf193ac1b86a3c7f35811f8ba7f8c5b1c437decd34acbb002acd008fe05ecbcb5.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c501780b484f8bb7f7f33bed382a8a4895d89ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
