# NonemptyCompacts.isClosed_in_closeds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "805416ce25b28ddd9e00b42dc5f28beb17eb86c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd8e51cb-9472-aef4-eb06-6dd25a1c3b08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3707eb8-4a8a-bbd8-40f1-d25f627ef715",
  "kind": "theorem",
  "lexical_name": "NonemptyCompacts.isClosed_in_closeds",
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
  "slug": "nonemptycompacts-isclosed-in-closeds--0a9549fd036c2ccd7c37f780",
  "source": {
    "blob": "805416ce25b28ddd9e00b42dc5f28beb17eb86c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 240,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a9549fd036c2ccd7c37f7802ca26b73f9dbfc0e4eb6da02812e16c43127e523",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3707eb8-4a8a-bbd8-40f1-d25f627ef715`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NonemptyCompacts.isClosed_in_closeds [CompleteSpace α] :
    IsClosed (range <| @NonemptyCompacts.toCloseds α _ _) := by
  have :
    range NonemptyCompacts.toCloseds =
      { s : Closeds α | (s : Set α).Nonempty ∧ IsCompact (s : Set α) } := by
    ext s
    refine ⟨?_, fun h => ⟨⟨⟨s, h.2⟩, h.1⟩, Closeds.ext rfl⟩⟩
    rintro ⟨s, hs, rfl⟩
    exact ⟨s.nonempty, s.isCompact⟩
  rw [this]
  refine isClosed_of_closure_subset fun s hs => ⟨?_, ?_⟩
  · -- take a set t which is nonempty and at a finite distance of s
    rcases mem_closure_iff.1 hs ⊤ ENNReal.coe_lt_top with ⟨t, ht, Dst⟩
    rw [edist_comm] at Dst
    -- since `t` is nonempty, so is `s`
    exact nonempty_of_hausdorffEdist_ne_top ht.1 (ne_of_lt Dst)
  · refine isCompact_iff_totallyBounded_isComplete.2 ⟨?_, s.isClosed.isComplete⟩
    refine totallyBounded_iff.2 fun ε (εpos : 0 < ε) => ?_
    -- we have to show that s is covered by finitely many eballs of radius ε
    -- pick a nonempty compact set t at distance at most ε/2 of s
    rcases mem_closure_iff.1 hs (ε / 2) (ENNReal.half_pos εpos.ne') with ⟨t, ht, Dst⟩
    -- cover this space with finitely many balls of radius ε/2
    rcases totallyBounded_iff.1 (isCompact_iff_totallyBounded_isComplete.1 ht.2).1 (ε / 2)
        (ENNReal.half_pos εpos.ne') with
      ⟨u, fu, ut⟩
    refine ⟨u, ⟨fu, fun x hx => ?_⟩⟩
    -- u : set α, fu : u.finite, ut : t ⊆ ⋃ (y : α) (H : y ∈ u), eball y (ε / 2)
    -- then s is covered by the union of the balls centered at u of radius ε
    rcases exists_edist_lt_of_hausdorffEdist_lt hx Dst with ⟨z, hz, Dxz⟩
    rcases mem_iUnion₂.1 (ut hz) with ⟨y, hy, Dzy⟩
    have : edist x y < ε :=
      calc
        edist x y ≤ edist x z + edist z y := edist_triangle _ _ _
        _ < ε / 2 + ε / 2 := ENNReal.add_lt_add Dxz Dzy
        _ = ε := ENNReal.add_halves _
    exact mem_biUnion hy this

/-- In a complete space, the type of nonempty compact subsets is complete. This follows
from the same statement for closed subsets -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `805416ce25b28ddd9e00b42dc5f28beb17eb86c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
