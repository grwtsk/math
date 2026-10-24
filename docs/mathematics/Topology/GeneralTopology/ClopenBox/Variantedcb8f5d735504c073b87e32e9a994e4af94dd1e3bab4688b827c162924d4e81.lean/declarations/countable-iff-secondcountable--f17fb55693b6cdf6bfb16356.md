# countable_iff_secondCountable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40e9ad50-af17-c6c9-51b3-dcd5e7d6bf71",
  "kind": "lemma",
  "lexical_name": "countable_iff_secondCountable",
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
  "slug": "countable-iff-secondcountable--f17fb55693b6cdf6bfb16356",
  "source": {
    "blob": "a2a02c12e7822e4601a01a268953d93d6a3a289c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f17fb55693b6cdf6bfb16356edc341090cb26f48b8c2abb2bbefb7a4815c365e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40e9ad50-af17-c6c9-51b3-dcd5e7d6bf71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma countable_iff_secondCountable [T2Space X]
    [TotallyDisconnectedSpace X] : Countable (Clopens X) ↔ SecondCountableTopology X := by
  refine ⟨fun h ↦ ⟨{s : Set X | IsClopen s}, ?_, ?_⟩, fun h ↦ ?_⟩
  · let f : {s : Set X | IsClopen s} → Clopens X := fun s ↦ ⟨s.1, s.2⟩
    exact Injective.of_eq_imp_le (f := f) (·.le) |>.countable
  · apply IsTopologicalBasis.eq_generateFrom
    exact loc_compact_Haus_tot_disc_of_zero_dim
  · have : ∀ (s : Clopens X), ∃ (t : Finset (countableBasis X)), s.1 = (SetLike.coe t).sUnion :=
      fun s ↦ eq_sUnion_finset_of_isTopologicalBasis_of_isCompact_open _
        (isBasis_countableBasis X) s.1 s.2.1.isCompact s.2.2
    let f : Clopens X → Finset (countableBasis X) := fun s ↦ (this s).choose
    have hf : f.Injective := by
      intro s t (h : Exists.choose _ = Exists.choose _)
      ext1; change s.carrier = t.carrier
      rw [(this s).choose_spec, (this t).choose_spec, h]
    exact hf.countable

end TopologicalSpace.Clopens
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a02c12e7822e4601a01a268953d93d6a3a289c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
