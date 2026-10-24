# apply_preserves_revisionBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bec611b5-3731-7e84-dfef-1acb5ec30c50",
  "kind": "theorem",
  "lexical_name": "apply_preserves_revisionBounded",
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
  "slug": "apply-preserves-revisionbounded--eb139dd666921095903f5598",
  "source": {
    "blob": "9754ea8be25e0fa027aa68933034cc5d41f87237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 199,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantc7d80c4b81766fb3436f6d93ea16a8643956c5ddce0d0fc9ee0e85c5fc9591b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb139dd666921095903f55980823df8fb19a60a3e39aa91e18fa3320d5293a8c",
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

Occurrence: `result:bec611b5-3731-7e84-dfef-1acb5ec30c50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem apply_preserves_revisionBounded
    {Payload : Type*} [DecidableEq Payload]
    (register : LwwRegister Payload)
    (incoming latest : Revisioned Payload)
    (bounded : RevisionBounded latest register)
    (incomingBound : incoming.revision ≤ latest.revision) :
    RevisionBounded latest (LwwRegister.apply register incoming) := by
  intro current currentEquation
  cases register with
  | mk current? =>
      cases current? with
      | none =>
          simp [LwwRegister.apply, merge, MergeDecision.result] at currentEquation
          subst current
          exact incomingBound
      | some existing =>
          have existingBound : existing.revision ≤ latest.revision :=
            bounded existing rfl
          have resultEquality :
              (merge ⟨some existing⟩ incoming).result = current := by
            exact Option.some.inj currentEquation
          simp only [merge] at resultEquality
          split at resultEquality
          · simp only [MergeDecision.result] at resultEquality
            subst current
            exact existingBound
          · split at resultEquality
            · split at resultEquality <;>
                simp only [MergeDecision.result] at resultEquality <;>
                subst current <;> exact existingBound
            · simp only [MergeDecision.result] at resultEquality
              subst current
              exact incomingBound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantc7d80c4b81766fb3436f6d93ea16a8643956c5ddce0d0fc9ee0e85c5fc9591b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantc7d80c4b81766fb3436f6d93ea16a8643956c5ddce0d0fc9ee0e85c5fc9591b7.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9754ea8be25e0fa027aa68933034cc5d41f87237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
