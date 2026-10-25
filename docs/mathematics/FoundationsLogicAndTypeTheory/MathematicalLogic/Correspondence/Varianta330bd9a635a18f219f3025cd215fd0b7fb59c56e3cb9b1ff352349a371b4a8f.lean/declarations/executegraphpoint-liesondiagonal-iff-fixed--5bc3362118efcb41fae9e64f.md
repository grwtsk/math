# executeGraphPoint_liesOnDiagonal_iff_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01e449b1ce55c96a5a58f8604a4bec00e5cc678d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b91109fe-75e2-d49a-2a8d-42245c3ce6c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de97411d-4743-bf9c-7a08-4541bfca12af",
  "kind": "theorem",
  "lexical_name": "executeGraphPoint_liesOnDiagonal_iff_fixed",
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
  "slug": "executegraphpoint-liesondiagonal-iff-fixed--5bc3362118efcb41fae9e64f",
  "source": {
    "blob": "01e449b1ce55c96a5a58f8604a4bec00e5cc678d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 253,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Varianta330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bc3362118efcb41fae9e64fc4f5f8412399c93a5ed0d8f8dadc29e4549f59b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Varianta330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de97411d-4743-bf9c-7a08-4541bfca12af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem executeGraphPoint_liesOnDiagonal_iff_fixed {Point : Type}
    (dynamics : Point → Point) (point : Point) :
    LiesOnDiagonal
        ((graphPointRepresentation Point).abstract
          (executeGraphPoint dynamics point)) ↔
      point ∈ FixedSet dynamics := by
  change LiesOnDiagonal (graphPoint dynamics point) ↔
    point ∈ FixedSet dynamics
  exact (mem_fixedSet_iff_graphPoint_liesOnDiagonal dynamics point).symm

/-! ## Raster and ownership operation records

Unlike the older proof-carrying carrier record, the records below contain only
operation inputs.  Their results are computed by the formal operation, so the
refinement theorems do not assume an output equation as a record field.
-/

/-- Inputs to one raster-rounding invocation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Varianta330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Varianta330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01e449b1ce55c96a5a58f8604a4bec00e5cc678d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
