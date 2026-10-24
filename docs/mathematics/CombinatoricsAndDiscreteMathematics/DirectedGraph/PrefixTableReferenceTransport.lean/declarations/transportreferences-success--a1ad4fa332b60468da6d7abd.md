# transportReferences_success

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03bdab28-562f-660f-dedb-3429ac70759a",
  "kind": "theorem",
  "lexical_name": "transportReferences_success",
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
  "slug": "transportreferences-success--a1ad4fa332b60468da6d7abd",
  "source": {
    "blob": "37cef67b45c5fc6646c266983a853dc7fbe409ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 159,
    "path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableReferenceTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1ad4fa332b60468da6d7abd590b2e652295bba4b64c69ba46c05b00f9b65fe9",
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

Occurrence: `result:03bdab28-562f-660f-dedb-3429ac70759a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transportReferences_success (root : V) (state : ValidRootedState root Key)
    (actions : List (Action root Key)) :
    ∃ references, transportReferences root state actions = some references ∧
      references.length = state.1.1.references.length ∧
      List.Forall₂ (fun old new => old.1 = new.1 ∧
        new ∈ (executeAt root state actions).1.1.references ∧
        (executeAt root state actions).1.1.dictionary[new.2]? =
          state.1.1.dictionary[old.2]?) state.1.1.references references := by
  have main (references : List (Key × Nat)) :
      (∀ reference ∈ references, reference ∈ state.1.1.references) →
      ∃ mapped,
        references.mapM (fun reference =>
          (transportSlotAt root state actions reference.2).map
            (fun target => (reference.1, target))) = some mapped ∧
        mapped.length = references.length ∧
        List.Forall₂ (fun old new => old.1 = new.1 ∧
          new ∈ (executeAt root state actions).1.1.references ∧
          (executeAt root state actions).1.1.dictionary[new.2]? =
            state.1.1.dictionary[old.2]?) references mapped := by
    induction references with
    | nil => exact fun _ => ⟨[], rfl, rfl, List.Forall₂.nil⟩
    | cons reference references ih =>
      intro hmem
      obtain ⟨target, htarget, hfinal, hlookup⟩ := transport_reference root state actions
        reference (hmem reference (List.mem_cons_self ..))
      obtain ⟨mapped, hmapped, hlength, hpairs⟩ :=
        ih (fun reference hreference => hmem reference (List.mem_cons_of_mem _ hreference))
      refine ⟨(reference.1, target) :: mapped, ?_, by simp [hlength],
        List.Forall₂.cons ⟨rfl, hfinal, hlookup⟩ hpairs⟩
      simp only [List.mapM_cons, htarget, Option.map_some, Option.bind_eq_bind, Option.bind,
        hmapped]
      rfl
  exact main state.1.1.references (fun _ hmem => hmem)

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableReferenceTransport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/PrefixTableReferenceTransport.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37cef67b45c5fc6646c266983a853dc7fbe409ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
