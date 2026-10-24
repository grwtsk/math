# B_affine_periodic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6407c4e-5409-2de3-6ddd-33cd007e5813",
  "kind": "theorem",
  "lexical_name": "B_affine_periodic",
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
  "slug": "b-affine-periodic--f9c553eed0d511f848f8018e",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3354,
    "line": 3332,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9c553eed0d511f848f8018e6b2997790e047e25122f08fb25eb5163ea367876",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6407c4e-5409-2de3-6ddd-33cd007e5813`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3332–3354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem B_affine_periodic (ν ε : ℝ) (_hν : ν > 0) (z : ℂ) (m : ℤ)
    (hw : -2 * π * I * z + ν ≠ 0)
    (hwm : -2 * π * I * (z - m) + ν ≠ 0) :
    B ε (-2 * π * I * (z - m) + ν) =
      B ε (-2 * π * I * z + ν) + 2 * π * I * m * Phi_circ ν ε z := by
  unfold B Phi_circ coth
  have h_tanh_periodic :
      Complex.tanh ((-2 * Real.pi * I * (z - m) + ν) / 2) =
        Complex.tanh ((-2 * Real.pi * I * z + ν) / 2) := by
    rw [show (-2 * π * I * (z - m) + ν) / 2 =
      (-2 * π * I * z + ν) / 2 + π * I * m by ring]
    exact tanh_add_int_mul_pi_I _ m
  grind

@[blueprint
  "phi_star-affine-periodic"
  (title := "$\\Phi^{\\pm,\\ast}_\\nu$ affine periodic")
  (statement := /-- For any integer $m$,
$$ \Phi^{\pm,\star}_{\nu}(z-m) = \Phi^{\pm,\star}_{\nu}(z) + m\, \Phi^{\pm,\circ}_{\nu}(z). $$
    -/)
  (proof := /-- Follows from previous lemma. -/)
  (latexEnv := "sublemma")
  (discussion := 1082)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L3332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
