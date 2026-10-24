# transport_reference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2688baa-a199-dfa0-e2c3-9c48c0953aeb",
  "kind": "theorem",
  "lexical_name": "transport_reference",
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
  "slug": "transport-reference--dcb463ab0992209b70c7e0ee",
  "source": {
    "blob": "37cef67b45c5fc6646c266983a853dc7fbe409ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 134,
    "path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableReferenceTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcb463ab0992209b70c7e0ee9f9fb6c81ad67e19b1e6d30a94f9dfdac25646ef",
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

Occurrence: `result:d2688baa-a199-dfa0-e2c3-9c48c0953aeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transport_reference (root : V) (state : ValidRootedState root Key)
    (actions : List (Action root Key)) (reference : Key × Nat)
    (hreference : reference ∈ state.1.1.references) :
    ∃ target, transportSlotAt root state actions reference.2 = some target ∧
      (reference.1, target) ∈ (executeAt root state actions).1.1.references ∧
      (executeAt root state actions).1.1.dictionary[target]? =
        state.1.1.dictionary[reference.2]? := by
  induction actions generalizing state reference with
  | nil => exact ⟨reference.2, rfl, hreference, rfl⟩
  | cons action rest ih =>
    obtain ⟨middle, hmiddle, hmem, hlookup⟩ :=
      action_reference root state action reference hreference
    obtain ⟨target, htarget, hfinal, hpayload⟩ :=
      ih (applyAction root state action) (reference.1, middle) hmem
    refine ⟨target, ?_, hfinal, hpayload.trans hlookup⟩
    rw [transportSlotAt_cons, hmiddle]
    exact htarget

/-- Keys and every repeated original reference are transported through an actual ordered mapM. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/PrefixTableReferenceTransport.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37cef67b45c5fc6646c266983a853dc7fbe409ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
