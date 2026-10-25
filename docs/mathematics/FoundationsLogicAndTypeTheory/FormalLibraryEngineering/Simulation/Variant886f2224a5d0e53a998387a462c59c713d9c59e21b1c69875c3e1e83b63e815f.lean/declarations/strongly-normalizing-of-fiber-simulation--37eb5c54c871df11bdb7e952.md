# strongly_normalizing_of_fiber_simulation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f2fcbf9e91d3770022313d91878d8b9ee893535",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:990674cc-c035-4cf5-f0cb-62aac8cec3b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:832337bc-fea4-8873-07ea-68aeda7e737a",
  "kind": "theorem",
  "lexical_name": "strongly_normalizing_of_fiber_simulation",
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
  "slug": "strongly-normalizing-of-fiber-simulation--37eb5c54c871df11bdb7e952",
  "source": {
    "blob": "7f2fcbf9e91d3770022313d91878d8b9ee893535",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37eb5c54c871df11bdb7e9522d80f1ccbdb17a40e616e1aa0d2a2f36a4c10b0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:832337bc-fea4-8873-07ea-68aeda7e737a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strongly_normalizing_of_fiber_simulation
    {R Admin : X → X → Prop} {T : Y → Y → Prop} (encoding : X → Y)
    (simulation : ∀ {x y}, R x y →
      Relation.TransGen T (encoding x) (encoding y) ∨
        (encoding x = encoding y ∧ Admin x y))
    (fiber : FiberWellFounded encoding Admin)
    {x : X} (target : StronglyNormalizing T (encoding x)) :
    StronglyNormalizing R x := by
  have accessible := target_path_accessible target
  clear target
  generalize equation : encoding x = z at accessible
  induction accessible generalizing x with
  | intro z _ ih =>
    have onFiber : ∀ a : {x : X // encoding x = z}, StronglyNormalizing R a.val := by
      intro a
      induction a using (fiber z).induction with
      | h a adminIH =>
        refine Acc.intro a.val fun b reduction => ?_
        rcases simulation reduction with computational | ⟨same, administrative⟩
        · exact ih (encoding b) (a.property ▸ computational) rfl
        · exact adminIH ⟨b, same ▸ a.property⟩ administrative
    exact onFiber ⟨x, equation⟩

/-- A target rank decreases across every nonempty target path. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variant886f2224a5d0e53a998387a462c59c713d9c59e21b1c69875c3e1e83b63e815f.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f2fcbf9e91d3770022313d91878d8b9ee893535` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
