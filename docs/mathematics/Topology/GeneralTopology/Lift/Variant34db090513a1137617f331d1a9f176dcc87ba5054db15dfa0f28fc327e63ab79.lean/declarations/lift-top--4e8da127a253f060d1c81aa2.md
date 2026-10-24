# lift_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6477d1b05017bbade6769a3774af54a9a59c471",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa580129-1bc0-309f-3019-84c1162b0102",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16c7699c-af6a-0dd3-2804-388b7e5d660f",
  "kind": "theorem",
  "lexical_name": "lift_top",
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
  "slug": "lift-top--4e8da127a253f060d1c81aa2",
  "source": {
    "blob": "d6477d1b05017bbade6769a3774af54a9a59c471",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 26,
    "path": "GRWTSK/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e8da127a253f060d1c81aa2fab500c29d9db8fc86e1ccb4cebe4e306f278460",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16c7699c-af6a-0dd3-2804-388b7e5d660f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_top (g : Set α → Filter β) : (⊤ : Filter α).lift g = g univ := by simp [Filter.lift]

/-- If `(p : ι → Prop, s : ι → Set α)` is a basis of a filter `f`, `g` is a monotone function
`Set α → Filter γ`, and for each `i`, `(pg : β i → Prop, sg : β i → Set α)` is a basis
of the filter `g (s i)`, then
`(fun (i : ι) (x : β i) ↦ p i ∧ pg i x, fun (i : ι) (x : β i) ↦ sg i x)` is a basis
of the filter `f.lift g`.

This basis is parametrized by `i : ι` and `x : β i`, so in order to formulate this fact using
`Filter.HasBasis` one has to use `Σ i, β i` as the index type, see `Filter.HasBasis.lift`.
This lemma states the corresponding `mem_iff` statement without using a sigma type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6477d1b05017bbade6769a3774af54a9a59c471` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
