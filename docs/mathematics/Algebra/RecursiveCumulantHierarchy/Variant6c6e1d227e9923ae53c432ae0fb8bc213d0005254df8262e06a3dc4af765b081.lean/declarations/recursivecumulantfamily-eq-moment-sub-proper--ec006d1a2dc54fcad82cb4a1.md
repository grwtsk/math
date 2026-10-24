# recursiveCumulantFamily_eq_moment_sub_proper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da9b070d-0962-2c10-592c-e1dda7f58de3",
  "kind": "theorem",
  "lexical_name": "recursiveCumulantFamily_eq_moment_sub_proper",
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
  "slug": "recursivecumulantfamily-eq-moment-sub-proper--ec006d1a2dc54fcad82cb4a1",
  "source": {
    "blob": "ffd390d5f4fc8a75ff817aebf4a533837c85f3a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 163,
    "path": "GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec006d1a2dc54fcad82cb4a15dc0b8af2178f3e46f3e7e9ef233fa866679d84d",
  "verification": {
    "reference": "docs/verification/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da9b070d-0962-2c10-592c-e1dda7f58de3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recursiveCumulantFamily_eq_moment_sub_proper
    (moments : DirectionMomentFamily E R)
    (n : ℕ) (hn : 0 < n)
    (directions : Fin n → E) :
    recursiveCumulantFamily moments n directions =
      moments n directions -
        directionalProperContribution
          n hn
          (recursiveCumulantFamily moments)
          directions := by
  rw [recursiveCumulantFamily_eq_recursive]
  rfl

/-- Specification characterizing a cumulant family recursively from a supplied
moment hierarchy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant6c6e1d227e9923ae53c432ae0fb8bc213d0005254df8262e06a3dc4af765b081.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffd390d5f4fc8a75ff817aebf4a533837c85f3a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
