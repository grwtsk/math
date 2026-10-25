# isSatisfiable_iUnion_iff_isSatisfiable_iUnion_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:130e5a3e-ba6a-26c1-50e7-19c38f55616f",
  "kind": "theorem",
  "lexical_name": "isSatisfiable_iUnion_iff_isSatisfiable_iUnion_finset",
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
  "slug": "issatisfiable-iunion-iff-issatisfiable-iunion-finset--57ac9f8e356f722a9fa8b1a2",
  "source": {
    "blob": "fcabd4a7605b9ba0274049c820f67b1c0434e3f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant54b6ad564e90f40963ea1478aa5d92067770c9cf94fb228605ada156b55cccb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57ac9f8e356f722a9fa8b1a2b9b026f7cc272a0c16f0dcb4fe67e7340f08d3b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant54b6ad564e90f40963ea1478aa5d92067770c9cf94fb228605ada156b55cccb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:130e5a3e-ba6a-26c1-50e7-19c38f55616f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSatisfiable_iUnion_iff_isSatisfiable_iUnion_finset {ι : Type*} (T : ι → L.Theory) :
    IsSatisfiable (⋃ i, T i) ↔ ∀ s : Finset ι, IsSatisfiable (⋃ i ∈ s, T i) := by
  classical
    refine'
      ⟨fun h s => h.mono (Set.iUnion_mono fun _ => Set.iUnion_subset_iff.2 fun _ => refl _),
        fun h => _⟩
    rw [isSatisfiable_iff_isFinitelySatisfiable]
    intro s hs
    rw [Set.iUnion_eq_iUnion_finset] at hs
    obtain ⟨t, ht⟩ := Directed.exists_mem_subset_of_finset_subset_biUnion (by
      exact Monotone.directed_le fun t1 t2 (h : ∀ ⦃x⦄, x ∈ t1 → x ∈ t2) =>
        Set.iUnion_mono fun _ => Set.iUnion_mono' fun h1 => ⟨h h1, refl _⟩) hs
    exact (h t).mono ht
#align first_order.language.Theory.is_satisfiable_Union_iff_is_satisfiable_Union_finset FirstOrder.Language.Theory.isSatisfiable_iUnion_iff_isSatisfiable_iUnion_finset

end Theory

variable (L)

/-- A version of The Downward Löwenheim–Skolem theorem where the structure `N` elementarily embeds
into `M`, but is not by type a substructure of `M`, and thus can be chosen to belong to the universe
of the cardinal `κ`.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant54b6ad564e90f40963ea1478aa5d92067770c9cf94fb228605ada156b55cccb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant54b6ad564e90f40963ea1478aa5d92067770c9cf94fb228605ada156b55cccb2.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcabd4a7605b9ba0274049c820f67b1c0434e3f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
