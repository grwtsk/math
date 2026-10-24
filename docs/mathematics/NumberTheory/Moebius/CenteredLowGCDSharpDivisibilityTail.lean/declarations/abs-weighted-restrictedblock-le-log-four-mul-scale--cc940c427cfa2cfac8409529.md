# abs_weighted_restrictedBlock_le_log_four_mul_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6146d59f-f68e-3f69-ff69-9b524265222b",
  "kind": "theorem",
  "lexical_name": "abs_weighted_restrictedBlock_le_log_four_mul_scale",
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
  "slug": "abs-weighted-restrictedblock-le-log-four-mul-scale--cc940c427cfa2cfac8409529",
  "source": {
    "blob": "2642927ce9edc1680b15c445153abd720c29efed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 216,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc940c427cfa2cfac84095291471b0dead498401b1df84209cd835c2e63c875c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6146d59f-f68e-3f69-ff69-9b524265222b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_weighted_restrictedBlock_le_log_four_mul_scale
    {X r n : ℕ}
    (hX : 1 ≤ X)
    {w : ℕ → ℝ}
    (hw : ∀ q ∈ octaveIndexSet X,
      w q ∈ Set.Icc (0 : ℝ) 1)
    (hn : n ∈ divisibleOctaveIndexSet X r)
    (hr : 0 < r) :
    |w n * restrictedProductMobiusLogBlock r (n / r)| ≤
      Real.log ((4 * X : ℕ) : ℝ) := by
  rcases mem_divisibleOctaveIndexSet_iff.mp hn with
    ⟨hnOct, hrn⟩
  have hnpos := (octave_mem_bounds hnOct).1
  have hqpos : 0 < n / r :=
    Nat.div_pos (Nat.le_of_dvd hnpos hrn) hr
  have hblock :=
    abs_restrictedProductMobiusLogBlock_le_log
      (r := r) hqpos
  have hqle : n / r ≤ 4 * X :=
    (Nat.div_le_self n r).trans (octave_mem_bounds hnOct).2
  have hlogle :
      Real.log ((n / r : ℕ) : ℝ) ≤
        Real.log ((4 * X : ℕ) : ℝ) :=
    Real.log_le_log
      (by exact_mod_cast hqpos)
      (by exact_mod_cast hqle)
  have hwn := hw n hnOct
  have hwabs : |w n| ≤ 1 := by
    rw [abs_of_nonneg hwn.1]
    exact hwn.2
  rw [abs_mul]
  calc
    |w n| * |restrictedProductMobiusLogBlock r (n / r)| ≤
      1 * |restrictedProductMobiusLogBlock r (n / r)| := by
        exact mul_le_mul_of_nonneg_right hwabs (abs_nonneg _)
    _ ≤ Real.log ((n / r : ℕ) : ℝ) := by simpa using hblock
    _ ≤ Real.log ((4 * X : ℕ) : ℝ) := hlogle

/-- Sharp finite divisibility-tail estimate for every `[0,1]` octave weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2642927ce9edc1680b15c445153abd720c29efed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
