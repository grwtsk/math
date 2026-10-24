# compute_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ea84323-0a9b-efc1-deda-dfee10320102",
  "kind": "theorem",
  "lexical_name": "compute_sound",
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
  "slug": "compute-sound--e6c541b7b9f1147a4b9d2ac2",
  "source": {
    "blob": "48bec43ae1bb96ed652f9e225fc6fa33416eb3a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6c541b7b9f1147a4b9d2ac2637fa7b5dba00a51c3a9d620a72d1c2453dda865",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ea84323-0a9b-efc1-deda-dfee10320102`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compute_sound (N : ℕ) (c : QComplex) (p : Plan N) (hp : Admissible N c p) :
    ‖riemannZeta (QComplex.embed c) - QComplex.embed (compute N c p).value.value‖ ≤
        ((compute N c p).value.error : ℝ) ∧
      ‖deriv riemannZeta (QComplex.embed c) - QComplex.embed (compute N c p).slope.value‖ ≤
        ((compute N c p).slope.error : ℝ) := by
  have hr : (0 : ℝ) < (p.cauchyRadius : ℝ) := by exact_mod_cast hp.1
  have hc : (p.cauchyRadius : ℝ) ≤ (QComplex.embed c).re := by
    change (p.cauchyRadius : ℝ) ≤ (c.re : ℝ)
    exact (Rat.cast_le (K := ℝ)).2 hp.2.1
  have hf := finite_sound N c p hp
  have ha := center_enclosures_of_finite N (QComplex.embed c) (p.cauchyRadius : ℝ)
    hr hc (center_ne_one N c p hp) (QComplex.embed (finiteValueQ N c p))
    (QComplex.embed (finiteSlopeQ N c p)) (finiteValueErrorQ N c p : ℝ)
    (finiteSlopeErrorQ N c p : ℝ) hf.1 hf.2
  constructor
  · apply initialState_sound p.valueBits (finiteValueQ N c p)
      (FiniteNewtonCenter.diskBudgetQ N c 0 + finiteValueErrorQ N c p)
    simpa only [Rat.cast_add, FiniteNewtonCenter.cast_diskBudgetQ, Rat.cast_zero] using ha.1
  · apply initialState_sound p.slopeBits (finiteSlopeQ N c p)
      (FiniteNewtonCenter.diskBudgetQ N c p.cauchyRadius / p.cauchyRadius + finiteSlopeErrorQ N c p)
    simpa only [Rat.cast_add, Rat.cast_div, FiniteNewtonCenter.cast_diskBudgetQ] using ha.2

/-- Acceptance is tied to the actual source at the externally fixed exact center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48bec43ae1bb96ed652f9e225fc6fa33416eb3a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
