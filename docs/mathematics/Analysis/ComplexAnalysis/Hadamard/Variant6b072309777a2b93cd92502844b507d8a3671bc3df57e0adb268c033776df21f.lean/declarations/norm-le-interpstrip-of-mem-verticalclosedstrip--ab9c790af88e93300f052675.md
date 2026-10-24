# norm_le_interpStrip_of_mem_verticalClosedStrip₀₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f29236f-b726-0457-5c2c-74b86ed6b815",
  "kind": "lemma",
  "lexical_name": "norm_le_interpStrip_of_mem_verticalClosedStrip₀₁",
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
  "slug": "norm-le-interpstrip-of-mem-verticalclosedstrip--ab9c790af88e93300f052675",
  "source": {
    "blob": "66f8e734f866c4ad7b9ec241fb86967a95d293e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 474,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab9c790af88e93300f052675a763abd93163c410dea4c85ad77d19b78771092d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f29236f-b726-0457-5c2c-74b86ed6b815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_le_interpStrip_of_mem_verticalClosedStrip₀₁ (f : ℂ → E) {z : ℂ}
    (hz : z ∈ verticalClosedStrip 0 1) (hd : DiffContOnCl ℂ f (verticalStrip 0 1))
    (hB : BddAbove ((norm ∘ f) '' verticalClosedStrip 0 1)) :
    ‖f z‖ ≤ ‖interpStrip f z‖ := by
  apply le_on_closure (fun w hw ↦ norm_le_interpStrip_of_mem_verticalStrip_zero f w hd hB hw)
    (Continuous.comp_continuousOn' continuous_norm hd.2)
    (Continuous.comp_continuousOn' continuous_norm (diffContOnCl_interpStrip f).2)
  rwa [verticalClosedStrip, ← closure_Ioo zero_ne_one, ← closure_preimage_re] at hz

/-- **Hadamard three-line theorem** on `re ⁻¹' [0, 1]` (Variant in simpler terms): Let `f` be a
bounded function, continuous on the closed strip `re ⁻¹' [0, 1]` and differentiable on open strip
`re ⁻¹' (0, 1)`. If, for all `z.re = 0`, `‖f z‖ ≤ a` for some `a ∈ ℝ` and, similarly, for all
`z.re = 1`, `‖f z‖ ≤ b` for some `b ∈ ℝ` then for all `z` in the closed strip
`re ⁻¹' [0, 1]` the inequality `‖f(z)‖ ≤ a ^ (1 - z.re) * b ^ z.re` holds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66f8e734f866c4ad7b9ec241fb86967a95d293e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
