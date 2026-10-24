# stripBudget_div_height_sq_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ff339d9-06a5-192a-4137-15d0e49e9573",
  "kind": "theorem",
  "lexical_name": "stripBudget_div_height_sq_tendsto_zero",
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
  "slug": "stripbudget-div-height-sq-tendsto-zero--e2eeab813b89214a3e67fb02",
  "source": {
    "blob": "6a8d7935113a23e1e6009ffcb44f54a0785efce3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 104,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2eeab813b89214a3e67fb023b5a2349bc8cbc297cb5de6cc56b4fdb260d5017",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ff339d9-06a5-192a-4137-15d0e49e9573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stripBudget_div_height_sq_tendsto_zero :
    Tendsto (fun N : ℕ => stripBudget N / (separatedHeight N) ^ 2)
      atTop (𝓝 0) := by
  have ht := (centralBudget_div_height_sq_tendsto_zero.add
    (const_div_height_sq_tendsto_zero
      (mangoldtLineMass + ‖Complex.log (2 * (Real.pi : ℂ))‖ +
        112 * Real.log envelope + 3 * Real.pi / 2))).add
    (inv_height_tendsto_zero.const_mul (56 * Real.pi))
  convert ht using 1
  · funext N
    rw [stripBudget_eq_affine_height]
    field_simp [(separatedHeight_pos N).ne']
  · simp

/-- Fixed geometric coefficients may be transported; index-dependent ones may not. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a8d7935113a23e1e6009ffcb44f54a0785efce3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
