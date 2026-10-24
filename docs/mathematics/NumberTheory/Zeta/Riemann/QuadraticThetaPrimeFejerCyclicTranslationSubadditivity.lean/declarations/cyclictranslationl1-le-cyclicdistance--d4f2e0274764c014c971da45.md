# cyclicTranslationL1_le_cyclicDistance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:723ff0c6-97bf-91ca-efd1-54ddd49dba1e",
  "kind": "theorem",
  "lexical_name": "cyclicTranslationL1_le_cyclicDistance",
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
  "slug": "cyclictranslationl1-le-cyclicdistance--d4f2e0274764c014c971da45",
  "source": {
    "blob": "98650995823c6291507b2d5277fc32f4154694e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 95,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4f2e0274764c014c971da45c07aa10a6bbed83029c34a4285713af587819a86",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:723ff0c6-97bf-91ca-efd1-54ddd49dba1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicTranslationL1_le_cyclicDistance
    {L : ℕ}
    (hL : 0 < L)
    (f : ZMod L → ℝ)
    (r : ZMod L) :
    cyclicTranslationL1 f r ≤
      (min r.val (L - r.val) : ℕ) *
        cyclicTranslationL1 f (1 : ZMod L) := by
  have hforward :
      cyclicTranslationL1 f r ≤
        (r.val : ℝ) *
          cyclicTranslationL1 f (1 : ZMod L) := by
    have h :=
      cyclicTranslationL1_natCast_le f r.val
    simpa only [ZMod.natCast_zmod_val] using h
  have hvalle : r.val ≤ L := (r.val_lt).le
  have hreverseCast :
      ((L - r.val : ℕ) : ZMod L) = -r := by
    calc
      ((L - r.val : ℕ) : ZMod L)
        = (L : ZMod L) - (r.val : ZMod L) := by
            rw [Nat.cast_sub hvalle]
      _ = 0 - r := by
            rw [ZMod.natCast_self, ZMod.natCast_zmod_val]
      _ = -r := by simp
  have hreverse :
      cyclicTranslationL1 f r ≤
        ((L - r.val : ℕ) : ℝ) *
          cyclicTranslationL1 f (1 : ZMod L) := by
    rw [← cyclicTranslationL1_neg f r]
    rw [← hreverseCast]
    exact cyclicTranslationL1_natCast_le f (L - r.val)
  by_cases hmin : r.val ≤ L - r.val
  · rw [Nat.min_eq_left hmin]
    exact hforward
  · have hrev : L - r.val ≤ r.val := Nat.le_of_not_ge hmin
    rw [Nat.min_eq_right hrev]
    exact hreverse

/-- The sharp-prefix telescoping supplier is now source-proved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98650995823c6291507b2d5277fc32f4154694e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
