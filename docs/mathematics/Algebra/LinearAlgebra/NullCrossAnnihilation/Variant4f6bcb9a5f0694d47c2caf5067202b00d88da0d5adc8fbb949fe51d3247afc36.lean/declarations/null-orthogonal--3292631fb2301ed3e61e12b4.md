# null_orthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dd79c99-109f-f88b-3f2e-5704dd655d44",
  "kind": "theorem",
  "lexical_name": "null_orthogonal",
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
  "slug": "null-orthogonal--3292631fb2301ed3e61e12b4",
  "source": {
    "blob": "bc238d3326ed671aa58ca96b1659bc75b8eea490",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/NullCrossAnnihilation/Variant4f6bcb9a5f0694d47c2caf5067202b00d88da0d5adc8fbb949fe51d3247afc36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3292631fb2301ed3e61e12b48932a78bb6965e01442266452bb2438ec487935f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NullCrossAnnihilation/Variant4f6bcb9a5f0694d47c2caf5067202b00d88da0d5adc8fbb949fe51d3247afc36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dd79c99-109f-f88b-3f2e-5704dd655d44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem null_orthogonal
    (G : PositiveForm V) {x : V} (hx : G.form x x = 0) (y : V) :
    G.form x y = 0 := by
  by_contra hxy
  let b : ℝ := G.form x y
  let c : ℝ := G.form y y
  let t : ℝ := -(c + 1) / (2 * b)
  have hb : b ≠ 0 := by
    simpa [b] using hxy
  have hc : 0 ≤ c := by
    simpa [c] using G.nonnegative y
  have hsymm : G.form y x = G.form x y := G.symmetric y x
  have hexpand :
      G.form (t • x + y) (t • x + y) =
        t * t * G.form x x +
          t * G.form x y +
          t * G.form y x +
          G.form y y := by
    rw [G.add_left, G.add_right, G.add_right]
    simp only [G.smul_left, G.smul_right]
    ring
  have hnonneg := G.nonnegative (t • x + y)
  rw [hexpand, hx, hsymm] at hnonneg
  have ht :
      t * G.form x y + t * G.form x y + G.form y y = -1 := by
    change t * b + t * b + c = -1
    dsimp [t]
    field_simp [hb]
    ring
  simp only [mul_zero, zero_add] at hnonneg
  rw [ht] at hnonneg
  linarith

/-- By symmetry, null directions are orthogonal in the second argument as well. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NullCrossAnnihilation/Variant4f6bcb9a5f0694d47c2caf5067202b00d88da0d5adc8fbb949fe51d3247afc36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NullCrossAnnihilation/Variant4f6bcb9a5f0694d47c2caf5067202b00d88da0d5adc8fbb949fe51d3247afc36.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc238d3326ed671aa58ca96b1659bc75b8eea490` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
