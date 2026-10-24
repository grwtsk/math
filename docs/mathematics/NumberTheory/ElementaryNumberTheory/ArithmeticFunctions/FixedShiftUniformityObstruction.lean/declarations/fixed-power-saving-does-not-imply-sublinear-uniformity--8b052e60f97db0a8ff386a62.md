# fixed_power_saving_does_not_imply_sublinear_uniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90450820-8691-2da3-1253-85a0528946ea",
  "kind": "theorem",
  "lexical_name": "fixed_power_saving_does_not_imply_sublinear_uniformity",
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
  "slug": "fixed-power-saving-does-not-imply-sublinear-uniformity--8b052e60f97db0a8ff386a62",
  "source": {
    "blob": "0c422a87588038f3824ad0152c177132b7e488fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 127,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b052e60f97db0a8ff386a62296632b89d18968a22dbc5ab53f184c712d5f74b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90450820-8691-2da3-1253-85a0528946ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_power_saving_does_not_imply_sublinear_uniformity :
    ¬ (∀ F : ℕ → ℕ → ℚ,
      (∀ N h : ℕ,
        |F N h| ≤ (((h * h + 1 : ℕ) : ℚ) / ((N + 1 : ℕ) : ℚ))) →
      EventuallySmallOnSquareWindow F (1 / 2 : ℚ)) := by
  intro himp
  have huniform :=
    himp squareShiftSpike squareShiftSpike_fixed_power_envelope
  exact (squareShiftSpike_not_uniform_on_sublinear_window
    (1 / 2 : ℚ) (by norm_num)) huniform

end GRWTSK.NumberTheory.FixedShiftUniformityObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c422a87588038f3824ad0152c177132b7e488fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
