# positivize_sat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b543af3cc82257c25c53f58a358d52d5cd489d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3f85c1a1ecfa9fa8c68987debfc1a9ce6646f832e112a683ad6ece3a18dd69a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ddb90d6-c1f2-e060-76f6-964e395399c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:968e9f8a-7318-44f0-cc9f-46cad7882a8d",
  "kind": "theorem",
  "lexical_name": "positivize_sat",
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
  "slug": "positivize-sat--48e521b10aded6d14c4fb1ce",
  "source": {
    "blob": "7b543af3cc82257c25c53f58a358d52d5cd489d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 339,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variantd3f85c1a1ecfa9fa8c68987debfc1a9ce6646f832e112a683ad6ece3a18dd69a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48e521b10aded6d14c4fb1ce2569abbdd86767544a752b241adb5cac2b089482",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variantd3f85c1a1ecfa9fa8c68987debfc1a9ce6646f832e112a683ad6ece3a18dd69a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:968e9f8a-7318-44f0-cc9f-46cad7882a8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positivize_sat {s x v} (w : s.sat' x v) :
    (positivizeConstraint s x).sat' (positivizeCoeffs s x) v := by
  dsimp [positivizeConstraint, positivizeCoeffs, positivize, positivize?]
  split
  · exact w
  · simp [Constraint.sat']
    erw [Coeffs.dot_smul_left, ← Int.neg_eq_neg_one_mul]
    exact Constraint.neg_sat w

/-- `positivize` and `normalize`, returning `none` if neither does anything. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variantd3f85c1a1ecfa9fa8c68987debfc1a9ce6646f832e112a683ad6ece3a18dd69a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variantd3f85c1a1ecfa9fa8c68987debfc1a9ce6646f832e112a683ad6ece3a18dd69a.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b543af3cc82257c25c53f58a358d52d5cd489d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
