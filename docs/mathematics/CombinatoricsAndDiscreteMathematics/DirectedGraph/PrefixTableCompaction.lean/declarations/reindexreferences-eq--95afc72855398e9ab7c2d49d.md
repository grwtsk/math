# reindexReferences_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:113ac01e-028a-50d8-0d2e-c97f2b4b766d",
  "kind": "theorem",
  "lexical_name": "reindexReferences_eq",
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
  "slug": "reindexreferences-eq--95afc72855398e9ab7c2d49d",
  "source": {
    "blob": "7585644ab7d689bab3a93dcba1e6a9a4a21b190f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 251,
    "path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableCompaction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95afc72855398e9ab7c2d49d042d1a24a840910eaf80db1d616f93ff6e1d7e61",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:113ac01e-028a-50d8-0d2e-c97f2b4b766d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reindexReferences_eq (state : State V Key) (hstate : WellFormed state) :
    reindexReferences state hstate = some (compact state hstate).references := by
  have main (references : List (Key × Nat)) (entries : List (Key × List (EdgeTrace.TotalEdge V)))
      (hpairs : List.Forall₂ (fun reference entry => reference.1 = entry.1 ∧
        state.dictionary[reference.2]? = some entry.2) references entries) :
      (∀ entry ∈ entries, entry.2 ∈ (compact state hstate).dictionary) →
      references.mapM (fun reference =>
        (remap state hstate reference.2).map (fun slot => (reference.1, slot))) =
          some (entries.map
            (fun entry => (entry.1, position (realRows state hstate) entry.2))) := by
    induction hpairs with
    | nil => intro _; rfl
    | @cons reference entry references entries hpair hpairs ih =>
      intro hmem
      have hretained := hmem entry (List.mem_cons_self ..)
      have hstep := remap_retained state hstate reference.2 entry.2 hpair.2 hretained
      have htail := ih (fun entry hentry => hmem entry (List.mem_cons_of_mem _ hentry))
      simp only [List.mapM_cons, hstep, Option.map_some, Option.bind_eq_bind, Option.bind,
        htail, List.map_cons, hpair.1]
      rfl
  rw [compact_references]
  change _ = some ((traceRows (realRows state hstate)).map
    (fun entry => (entry.1, position (realRows state hstate) entry.2)))
  rw [traceRows_realRows]
  exact main state.references (realEntries state hstate) (references_decoded state hstate)
    (realEntries_mem_compact_dictionary state hstate)

/-- Root-lifted actual checked unpacking is unchanged, including the outer empty-data root. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/PrefixTableCompaction.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7585644ab7d689bab3a93dcba1e6a9a4a21b190f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
