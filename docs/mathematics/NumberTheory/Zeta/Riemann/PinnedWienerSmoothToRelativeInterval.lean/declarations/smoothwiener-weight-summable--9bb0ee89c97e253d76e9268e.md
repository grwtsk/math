# smoothWiener_weight_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be053b4e-2f57-5870-fdfc-919e77040efd",
  "kind": "theorem",
  "lexical_name": "smoothWiener_weight_summable",
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
  "slug": "smoothwiener-weight-summable--9bb0ee89c97e253d76e9268e",
  "source": {
    "blob": "d9074062354b71faefd2782637089a753dd3d46f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bb0ee89c97e253d76e9268ea0789785aac45a386b6dd673b7948aefe684de52",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be053b4e-2f57-5870-fdfc-919e77040efd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothWiener_weight_summable
    (f : ℕ → ℝ) {φ : ℝ → ℝ}
    (hφ : HasCompactSupport φ)
    {T : ℝ} (hT : 0 < T) :
    Summable (fun n : ℕ => f n * φ ((n : ℝ) / T)) := by
  obtain ⟨M, hM⟩ := hφ.bddAbove.mono subset_closure
  apply summable_of_finite_support
  simp only [Function.support_mul]
  apply Set.Finite.inter_of_right
  rw [Set.finite_iff_bddAbove]
  refine ⟨⌈M * T⌉₊, ?_⟩
  intro n hn
  simpa using Nat.ceil_mono
    ((div_le_iff₀ hT).mp (hM hn))

/-- The literal arithmetic half-open interval test is also finitely
supported. This supplies the second summability hypothesis needed
for termwise tsum monotonicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9074062354b71faefd2782637089a753dd3d46f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
