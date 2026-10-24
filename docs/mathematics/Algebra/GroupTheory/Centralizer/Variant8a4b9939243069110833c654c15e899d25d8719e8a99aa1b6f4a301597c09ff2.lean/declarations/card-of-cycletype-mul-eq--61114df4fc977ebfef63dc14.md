# card_of_cycleType_mul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d11a4de58785ae5bad25e2ad6b8f24024f6a2cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d232be8d-5386-82f9-ed9e-8271b8d0275b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfeaae97-8f31-aab9-144c-7f5e8ff2d71c",
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
  "slug": "card-of-cycletype-mul-eq--61114df4fc977ebfef63dc14",
  "source": {
    "blob": "9d11a4de58785ae5bad25e2ad6b8f24024f6a2cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 86,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61114df4fc977ebfef63dc142b8924af5ffb42debe389ec1ecbd1d8dbae130c1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfeaae97-8f31-aab9-144c-7f5e8ff2d71c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–98.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variant8a4b9939243069110833c654c15e899d25d8719e8a99aa1b6f4a301597c09ff2.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d11a4de58785ae5bad25e2ad6b8f24024f6a2cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
