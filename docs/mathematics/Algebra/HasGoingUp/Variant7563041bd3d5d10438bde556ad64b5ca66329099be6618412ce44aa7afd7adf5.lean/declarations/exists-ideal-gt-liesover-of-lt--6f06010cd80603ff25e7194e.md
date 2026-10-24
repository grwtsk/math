# exists_ideal_gt_liesOver_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b482bb1e-8113-f94b-7ad4-026654a993b3",
  "kind": "lemma",
  "lexical_name": "exists_ideal_gt_liesOver_of_lt",
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
  "slug": "exists-ideal-gt-liesover-of-lt--6f06010cd80603ff25e7194e",
  "source": {
    "blob": "292aaf105ede68b7dbf47ca798464752b24cd125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 63,
    "path": "GRWTSK/Algebra/HasGoingUp/Variant7563041bd3d5d10438bde556ad64b5ca66329099be6618412ce44aa7afd7adf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f06010cd80603ff25e7194ee38272323517a8c28e0b157fa1bc4a948c13efe0",
  "verification": {
    "reference": "docs/verification/Algebra/HasGoingUp/Variant7563041bd3d5d10438bde556ad64b5ca66329099be6618412ce44aa7afd7adf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b482bb1e-8113-f94b-7ad4-026654a993b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_ideal_gt_liesOver_of_lt [Algebra.HasGoingUp R S]
    {p q : Ideal R} [q.IsPrime] (P : Ideal S) [P.IsPrime] [P.LiesOver p]
    (hpq : p < q) :
    ∃ Q, P < Q ∧ Q.IsPrime ∧ Q.LiesOver q := by
  obtain ⟨Q, hPQ, hQ, hQq⟩ := P.exists_ideal_ge_liesOver_of_le (p := p) (q := q) hpq.le
  refine ⟨Q, lt_of_le_of_ne hPQ fun h ↦ ?_, hQ, hQq⟩
  subst Q
  simp [P.over_def p, P.over_def q] at hpq

/-- This generalizes `exists_ideal_over_prime_of_isIntegral_of_isPrime`
to arbitrary length chains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HasGoingUp/Variant7563041bd3d5d10438bde556ad64b5ca66329099be6618412ce44aa7afd7adf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HasGoingUp/Variant7563041bd3d5d10438bde556ad64b5ca66329099be6618412ce44aa7afd7adf5.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `292aaf105ede68b7dbf47ca798464752b24cd125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
