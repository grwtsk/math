# compatibleUnion?_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf653d70367b2124df95ef105a4e074ffb09196b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7889f987-f08c-6f35-7304-5f86f66e5263",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e37397ff-dc90-04c7-9349-e1737c6bc10a",
  "kind": "theorem",
  "lexical_name": "compatibleUnion?_sound",
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
  "slug": "compatibleunion-sound--15719bff91c827988f3bae67",
  "source": {
    "blob": "bf653d70367b2124df95ef105a4e074ffb09196b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 262,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15719bff91c827988f3bae677dca94f8ff2500e600efbc1a57b43c51ecbab937",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e37397ff-dc90-04c7-9349-e1737c6bc10a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compatibleUnion?_sound {α : Type} {xs : List α}
    (left right union : Slice xs)
    (hunion : compatibleUnion? left right = some union) :
    ∀ i : Nat,
      union.containsNat i ↔
        left.containsNat i ∨ right.containsNat i := by
  intro i
  unfold compatibleUnion? at hunion
  split at hunion
  · rename_i hleft
    cases hunion
    constructor
    · intro hi
      exact Or.inr hi
    · intro hi
      rcases hi with hi | hi
      · exfalso
        exact containsNat_zero_len_false left hleft i hi
      · exact hi
  · rename_i hleft
    split at hunion
    · rename_i hright
      cases hunion
      constructor
      · intro hi
        exact Or.inl hi
      · intro hi
        rcases hi with hi | hi
        · exact hi
        · exfalso
          exact containsNat_zero_len_false right hright i hi
    · rename_i hright
      split at hunion
      · contradiction
      · rename_i hgap
        cases hunion
        exact containsNat_hull_no_gap left right hleft hright hgap i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf653d70367b2124df95ef105a4e074ffb09196b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
