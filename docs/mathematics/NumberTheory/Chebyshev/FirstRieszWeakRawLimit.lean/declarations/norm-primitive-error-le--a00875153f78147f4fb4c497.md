# norm_primitive_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c7ea4fa-bd58-5f40-7c60-99f784652ab0",
  "kind": "theorem",
  "lexical_name": "norm_primitive_error_le",
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
  "slug": "norm-primitive-error-le--a00875153f78147f4fb4c497",
  "source": {
    "blob": "74db95b6f866bf20c6abbed0f97e63aafb143151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 50,
    "path": "GRWTSK/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a00875153f78147f4fb4c49732d154aa4a9404359d65bb6a87203b0cfc23d44b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c7ea4fa-bd58-5f40-7c60-99f784652ab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_primitive_error_le (N : ℕ) (x T : ℝ)
    (hN : 3 ≤ N) (hx : 1 < x) (hxN : x ≤ N) (hT : 2 ≤ T) :
    ‖(firstRieszPrefix N x:ℂ)-finiteClassicalPrimitive x T‖ ≤ firstRieszTailBudget x T := by
  rw [firstRieszPrefix_eq_classical_correction N x hN hx hxN]
  have he : (x:ℂ)^2/2 + fullRieszZeroValue x + (correction x:ℂ) +
      (x:ℂ)*sourceSlope + sourceIntercept - finiteClassicalPrimitive x T =
      fullRieszZeroValue x-finiteRieszZeroHead x T := by unfold finiteClassicalPrimitive; ring
  rw [he]
  exact norm_fullRieszZeroValue_sub_head x T hx hT

/-- A genuine raw-integral error bound, charging both actual endpoint tails. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74db95b6f866bf20c6abbed0f97e63aafb143151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
