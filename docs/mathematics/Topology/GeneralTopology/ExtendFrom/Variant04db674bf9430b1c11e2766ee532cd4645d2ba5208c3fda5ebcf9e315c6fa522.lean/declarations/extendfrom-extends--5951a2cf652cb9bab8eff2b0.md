# extendFrom_extends

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54f274b309168e2793fa48ced5cb3b4f6a6a5e34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04db674bf9430b1c11e2766ee532cd4645d2ba5208c3fda5ebcf9e315c6fa522.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39bb1807-cfaf-bb79-e38c-b17cec13e8a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:195e6766-63b7-4f90-0539-f9dc541a2a44",
  "kind": "theorem",
  "lexical_name": "extendFrom_extends",
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
  "slug": "extendfrom-extends--5951a2cf652cb9bab8eff2b0",
  "source": {
    "blob": "54f274b309168e2793fa48ced5cb3b4f6a6a5e34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant04db674bf9430b1c11e2766ee532cd4645d2ba5208c3fda5ebcf9e315c6fa522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5951a2cf652cb9bab8eff2b0ef7645aa04a81be869ac086f85aabc84cc2d261e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtendFrom/Variant04db674bf9430b1c11e2766ee532cd4645d2ba5208c3fda5ebcf9e315c6fa522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:195e6766-63b7-4f90-0539-f9dc541a2a44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extendFrom_extends [T2Space Y] {f : X → Y} {A : Set X} (hf : ContinuousOn f A) :
    ∀ x ∈ A, extendFrom A f x = f x :=
  fun x x_in ↦ extendFrom_eq (subset_closure x_in) (hf x x_in)

/-- If `f` is a function to a T₃ space `Y` which has a limit within `A` at any
point of a set `B ⊆ closure A`, then `extendFrom A f` is continuous on `B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtendFrom/Variant04db674bf9430b1c11e2766ee532cd4645d2ba5208c3fda5ebcf9e315c6fa522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant04db674bf9430b1c11e2766ee532cd4645d2ba5208c3fda5ebcf9e315c6fa522.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54f274b309168e2793fa48ced5cb3b4f6a6a5e34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
