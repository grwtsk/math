# compact_reference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0084a8b4-a950-8390-4469-9070c5b187af",
  "kind": "theorem",
  "lexical_name": "compact_reference",
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
  "slug": "compact-reference--964d5eb04f363a399ea36951",
  "source": {
    "blob": "37cef67b45c5fc6646c266983a853dc7fbe409ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 83,
    "path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableReferenceTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:964d5eb04f363a399ea369510ba447eb81af1abb5e7250a53f5844aaa471474a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0084a8b4-a950-8390-4469-9070c5b187af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_reference (state : State V Key) (hstate : WellFormed state)
    (reference : Key × Nat) (hreference : reference ∈ state.references) :
    ∃ target, remap state hstate reference.2 = some target ∧
      (reference.1, target) ∈ (compact state hstate).references ∧
      (compact state hstate).dictionary[target]? = state.dictionary[reference.2]? := by
  have select {references : List (Key × Nat)}
      {entries : List (Key × List (EdgeTrace.TotalEdge V))}
      (hpairs : List.Forall₂ (fun reference entry => reference.1 = entry.1 ∧
        state.dictionary[reference.2]? = some entry.2) references entries) :
      ∀ reference ∈ references, ∃ entry ∈ entries,
        reference.1 = entry.1 ∧ state.dictionary[reference.2]? = some entry.2 := by
    induction hpairs with
    | nil => simp
    | @cons head entry references entries hpair hpairs ih =>
      intro candidate hmem
      rcases List.mem_cons.mp hmem with rfl | htail
      · exact ⟨entry, List.mem_cons_self .., hpair⟩
      · obtain ⟨found, hfound, hpair⟩ := ih candidate htail
        exact ⟨found, List.mem_cons_of_mem _ hfound, hpair⟩
  obtain ⟨entry, hentry, hkey, hlookup⟩ :=
    select (references_decoded state hstate) reference hreference
  have hremap := remap_retained state hstate reference.2 entry.2 hlookup
    (realEntries_mem_compact_dictionary state hstate entry hentry)
  refine ⟨position (realRows state hstate) entry.2, hremap, ?_,
    remap_lookup state hstate _ _ hremap⟩
  rw [compact_references]
  change (reference.1, position (realRows state hstate) entry.2) ∈
    (traceRows (realRows state hstate)).map
      (fun entry => (entry.1, position (realRows state hstate) entry.2))
  rw [traceRows_realRows]
  exact List.mem_map.mpr ⟨entry, hentry, by rw [hkey]⟩

/-- Structural validity and real-reference membership derive the one-action transport facts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/PrefixTableReferenceTransport.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37cef67b45c5fc6646c266983a853dc7fbe409ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
