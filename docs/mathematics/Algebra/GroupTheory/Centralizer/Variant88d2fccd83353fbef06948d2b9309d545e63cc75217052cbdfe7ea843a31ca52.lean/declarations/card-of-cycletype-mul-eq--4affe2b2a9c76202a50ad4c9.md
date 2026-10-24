# card_of_cycleType_mul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12cd862f-a53f-d0d6-bdc5-043f9383a1c4",
  "kind": "theorem",
  "lexical_name": "card_of_cycleType_mul_eq",
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
  "slug": "card-of-cycletype-mul-eq--4affe2b2a9c76202a50ad4c9",
  "source": {
    "blob": "503f4fef95b7134a08d8712908ccd5ecd37c4686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 94,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4affe2b2a9c76202a50ad4c982fa6dbcc01bb88da0bf4c611326dce0693489e5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12cd862f-a53f-d0d6-bdc5-043f9383a1c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_of_cycleType_mul_eq (m : Multiset ℕ) :
    #{g : alternatingGroup α |  g.val.cycleType = m} *
        ((Fintype.card α - m.sum)! * m.prod * (∏ n ∈ m.toFinset, (m.count n)!)) =
          if ((m.sum ≤ Fintype.card α ∧ ∀ a ∈ m, 2 ≤ a) ∧ Even (m.sum + Multiset.card m))
          then (Fintype.card α)!
          else 0 := by
  rw [← Finset.card_map, map_subtype_of_cycleType, apply_ite Finset.card,
    Finset.card_empty, ite_mul, zero_mul]
  simp only [and_comm (b := Even _)]
  rw [ite_and, Equiv.Perm.card_of_cycleType_mul_eq]

variable (α) in
/-- The cardinality of even permutations of given `cycleType` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variant88d2fccd83353fbef06948d2b9309d545e63cc75217052cbdfe7ea843a31ca52.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `503f4fef95b7134a08d8712908ccd5ecd37c4686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
