# AlgebraicIndepOn.insert_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5eee17a3664f126f08884d03cb452b69143c5016",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e8b0291bcf1b100e3879ef5a95df6d50ff3a9a4e1cdd3e7c2eb130b4853e4eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:253fcde6-0022-635d-f875-ef91314545db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05f201ab-1179-3229-678f-ca70f5b6f4a5",
  "kind": "theorem",
  "lexical_name": "AlgebraicIndepOn.insert_iff",
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
  "slug": "algebraicindepon-insert-iff--ab6f716d2f2bb1f7510f755d",
  "source": {
    "blob": "5eee17a3664f126f08884d03cb452b69143c5016",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 113,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Transcendental/Variant2e8b0291bcf1b100e3879ef5a95df6d50ff3a9a4e1cdd3e7c2eb130b4853e4eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab6f716d2f2bb1f7510f755d985256ee43589f8737a17804da0dedbf77278e11",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Transcendental/Variant2e8b0291bcf1b100e3879ef5a95df6d50ff3a9a4e1cdd3e7c2eb130b4853e4eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05f201ab-1179-3229-678f-ca70f5b6f4a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AlgebraicIndepOn.insert_iff {s : Set ι} {i : ι} (h : i ∉ s) :
    AlgebraicIndepOn R x (insert i s) ↔
      AlgebraicIndepOn R x s ∧ Transcendental (adjoin R (x '' s)) (x i) := by
  classical simp_rw [← algebraicIndependent_equiv (subtypeInsertEquivOption h).symm,
    AlgebraicIndepOn]
  convert! option_iff (x := fun i : s ↦ x i) (a := x i) using 2
  · ext (_ | _) <;> rfl
  · rw [Set.image_eq_range]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Transcendental/Variant2e8b0291bcf1b100e3879ef5a95df6d50ff3a9a4e1cdd3e7c2eb130b4853e4eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Transcendental/Variant2e8b0291bcf1b100e3879ef5a95df6d50ff3a9a4e1cdd3e7c2eb130b4853e4eb.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eee17a3664f126f08884d03cb452b69143c5016` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
