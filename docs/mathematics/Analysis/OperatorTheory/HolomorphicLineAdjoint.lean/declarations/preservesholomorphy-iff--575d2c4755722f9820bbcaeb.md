# preservesHolomorphy_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e250a6c31f9f0d18f51b1de5f2c4ba7b1474ca14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/Analysis/Operator/HolomorphicLineAdjoint.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8f73c97-6260-08c7-ac66-e7a78d5a932d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e19d3c8-b016-3e31-7763-4ecfe781af88",
  "kind": "theorem",
  "lexical_name": "preservesHolomorphy_iff",
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
  "slug": "preservesholomorphy-iff--575d2c4755722f9820bbcaeb",
  "source": {
    "blob": "e250a6c31f9f0d18f51b1de5f2c4ba7b1474ca14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 150,
    "path": "GRWTSK/Analysis/Operator/HolomorphicLineAdjoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:575d2c4755722f9820bbcaeb187f01bdfac4fa945769a8fecaf8d69b043981d7",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e19d3c8-b016-3e31-7763-4ecfe781af88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preservesHolomorphy_iff (A : CompatibleOperators C) :
    A.PreservesHolomorphy ↔ ∀ i, ExtendsHolomorphically (D.U i) (coefficient A i) := by
  constructor
  · intro h i
    exact h i 1
  · intro h i f
    let c : HolomorphicSection (D.U i) := ⟨coefficient A i, h i⟩
    have heq : (fun z => A.localOp i z ((f : Section (D.U i)) z)) =
        ((c * f : HolomorphicSection (D.U i)) : Section (D.U i)) := by
      funext z
      exact localOp_eq_mul A i z _
    rw [heq]
    exact (c * f).property

/-- Conjugated coefficients need their own holomorphic witnesses; the original ones do not suffice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicLineAdjoint.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e250a6c31f9f0d18f51b1de5f2c4ba7b1474ca14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
