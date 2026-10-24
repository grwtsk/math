# boundaryPlane_positive_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1a254171b36ab7bc55a27b876d401892fd1d27b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7f31d71-645d-a749-11ad-ce39382efe1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8672a841-017e-9bea-690f-17faf856621c",
  "kind": "theorem",
  "lexical_name": "boundaryPlane_positive_iff",
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
  "slug": "boundaryplane-positive-iff--d5984fc0a62b8848e9cf10fc",
  "source": {
    "blob": "d1a254171b36ab7bc55a27b876d401892fd1d27b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5984fc0a62b8848e9cf10fc0a51d46105787e4710677b0aa605fe9e5578f2e7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8672a841-017e-9bea-690f-17faf856621c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryPlane_positive_iff (d : ℝ) (hd : 0 ≤ d) :
    IntrinsicPositive (boundaryPlane d) ↔ 0 < d := by
  constructor
  · rintro ⟨B, hB, hpos⟩
    have hr : frameRowSpace B.val = frameRowSpace (boundaryChart d).matrix :=
      congrArg Subtype.val hB
    obtain ⟨t, ht, hmin⟩ :=
      (frameRowSpace_eq_iff_orderedMinor_proportional B.val (boundaryChart d).matrix
        B.property (boundaryChart_rank d)).mp hr
    have hne : orderedMinor (boundaryChart d).matrix lastPair ≠ 0 := by
      rw [hmin lastPair]
      exact mul_ne_zero ht (ne_of_gt (hpos lastPair))
    rw [boundaryChart_lastMinor] at hne
    exact lt_of_le_of_ne hd (Ne.symm hne)
  · intro hp
    exact ⟨boundaryFrame d, rfl, (boundaryChart_positive_iff d).mpr hp⟩

/-- The modular arithmetic plane from the actual character's chord. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1a254171b36ab7bc55a27b876d401892fd1d27b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
