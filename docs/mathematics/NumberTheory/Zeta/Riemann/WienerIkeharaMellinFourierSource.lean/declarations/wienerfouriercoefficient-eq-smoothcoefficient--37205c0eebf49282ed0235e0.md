# wienerFourierCoefficient_eq_smoothCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9200988c-3fd0-2cf3-b4fa-9e147a9b6ea6",
  "kind": "theorem",
  "lexical_name": "wienerFourierCoefficient_eq_smoothCoefficient",
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
  "slug": "wienerfouriercoefficient-eq-smoothcoefficient--37205c0eebf49282ed0235e0",
  "source": {
    "blob": "c3fafc90b62748e4a8dc319333e5938b4d4139a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 213,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37205c0eebf49282ed0235e01c80d1e7fc14d5cc71fea95d4ee83d4594452dd8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9200988c-3fd0-2cf3-b4fa-9e147a9b6ea6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerFourierCoefficient_eq_smoothCoefficient
    (f : ℕ → ℂ) (Ψ : ℝ → ℂ) (g : 𝓢(ℝ, ℂ))
    (hplus : WienerPositiveSupport Ψ)
    (hFourier :
      ∀ y : ℝ, 0 < y →
        (𝓕 g) ((1 / (2 * Real.pi)) * Real.log y) =
          (y : ℂ) * Ψ y)
    {T : ℝ} (hT : 0 < T) (n : ℕ) :
    wienerFourierCoefficient f g T n =
      f n * Ψ ((n : ℝ) / T) / (T : ℂ) := by
  by_cases hn : n = 0
  · subst n
    simp [wienerFourierCoefficient, wiener_test_zero hplus]
  · have hnr : 0 < (n : ℝ) := by
      exact_mod_cast Nat.pos_of_ne_zero hn
    have hy : 0 < (n : ℝ) / T := div_pos hnr hT
    have hnC : (n : ℂ) ≠ 0 := by
      exact_mod_cast hn
    have hTC : (T : ℂ) ≠ 0 := by
      exact_mod_cast hT.ne'
    simp only [wienerFourierCoefficient, if_neg hn]
    rw [hFourier _ hy]
    simp only [Complex.ofReal_div, Complex.ofReal_natCast]
    field_simp [hnC, hTC]

/-- The analytic Mellin tail change of variables y=exp(u), with
the *same* lower endpoint 1/T as in the historical Wiener source.

This uses the actual pinned change-of-variables theorem for vector
integrals over unbounded intervals, not a formal coordinate renaming.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3fafc90b62748e4a8dc319333e5938b4d4139a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
