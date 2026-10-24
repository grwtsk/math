# linearSum_zipWithPad_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3682608-fc52-f48b-c11c-2149a4c0fcd4",
  "kind": "theorem",
  "lexical_name": "linearSum_zipWithPad_add",
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
  "slug": "linearsum-zipwithpad-add--6bf9bf9d2c9e5d665c68eb8e",
  "source": {
    "blob": "a3c906d8899028f064ac01abf4b1db912db27469",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 229,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bf9bf9d2c9e5d665c68eb8ea685072ccba00110e432bb9a9688761a9393bc48",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3682608-fc52-f48b-c11c-2149a4c0fcd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem linearSum_zipWithPad_add (l1 l2 : List ℚ) (eps : NoiseAssignment) :
    linearSum (zipWithPad (· + ·) l1 l2) eps =
    linearSum l1 eps + linearSum l2 eps := by
  simp only [linearSum]
  induction l1 generalizing l2 eps with
  | nil =>
    induction l2 generalizing eps with
    | nil => simp [zipWithPad]
    | cons h2 t2 ih2 =>
      cases eps with
      | nil => simp [zipWithPad, List.zipWith]
      | cons e es =>
        simp only [zipWithPad, List.zipWith, List.sum_cons]
        rw [ih2 es]
        simp [List.zipWith]
  | cons h1 t1 ih1 =>
    cases l2 with
    | nil =>
      cases eps with
      | nil => simp [zipWithPad, List.zipWith]
      | cons e es =>
        simp only [zipWithPad, List.zipWith, List.sum_cons]
        have := ih1 [] es
        simp only [List.zipWith, List.sum_nil, add_zero] at this
        rw [this]
        simp only [add_zero, List.sum_nil]
    | cons h2 t2 =>
      cases eps with
      | nil => simp [zipWithPad, List.zipWith]
      | cons e es =>
        simp only [zipWithPad, List.zipWith, List.sum_cons]
        rw [ih1 t2 es]
        push_cast
        ring

/-- linearSum of negated coefficients equals negation of linearSum -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3c906d8899028f064ac01abf4b1db912db27469` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
