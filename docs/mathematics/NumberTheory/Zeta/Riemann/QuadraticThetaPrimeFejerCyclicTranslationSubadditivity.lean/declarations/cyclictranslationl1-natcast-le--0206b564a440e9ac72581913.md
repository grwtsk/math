# cyclicTranslationL1_natCast_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac1894f9-8b79-1c73-7fe2-cc5c47281317",
  "kind": "theorem",
  "lexical_name": "cyclicTranslationL1_natCast_le",
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
  "slug": "cyclictranslationl1-natcast-le--0206b564a440e9ac72581913",
  "source": {
    "blob": "98650995823c6291507b2d5277fc32f4154694e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0206b564a440e9ac72581913eeb84239eedfcedf8e5ac7d2c5036e7258f7d39b",
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

Occurrence: `result:ac1894f9-8b79-1c73-7fe2-cc5c47281317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicTranslationL1_natCast_le
    {L : ℕ}
    (f : ZMod L → ℝ)
    (k : ℕ) :
    cyclicTranslationL1 f (k : ZMod L) ≤
      (k : ℝ) * cyclicTranslationL1 f (1 : ZMod L) := by
  induction k with
  | zero =>
      simp [cyclicTranslationL1]
  | succ k ih =>
      have hsub :=
        cyclicTranslationL1_add_le f
          (k : ZMod L) (1 : ZMod L)
      have hnonneg :=
        cyclicTranslationL1_nonnegative f (1 : ZMod L)
      rw [← Nat.cast_succ] at hsub
      calc
        cyclicTranslationL1 f ((k + 1 : ℕ) : ZMod L)
          ≤ cyclicTranslationL1 f (k : ZMod L) +
              cyclicTranslationL1 f (1 : ZMod L) := hsub
        _ ≤ (k : ℝ) * cyclicTranslationL1 f (1 : ZMod L) +
              cyclicTranslationL1 f (1 : ZMod L) := by
                linarith
        _ = ((k + 1 : ℕ) : ℝ) *
              cyclicTranslationL1 f (1 : ZMod L) := by
                push_cast
                ring

/-- Any cyclic shift costs at most its cyclic distance times the one-step
translation L1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationSubadditivity.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98650995823c6291507b2d5277fc32f4154694e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
