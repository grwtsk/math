# run_success_requests

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a53e8d63ec4a4870d4e6f0c0644da3467b741da7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TransactionHostRefinement/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0314d01e-f5af-b5bb-23fb-49ee235d2b1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3ebb94d-d900-08b0-2e76-afb87235d242",
  "kind": "theorem",
  "lexical_name": "run_success_requests",
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
  "slug": "run-success-requests--fbdf1448c78b48a28191b0ec",
  "source": {
    "blob": "a53e8d63ec4a4870d4e6f0c0644da3467b741da7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 223,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant25769a0404b547e0e7e147f24eee9467610aa2c6f80971a62944d69ee08fa0f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbdf1448c78b48a28191b0ec5d166ad3f1f3b3869461af21cc013a3325052e17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant25769a0404b547e0e7e147f24eee9467610aa2c6f80971a62944d69ee08fa0f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3ebb94d-d900-08b0-2e76-afb87235d242`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem run_success_requests {Plan Certificate Path State Error : Type}
    (context : Context Plan Certificate Path)
    (primitive : Request Plan Certificate Path → State → Except Error State)
    (reject : Rejected → Error) (operations : List Operation) (state final : State)
    (accepted : (run (invoke context primitive reject) operations state).result = .ok final)
    (operation : Operation) (selected : operation ∈ operations) :
    ∃ before after request, lower context operation = .ok request ∧ primitive request before = .ok after := by
  induction operations generalizing state with
  | nil => simp at selected
  | cons first rest ih =>
      cases called : invoke context primitive reject first state with
      | error error => simp [run,called] at accepted
      | ok next =>
          have tail : (run (invoke context primitive reject) rest next).result = .ok final := by
            simpa [run,called] using accepted
          rcases List.mem_cons.mp selected with same | later
          · subst operation
            obtain ⟨request,lowered,exact⟩ := invoke_success_exact context primitive reject first state next called
            exact ⟨state,next,request,lowered,exact⟩
          · exact ih next tail later

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant25769a0404b547e0e7e147f24eee9467610aa2c6f80971a62944d69ee08fa0f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant25769a0404b547e0e7e147f24eee9467610aa2c6f80971a62944d69ee08fa0f4.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a53e8d63ec4a4870d4e6f0c0644da3467b741da7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
