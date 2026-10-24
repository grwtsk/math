# exists_subset_iUnion_closure_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbf1eab0-5f2f-2089-61bd-7496fb30bacb",
  "kind": "theorem",
  "lexical_name": "exists_subset_iUnion_closure_subset",
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
  "slug": "exists-subset-iunion-closure-subset--7032c009bd76b1f8c5f3ace8",
  "source": {
    "blob": "129df1734abc9d199881591b1665f29201c11fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7032c009bd76b1f8c5f3ace89b8da56780aa68b5b4117370c59e601161dcb60f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbf1eab0-5f2f-2089-61bd-7496fb30bacb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_subset_iUnion_closure_subset (hs : IsClosed s) (uo : ∀ i, IsOpen (u i))
    (uf : ∀ x ∈ s, { i | x ∈ u i }.Finite) (us : s ⊆ ⋃ i, u i) :
    ∃ v : ι → Set X, s ⊆ iUnion v ∧ (∀ i, IsOpen (v i)) ∧ ∀ i, closure (v i) ⊆ u i := by
  haveI : Nonempty (PartialRefinement u s) := ⟨⟨u, ∅, uo, us, False.elim, fun _ => rfl⟩⟩
  have : ∀ c : Set (PartialRefinement u s),
      IsChain (· ≤ ·) c → c.Nonempty → ∃ ub, ∀ v ∈ c, v ≤ ub :=
    fun c hc ne => ⟨.chainSup c hc ne uf us, fun v hv => PartialRefinement.le_chainSup _ _ _ _ hv⟩
  rcases zorn_nonempty_partialOrder this with ⟨v, hv⟩
  suffices : ∀ i, i ∈ v.carrier
  exact ⟨v, v.subset_iUnion, fun i => v.isOpen _, fun i => v.closure_subset (this i)⟩
  contrapose! hv
  rcases hv with ⟨i, hi⟩
  rcases v.exists_gt hs i hi with ⟨v', hlt⟩
  exact ⟨v', hlt.le, hlt.ne'⟩
#align exists_subset_Union_closure_subset exists_subset_iUnion_closure_subset

/-- **Shrinking lemma**. A point-finite open cover of a closed subset of a normal space can be
"shrunk" to a new closed cover so that each new closed set is contained in the corresponding
original open set. See also `exists_subset_iUnion_closure_subset` for a stronger statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `129df1734abc9d199881591b1665f29201c11fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
