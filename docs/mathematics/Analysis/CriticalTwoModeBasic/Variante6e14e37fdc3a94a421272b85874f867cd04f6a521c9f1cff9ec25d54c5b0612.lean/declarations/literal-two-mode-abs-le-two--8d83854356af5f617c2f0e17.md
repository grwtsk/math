# literal_two_mode_abs_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:740b00c9-1c7a-d7a0-85a5-599f8e621122",
  "kind": "theorem",
  "lexical_name": "literal_two_mode_abs_le_two",
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
  "slug": "literal-two-mode-abs-le-two--8d83854356af5f617c2f0e17",
  "source": {
    "blob": "e80692e7c6eb5a01be13737be28ddb4bc57a1f9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 29,
    "path": "GRWTSK/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d83854356af5f617c2f0e17e15441114d7983a5040fc3da8540e4a98a0f1426",
  "verification": {
    "reference": "docs/verification/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:740b00c9-1c7a-d7a0-85a5-599f8e621122`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_two_mode_abs_le_two (α t : ℝ) : |twoMode α t| ≤ 2 := by
  unfold twoMode
  exact (abs_add_le _ _).trans (by linarith [Real.abs_cos_le_one t, Real.abs_cos_le_one (α*t)])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80692e7c6eb5a01be13737be28ddb4bc57a1f9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
