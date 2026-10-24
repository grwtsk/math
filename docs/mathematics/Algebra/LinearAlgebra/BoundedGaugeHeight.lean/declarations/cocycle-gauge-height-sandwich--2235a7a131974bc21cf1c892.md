# cocycle_gauge_height_sandwich

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c47df45-6ff0-597e-e8e9-cbe18b22ae96",
  "kind": "theorem",
  "lexical_name": "cocycle_gauge_height_sandwich",
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
  "slug": "cocycle-gauge-height-sandwich--2235a7a131974bc21cf1c892",
  "source": {
    "blob": "ff2c5ac6814b8175e971826dca08894ab0c009cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 81,
    "path": "GRWTSK/LinearAlgebra/BoundedGaugeHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2235a7a131974bc21cf1c8927ddef5e15c32791dbc5ee58331d76e5a2145c598",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BoundedGaugeHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c47df45-6ff0-597e-e8e9-cbe18b22ae96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cocycle_gauge_height_sandwich
    {S G : Type*} [Group G]
    (T : S → S) (A B : S → G) (height : G → ℝ) (C : ℝ)
    (hNonneg : ∀ g : G, 0 ≤ height g)
    (hMul : ∀ g k : G, height (g * k) ≤ height g * height k)
    (hC : 0 ≤ C)
    (hB : ∀ y, height (B y) ≤ C)
    (hInvB : ∀ y, height ((B y)⁻¹) ≤ C)
    (n : ℕ) (x : S) :
    height (cocycleProduct T (cocycleGaugeTransfer T A B) n x) ≤
        C ^ 2 * height (cocycleProduct T A n x) ∧
      height (cocycleProduct T A n x) ≤
        C ^ 2 *
          height (cocycleProduct T (cocycleGaugeTransfer T A B) n x) := by
  let raw := cocycleProduct T A n x
  let gauged := cocycleProduct T (cocycleGaugeTransfer T A B) n x
  have htel : gauged =
      (B (T^[n] x))⁻¹ * raw * B x :=
    cocycleProduct_gauge T A B n x
  have hback : raw = B (T^[n] x) * gauged * (B x)⁻¹ := by
    rw [htel]
    group
  constructor
  · rw [htel]
    exact height_triple_of_bounded_ends height hNonneg hMul C hC
      ((B (T^[n] x))⁻¹) raw (B x)
      (hInvB (T^[n] x)) (hB x)
  · rw [hback]
    exact height_triple_of_bounded_ends height hNonneg hMul C hC
      (B (T^[n] x)) gauged ((B x)⁻¹)
      (hB (T^[n] x)) (hInvB x)

end GRWTSK.LinearAlgebra.BoundedGaugeHeight
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/BoundedGaugeHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/BoundedGaugeHeight.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff2c5ac6814b8175e971826dca08894ab0c009cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
