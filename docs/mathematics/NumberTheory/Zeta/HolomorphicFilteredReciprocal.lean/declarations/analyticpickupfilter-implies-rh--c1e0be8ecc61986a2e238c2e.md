# AnalyticPickupFilter.implies_rh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfdb5dd5-fbba-a151-c203-c2134b03927d",
  "kind": "theorem",
  "lexical_name": "AnalyticPickupFilter.implies_rh",
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
  "slug": "analyticpickupfilter-implies-rh--c1e0be8ecc61986a2e238c2e",
  "source": {
    "blob": "1069a6fc82ac378b2e56eb34ae269cdbc577e07f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 73,
    "path": "GRWTSK/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1e0be8ecc61986a2e238c2e93ff2eeb2f304cac72c41e2ee80e386279cb9cfe",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfdb5dd5-fbba-a151-c203-c2134b03927d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticPickupFilter.implies_rh (port : AnalyticPickupFilter) :
    _root_.RiemannHypothesis := by
  intro s zero nontrivial notOne
  have original : NontrivialZetaZero s := ⟨zero, nontrivial, notOne⟩
  have upper : s.re ≤ (1 / 2 : ℝ) := by
    by_contra! strict
    exact port.excludes_right_zeros strict notOne zero
  have lower : (1 / 2 : ℝ) ≤ s.re := by
    by_contra! strict
    have reflected := original.reflect
    have right : (1 / 2 : ℝ) < (zeroReflect s).re := by
      simp only [zeroReflect, Complex.sub_re, Complex.one_re]
      linarith
    exact port.excludes_right_zeros right reflected.2.2 reflected.1
  exact le_antisymm upper lower

namespace FrequencyAxisFixture

/-- This is an auxiliary filter, not an asserted source-zeta or arithmetic port. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1069a6fc82ac378b2e56eb34ae269cdbc577e07f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
