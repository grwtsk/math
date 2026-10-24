# realAddHom_to_int_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:654d622f-f834-a44f-a6df-bf6f24784bea",
  "kind": "theorem",
  "lexical_name": "realAddHom_to_int_eq_zero",
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
  "slug": "realaddhom-to-int-eq-zero--86b3ffb24267445b52eae23c",
  "source": {
    "blob": "33710645eeea127159970acad41da190a2445fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 177,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86b3ffb24267445b52eae23c00b0d884231a4df490903129952165918340f607",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:654d622f-f834-a44f-a6df-bf6f24784bea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realAddHom_to_int_eq_zero (f : ℝ →+ ℤ) : f = 0 := by
  ext x
  by_contra hx
  let n : ℕ := Int.natAbs (f x) + 1
  have hnpos : 0 < n := Nat.succ_pos _
  let y : ℝ := x / n
  have hxy : n • y = x := by
    rw [nsmul_eq_mul]
    dsimp [y]
    field_simp
  have hdiv : (n : ℤ) ∣ f x := by
    refine ⟨f y, ?_⟩
    rw [← hxy, map_nsmul]
    simp only [nsmul_eq_mul]
  have hle : n ≤ Int.natAbs (f x) := by
    exact Int.natAbs_le_of_dvd_ne_zero hdiv hx
  exact (Nat.not_succ_le_self (Int.natAbs (f x))) hle

/-- In particular, no additive map on all real logarithmic scales can extend a
nonzero prime coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33710645eeea127159970acad41da190a2445fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
