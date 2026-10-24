# rhThrough_of_cubic_slope_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bf3c10d-342d-e9bf-c5dc-4ecbd5e4bb7e",
  "kind": "theorem",
  "lexical_name": "rhThrough_of_cubic_slope_cover",
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
  "slug": "rhthrough-of-cubic-slope-cover--56ab45304785315700d09b44",
  "source": {
    "blob": "54f9656ab7ecebbffb124712068f55c8661ce3aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 158,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56ab45304785315700d09b441f6881947225839d128ae936deb6ae2439345e4a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bf3c10d-342d-e9bf-c5dc-4ecbd5e4bb7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhThrough_of_cubic_slope_cover (height count : ℕ)
    (chart : Fin count → ℕ) (negative : Fin count → Bool)
    (t ar ai buffer radius : Fin count → ℚ) (slope : Fin count → Disk)
    (slopeEnclosure : ∀ i, Contains (slope i) (deriv riemannZeta (lineCenter (t i))))
    (accepted : ∀ i, accepts (chart i) (negative i) (t i) (ar i) (ai i)
      (slope i) (buffer i) (radius i) = true)
    (coverage : ∀ s, NontrivialZetaZero s → |s.im| ≤ (height : ℝ) →
      ∃ i : Fin count, s ∈ closedBall (lineCenter (t i)) (radius i : ℝ)) : RHThrough height := by
  intro s zero heightBound
  obtain ⟨i, member⟩ := coverage s zero heightBound
  exact critical_line_of_cubic_slope (chart i) (negative i) (t i) (ar i) (ai i)
    (slope i) (buffer i) (radius i) s zero member (slopeEnclosure i) (accepted i)

/-- The previous half-unit Cauchy buffer recovers its exact factor eight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54f9656ab7ecebbffb124712068f55c8661ce3aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
