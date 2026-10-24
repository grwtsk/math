# source_second_eq_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c67385e-cfc8-ec57-bede-53db8d7071a4",
  "kind": "theorem",
  "lexical_name": "source_second_eq_explicit",
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
  "slug": "source-second-eq-explicit--9a47dd9b5e4e79d5cb75f886",
  "source": {
    "blob": "ce7d4ef34ed617f586ba17699d73a612f49b9a19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 27,
    "path": "GRWTSK/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a47dd9b5e4e79d5cb75f8864a0eeb2dd019cdb7f3602607f3e957526afb60b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c67385e-cfc8-ec57-bede-53db8d7071a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_second_eq_explicit {A : ℝ} (hA : 0 < A) :
    sourceSecond A = Realization.explicitSecondDerivative A := by
  funext x
  have scaled : x / A ∈ Icc (-1 : ℝ) 1 ↔ x ∈ Icc (-A) A := scaled_mem_iff hA x
  unfold sourceSecond clippedProfile
    Realization.explicitSecondDerivative
  rw [Real.rpow_neg hA.le, ← Real.sqrt_eq_rpow]
  by_cases hx : x ∈ Icc (-A) A
  · simp only [if_pos (scaled.mpr hx), indicator_of_mem hx]
    unfold bumpSecondPolynomial
      Realization.secondInterior
    field_simp
    ring
  · simp [hx, show x / A ∉ Icc (-1 : ℝ) 1 from fun h ↦ hx (scaled.mp h)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7d4ef34ed617f586ba17699d73a612f49b9a19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
