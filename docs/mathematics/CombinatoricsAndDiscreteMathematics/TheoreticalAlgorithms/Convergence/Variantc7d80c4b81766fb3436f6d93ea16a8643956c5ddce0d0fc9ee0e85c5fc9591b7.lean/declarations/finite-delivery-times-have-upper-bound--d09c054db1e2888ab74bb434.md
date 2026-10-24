# finite_delivery_times_have_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6daa409-3ec6-0d76-ff26-0c84fe645e17",
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
  "slug": "finite-delivery-times-have-upper-bound--d09c054db1e2888ab74bb434",
  "source": {
    "blob": "9754ea8be25e0fa027aa68933034cc5d41f87237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 392,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantc7d80c4b81766fb3436f6d93ea16a8643956c5ddce0d0fc9ee0e85c5fc9591b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d09c054db1e2888ab74bb43430b3493598d3156fb990d517a8f15264b389467b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantc7d80c4b81766fb3436f6d93ea16a8643956c5ddce0d0fc9ee0e85c5fc9591b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6daa409-3ec6-0d76-ff26-0c84fe645e17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_delivery_times_have_upper_bound
    {Host Payload : Type*}
    [Fintype Host] [DecidableEq Host]
    [DecidableEq Payload]
    (execution : Execution Host Payload)
    (latest : Revisioned Payload)
    (admittedAt quiescenceTime : Nat)
    (hosts : List Host)
    (eventual : ∀ host, host ∈ hosts →
      ∃ time event, admittedAt ≤ time ∧ quiescenceTime ≤ time ∧
        execution.eventAt time = some event ∧
        event.target = host ∧ event.publication = latest) :
    ∃ bound, ∀ host, host ∈ hosts →
      ∃ time event, admittedAt ≤ time ∧ quiescenceTime ≤ time ∧
        execution.eventAt time = some event ∧
        event.target = host ∧ event.publication = latest ∧
        time + 1 ≤ bound := by
  induction hosts with
  | nil =>
      exact ⟨0, by simp⟩
  | cons first rest inductionHypothesis =>
      obtain ⟨firstTime, firstEvent, admittedBeforeFirst,
        quiescentBeforeFirst, firstDelivered, firstTarget,
        firstPublication⟩ := eventual first (by simp)
      obtain ⟨restBound, restWitnesses⟩ := inductionHypothesis (by
        intro host member
        exact eventual host (by simp [member]))
      refine ⟨max (firstTime + 1) restBound, ?_⟩
      intro host member
      rcases List.mem_cons.mp member with rfl | restMember
      · exact ⟨firstTime, firstEvent, admittedBeforeFirst,
          quiescentBeforeFirst, firstDelivered, firstTarget,
          firstPublication, Nat.le_max_left _ _⟩
      · obtain ⟨time, event, admittedBefore, quiescentBefore, delivered,
          target, publication, timeBound⟩ := restWitnesses host restMember
        exact ⟨time, event, admittedBefore, quiescentBefore, delivered,
          target, publication, timeBound.trans (Nat.le_max_right _ _)⟩

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantc7d80c4b81766fb3436f6d93ea16a8643956c5ddce0d0fc9ee0e85c5fc9591b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantc7d80c4b81766fb3436f6d93ea16a8643956c5ddce0d0fc9ee0e85c5fc9591b7.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9754ea8be25e0fa027aa68933034cc5d41f87237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
