# linearSum_map_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea774cad-52e8-4ddf-8a9f-8361a0a2a1ed",
  "kind": "theorem",
  "lexical_name": "linearSum_map_neg",
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
  "slug": "linearsum-map-neg--11c6b55edd05229cc81fbda6",
  "source": {
    "blob": "a3c906d8899028f064ac01abf4b1db912db27469",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 265,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11c6b55edd05229cc81fbda6e534b090155bc19534ba9a22421c7dae71b9921b",
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

Occurrence: `result:ea774cad-52e8-4ddf-8a9f-8361a0a2a1ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem linearSum_map_neg (l : List ℚ) (eps : NoiseAssignment) :
    linearSum (l.map (·.neg)) eps = -linearSum l eps := by
  simp only [linearSum]
  induction l generalizing eps with
  | nil => simp [List.zipWith]
  | cons h t ih =>
    cases eps with
    | nil => simp [List.zipWith]
    | cons e es =>
      simp only [List.map_cons, List.zipWith, List.sum_cons]
      rw [ih es]
      have : ((h.neg : ℚ) : ℝ) = -((h : ℚ) : ℝ) := by
        show ((-h : ℚ) : ℝ) = -(h : ℝ)
        exact Rat.cast_neg h
      rw [this]
      ring

/-! ## Soundness Proofs -/

/-- Constants are sound: const q represents q -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3c906d8899028f064ac01abf4b1db912db27469` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
