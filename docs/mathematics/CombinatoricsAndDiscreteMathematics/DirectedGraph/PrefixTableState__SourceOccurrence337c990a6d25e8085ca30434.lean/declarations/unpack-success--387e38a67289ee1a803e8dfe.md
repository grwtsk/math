# unpack_success

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:450abbfc-a311-8914-5ea6-10348f8746c4",
  "kind": "theorem",
  "lexical_name": "unpack_success",
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
  "slug": "unpack-success--387e38a67289ee1a803e8dfe",
  "source": {
    "blob": "cdc163ad6de5c4c0f69405f1d2cdcd20b137d037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 144,
    "path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableState.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:387e38a67289ee1a803e8dfe861c67d6e40e5f44bb609ccfd315c7db810843cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:450abbfc-a311-8914-5ea6-10348f8746c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unpack_success (state : State V Key) (hstate : WellFormed state) :
    ∃ entries, unpack (rawPacked state) = some entries ∧
      ∀ entry ∈ entries, EdgeTrace.ValidFrom state.root entry.2 := by
  have main (references : List (Key × Nat))
      (hbound : ∀ reference ∈ references, reference.2 < state.dictionary.length) :
      ∃ entries, unpack (⟨state.dictionary, references⟩ : Packed Key _) = some entries ∧
        ∀ entry ∈ entries, EdgeTrace.ValidFrom state.root entry.2 := by
    induction references with
    | nil => exact ⟨[], rfl, by simp⟩
    | cons reference references ih =>
      obtain ⟨tail, htail, htailValid⟩ := ih
        (fun r hr => hbound r (List.mem_cons_of_mem _ hr))
      have hindex := hbound reference (List.mem_cons_self ..)
      let initial := state.dictionary[reference.2]'hindex
      have hlookup : state.dictionary[reference.2]? = some initial :=
        List.getElem?_eq_getElem hindex
      refine ⟨(reference.1, initial) :: tail, ?_, ?_⟩
      · change List.mapM (decodeReference state.dictionary) references = some tail at htail
        simp only [unpack, List.mapM_cons, decodeReference, hlookup, Option.map_some,
          Option.bind_eq_bind, Option.bind]
        rw [htail]
        rfl
      · intro entry hentry
        rcases List.mem_cons.mp hentry with rfl | htailEntry
        · exact hstate.rooted initial (List.getElem_mem hindex)
        · exact htailValid entry htailEntry
  exact main state.references hstate.references

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/PrefixTableState.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc163ad6de5c4c0f69405f1d2cdcd20b137d037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
