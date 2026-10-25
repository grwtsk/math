# mk_bounded_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68926d84-a00e-3578-a935-fba797f9ab54",
  "kind": "theorem",
  "lexical_name": "mk_bounded_subset",
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
  "slug": "mk-bounded-subset--4cae459b50583ac0cfa528a9",
  "source": {
    "blob": "e5d05865bae3374749ebe619d277423423f3f821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 545,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0358acbff6e7b094bb42b2c72f5a40f0aa3be4f18c9ccbd37b8e96b9bb2e6175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cae459b50583ac0cfa528a913ac944cf7b9ea81c9150c3e8acbebd13adab124",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0358acbff6e7b094bb42b2c72f5a40f0aa3be4f18c9ccbd37b8e96b9bb2e6175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68926d84-a00e-3578-a935-fba797f9ab54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_bounded_subset {α : Type*} (h : IsStrongPrelimit #α) {r : α → α → Prop}
    [IsWellOrder α r] (hr : (#α).ord = type r) : #{ s : Set α // Bounded r s } = #α := by
  rcases eq_or_ne #α 0 with (ha | ha)
  · rw [ha]
    have := mk_eq_zero_iff.1 ha
    rw [mk_eq_zero_iff]
    constructor
    rintro ⟨s, hs⟩
    exact (not_unbounded_iff s).2 hs (unbounded_of_isEmpty s)
  have h' : IsStrongLimit #α := ⟨ha, @h⟩
  have ha := h'.aleph0_le
  apply le_antisymm
  · have : { s : Set α | Bounded r s } = ⋃ i, 𝒫 { j | r j i } := ofPred_exists _
    rw [← coe_ofPred, this]
    refine mk_iUnion_le_sum_mk.trans ((sum_le_mk_mul_iSup (fun i => #(𝒫 { j | r j i }))).trans
      ((mul_le_max_of_aleph0_le_left ha).trans ?_))
    rw [max_eq_left]
    apply ciSup_le' _
    intro i
    rw [mk_powerset]
    exact (h (card_typein_lt _ hr)).le
  · refine @mk_le_of_injective α _ (fun x => Subtype.mk {x} ?_) ?_
    · apply bounded_singleton
      rw [← hr]
      apply isSuccLimit_ord ha
    · intro a b hab
      simpa [singleton_eq_singleton_iff] using hab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0358acbff6e7b094bb42b2c72f5a40f0aa3be4f18c9ccbd37b8e96b9bb2e6175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0358acbff6e7b094bb42b2c72f5a40f0aa3be4f18c9ccbd37b8e96b9bb2e6175.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5d05865bae3374749ebe619d277423423f3f821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
