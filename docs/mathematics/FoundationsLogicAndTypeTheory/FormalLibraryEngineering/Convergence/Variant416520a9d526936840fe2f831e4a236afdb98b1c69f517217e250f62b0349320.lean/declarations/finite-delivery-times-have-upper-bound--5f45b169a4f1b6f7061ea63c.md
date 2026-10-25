# finite_delivery_times_have_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4dd37a070b570a031eac069e50dc13c83c091e85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/416520a9d526936840fe2f831e4a236afdb98b1c69f517217e250f62b0349320.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:789f15cf-6719-0676-8362-70dd92e016fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89e95379-fbdb-ca27-0ae1-d563bb72280e",
  "kind": "theorem",
  "lexical_name": "finite_delivery_times_have_upper_bound",
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
  "slug": "finite-delivery-times-have-upper-bound--5f45b169a4f1b6f7061ea63c",
  "source": {
    "blob": "4dd37a070b570a031eac069e50dc13c83c091e85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 328,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant416520a9d526936840fe2f831e4a236afdb98b1c69f517217e250f62b0349320.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f45b169a4f1b6f7061ea63c1a28135c8f2569744faea10c8f3a2f3a55b0abb7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant416520a9d526936840fe2f831e4a236afdb98b1c69f517217e250f62b0349320.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89e95379-fbdb-ca27-0ae1-d563bb72280e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_delivery_times_have_upper_bound
    {Host : Type*} [DecidableEq Host]
    (execution : Execution Host)
    (latest : RevisionedXYZ xyzFormatV1)
    (admittedAt quiescenceTime : Nat)
    (hosts : List Host)
    (eventual : ∀ host, host ∈ hosts →
      ∃ time, admittedAt ≤ time ∧ quiescenceTime ≤ time ∧
        execution.eventAt time = some ⟨host, latest⟩) :
    ∃ bound, ∀ host, host ∈ hosts →
      ∃ time, admittedAt ≤ time ∧ quiescenceTime ≤ time ∧
        execution.eventAt time = some ⟨host, latest⟩ ∧ time + 1 ≤ bound := by
  induction hosts with
  | nil =>
      exact ⟨0, by simp⟩
  | cons first rest inductionHypothesis =>
      obtain ⟨firstTime, admittedBeforeFirst, quiescentBeforeFirst,
        firstDelivered⟩ := eventual first (by simp)
      obtain ⟨restBound, restWitnesses⟩ := inductionHypothesis (by
        intro host member
        exact eventual host (by simp [member]))
      refine ⟨max (firstTime + 1) restBound, ?_⟩
      intro host member
      rcases List.mem_cons.mp member with rfl | restMember
      · exact ⟨firstTime, admittedBeforeFirst, quiescentBeforeFirst,
          firstDelivered, Nat.le_max_left _ _⟩
      · obtain ⟨time, admittedBefore, quiescentBefore, delivered,
          timeBound⟩ := restWitnesses host restMember
        exact ⟨time, admittedBefore, quiescentBefore, delivered,
          timeBound.trans (Nat.le_max_right _ _)⟩

/-! ## Eventual convergence -/

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant416520a9d526936840fe2f831e4a236afdb98b1c69f517217e250f62b0349320.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant416520a9d526936840fe2f831e4a236afdb98b1c69f517217e250f62b0349320.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dd37a070b570a031eac069e50dc13c83c091e85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
