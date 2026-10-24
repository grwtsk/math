# IsTopologicalGroup.exists_antitone_basis_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f001740a81132036b29324daefca70a9d5e64e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a6ee622-7dfb-9a09-7980-20e98b1f3988",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb18de7f-c210-bbb7-136d-393d6223be74",
  "kind": "theorem",
  "lexical_name": "IsTopologicalGroup.exists_antitone_basis_nhds_one",
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
  "slug": "istopologicalgroup-exists-antitone-basis-nhds-one--4f4bc1c5d1558db2d79a6af5",
  "source": {
    "blob": "9f001740a81132036b29324daefca70a9d5e64e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f4bc1c5d1558db2d79a6af517a017b0de41755f7bb961b0c044bea7b60a3804",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb18de7f-c210-bbb7-136d-393d6223be74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTopologicalGroup.exists_antitone_basis_nhds_one [FirstCountableTopology G] :
    ∃ u : ℕ → Set G, (𝓝 1).HasAntitoneBasis u ∧ ∀ n, u (n + 1) * u (n + 1) ⊆ u n := by
  rcases (𝓝 (1 : G)).exists_antitone_basis with ⟨u, hu, u_anti⟩
  have :=
    ((hu.prod_nhds hu).tendsto_iff hu).mp
      (by simpa only [mul_one] using continuous_mul.tendsto ((1, 1) : G × G))
  simp only [and_self_iff, mem_prod, and_imp, Prod.forall, Prod.exists,
    forall_true_left] at this
  have event_mul : ∀ n : ℕ, ∀ᶠ m in atTop, u m * u m ⊆ u n := by
    intro n
    rcases this n with ⟨j, k, -, h⟩
    refine atTop_basis.eventually_iff.mpr ⟨max j k, True.intro, fun m hm => ?_⟩
    rintro - ⟨a, ha, b, hb, rfl⟩
    exact h a b (u_anti ((le_max_left _ _).trans hm) ha) (u_anti ((le_max_right _ _).trans hm) hb)
  obtain ⟨φ, -, hφ, φ_anti_basis⟩ := HasAntitoneBasis.subbasis_with_rel ⟨hu, u_anti⟩ event_mul
  exact ⟨u ∘ φ, φ_anti_basis, fun n => hφ n.lt_succ_self⟩

end IsTopologicalGroup

section NhdsMul

section

variable [TopologicalSpace G] [Group G] [IsTopologicalGroup G]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f001740a81132036b29324daefca70a9d5e64e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
