# mem_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2eb87727e0a29eb14857fe760fe81ce999f036a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebf747fd-7d33-4a7f-dbd8-60562c106b80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eecaa150-81ec-1214-74cc-81c44be8b32f",
  "kind": "theorem",
  "lexical_name": "mem_filter",
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
  "slug": "mem-filter--5132cb711fd1fd73c23893f6",
  "source": {
    "blob": "2eb87727e0a29eb14857fe760fe81ce999f036a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5132cb711fd1fd73c23893f67b9eddbc06f07a2b19d377e93fa3f9a07d87ca0c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eecaa150-81ec-1214-74cc-81c44be8b32f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_filter : a ∈ filter p as ↔ a ∈ as ∧ p a := by
  apply Iff.intro
  case mp =>
    intro h
    induction as with
    | nil => cases h
    | cons a' as ih => by_cases ha' : p a' <;> aesop
  case mpr =>
    intro h
    induction as with
    | nil => cases h.1
    | cons a' as ih =>
      cases h.1 with
      | head =>
        rw [filter_cons_true h.2]
        constructor
      | tail ha =>
        have : a ∈ filter p as := ih ⟨ha, h.2⟩
        by_cases hpa' : p a'
        case pos =>
          rw [filter_cons_true hpa']
          exact Mem.tail this
        case neg =>
          rw [filter_cons_false hpa']
          exact this

end TBA
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eb87727e0a29eb14857fe760fe81ce999f036a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
