# exists_smul_notMem_of_subset_orbit_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5e25daa-3d67-481e-76f2-81aded09c3f8",
  "kind": "theorem",
  "lexical_name": "exists_smul_notMem_of_subset_orbit_closure",
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
  "slug": "exists-smul-notmem-of-subset-orbit-closure--974398912e740febd7388c91",
  "source": {
    "blob": "32b57f5199973f4b6823460da74539da2fd4910d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 50,
    "path": "GRWTSK/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:974398912e740febd7388c912bdc1ad4364e7773085bd6fd871513ebcc632179",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5e25daa-3d67-481e-76f2-81aded09c3f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_smul_notMem_of_subset_orbit_closure (S : Set G) (T : Set α) {a : α}
    (hS : ∀ g ∈ S, g⁻¹ ∈ S) (subset : T ⊆ orbit (closure S) a) (notMem : a ∉ T)
    (nonempty : T.Nonempty) : ∃ σ ∈ S, ∃ a ∈ T, σ • a ∉ T := by
  have key0 : ¬ closure S ≤ stabilizer G T := by
    have ⟨b, hb⟩ := nonempty
    obtain ⟨σ, rfl⟩ := subset hb
    contrapose! notMem with h
    exact smul_mem_smul_set_iff.mp ((h σ.2).symm ▸ hb)
  contrapose! key0
  refine (closure_le _).mpr fun σ hσ ↦ ?_
  simp_rw [SetLike.mem_coe, mem_stabilizer_iff, Set.ext_iff, mem_smul_set_iff_inv_smul_mem]
  exact fun a ↦ ⟨fun h ↦ smul_inv_smul σ a ▸ key0 σ hσ (σ⁻¹ • a) h, key0 σ⁻¹ (hS σ hσ) a⟩

@[deprecated (since := "2025-05-23")]
alias exists_smul_not_mem_of_subset_orbit_closure := exists_smul_notMem_of_subset_orbit_closure

variable [DecidableEq α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32b57f5199973f4b6823460da74539da2fd4910d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
