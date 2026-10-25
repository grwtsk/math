# mdifferentiableAt_snd_comp_iff₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5a09d4de9b4840fda28a3ebb8b604c116f61a8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fe8c79ac8013d0c95d20c434b5e7434846800a073dcbb10e366793e391d7470.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75aed653-71f2-1fcb-3adf-86e4e369f1fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b8d1e8c-5e42-b4e2-4136-490c90f7dcda",
  "kind": "theorem",
  "lexical_name": "mdifferentiableAt_snd_comp_iff₂",
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
  "slug": "mdifferentiableat-snd-comp-iff--81f217b78c4ebc779870532b",
  "source": {
    "blob": "d5a09d4de9b4840fda28a3ebb8b604c116f61a8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 250,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant6fe8c79ac8013d0c95d20c434b5e7434846800a073dcbb10e366793e391d7470.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81f217b78c4ebc779870532bef33dea2de8557c1d5c48fb8dae0f53c2f2584d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant6fe8c79ac8013d0c95d20c434b5e7434846800a073dcbb10e366793e391d7470.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b8d1e8c-5e42-b4e2-4136-490c90f7dcda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mdifferentiableAt_snd_comp_iff₂
    {e e' : Trivialization F TotalSpace.proj} [MemTrivializationAtlas e] [MemTrivializationAtlas e']
    {f : M → TotalSpace F E} {x₀ : M}
    (he : f x₀ ∈ e.source) (he' : f x₀ ∈ e'.source)
    (hf : MDiffAt (fun x ↦ (f x).proj) x₀) :
    MDiffAt (fun x ↦ (e (f x)).2) x₀ ↔ MDiffAt (fun x ↦ (e' (f x)).2) x₀ := by
  simpa [← mdifferentiableWithinAt_univ] using
    e.mdifferentiableWithinAt_snd_comp_iff₂ IB he he' hf

/-- Characterization of differentiable functions into a vector bundle in terms
of any trivialization. Version at a point within a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant6fe8c79ac8013d0c95d20c434b5e7434846800a073dcbb10e366793e391d7470.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant6fe8c79ac8013d0c95d20c434b5e7434846800a073dcbb10e366793e391d7470.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a09d4de9b4840fda28a3ebb8b604c116f61a8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
