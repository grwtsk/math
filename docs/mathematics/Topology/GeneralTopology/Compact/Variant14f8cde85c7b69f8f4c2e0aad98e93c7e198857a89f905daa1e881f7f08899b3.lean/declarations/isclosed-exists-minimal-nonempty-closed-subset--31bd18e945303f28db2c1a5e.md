# IsClosed.exists_minimal_nonempty_closed_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8ac01b1-2b4f-d16c-b032-a01207baff99",
  "kind": "theorem",
  "lexical_name": "IsClosed.exists_minimal_nonempty_closed_subset",
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
  "slug": "isclosed-exists-minimal-nonempty-closed-subset--31bd18e945303f28db2c1a5e",
  "source": {
    "blob": "27af4af59e3a778358fce087bbe1c024f6c5d810",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1266,
    "line": 1227,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant14f8cde85c7b69f8f4c2e0aad98e93c7e198857a89f905daa1e881f7f08899b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31bd18e945303f28db2c1a5e1e8e23b3815713c5347effcd3ea57a98fe825167",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant14f8cde85c7b69f8f4c2e0aad98e93c7e198857a89f905daa1e881f7f08899b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8ac01b1-2b4f-d16c-b032-a01207baff99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1227–1266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosed.exists_minimal_nonempty_closed_subset [CompactSpace X] {S : Set X}
    (hS : IsClosed S) (hne : S.Nonempty) :
    ∃ V : Set X, V ⊆ S ∧ V.Nonempty ∧ IsClosed V ∧
      ∀ V' : Set X, V' ⊆ V → V'.Nonempty → IsClosed V' → V' = V := by
  let opens := { U : Set X | Sᶜ ⊆ U ∧ IsOpen U ∧ Uᶜ.Nonempty }
  obtain ⟨U, h⟩ :=
    zorn_subset opens fun c hc hz => by
      by_cases hcne : c.Nonempty
      · obtain ⟨U₀, hU₀⟩ := hcne
        have : Nonempty { U // U ∈ c } := ⟨⟨U₀, hU₀⟩⟩
        obtain ⟨U₀compl, -, -⟩ := hc hU₀
        use ⋃₀ c
        refine ⟨⟨?_, ?_, ?_⟩, fun U hU _ hx => ⟨U, hU, hx⟩⟩
        · exact fun _ hx => ⟨U₀, hU₀, U₀compl hx⟩
        · exact isOpen_sUnion fun _ h => (hc h).2.1
        · convert_to (⋂ U : { U // U ∈ c }, U.1ᶜ).Nonempty
          · ext
            simp only [not_exists, not_and, Set.mem_iInter, Subtype.forall,
              mem_compl_iff, mem_sUnion]
          apply IsCompact.nonempty_iInter_of_directed_nonempty_isCompact_isClosed
          · rintro ⟨U, hU⟩ ⟨U', hU'⟩
            obtain ⟨V, hVc, hVU, hVU'⟩ := hz.directedOn U hU U' hU'
            exact ⟨⟨V, hVc⟩, Set.compl_subset_compl.mpr hVU, Set.compl_subset_compl.mpr hVU'⟩
          · exact fun U => (hc U.2).2.2
          · exact fun U => (hc U.2).2.1.isClosed_compl.isCompact
          · exact fun U => (hc U.2).2.1.isClosed_compl
      · use Sᶜ
        refine ⟨⟨Set.Subset.refl _, isOpen_compl_iff.mpr hS, ?_⟩, fun U Uc => (hcne ⟨U, Uc⟩).elim⟩
        rw [compl_compl]
        exact hne
  obtain ⟨Uc, Uo, Ucne⟩ := h.prop
  refine ⟨Uᶜ, Set.compl_subset_comm.mp Uc, Ucne, Uo.isClosed_compl, ?_⟩
  intro V' V'sub V'ne V'cls
  have : V'ᶜ = U := by
    refine h.eq_of_ge ⟨?_, isOpen_compl_iff.mpr V'cls, ?_⟩ (subset_compl_comm.2 V'sub)
    · exact Set.Subset.trans Uc (Set.subset_compl_comm.mp V'sub)
    · simp only [compl_compl, V'ne]
  rw [← this, compl_compl]

end Compact
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant14f8cde85c7b69f8f4c2e0aad98e93c7e198857a89f905daa1e881f7f08899b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant14f8cde85c7b69f8f4c2e0aad98e93c7e198857a89f905daa1e881f7f08899b3.lean#L1227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27af4af59e3a778358fce087bbe1c024f6c5d810` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
