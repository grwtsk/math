# source_characteristic_fiber_jacobson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9dacccfb-3427-2a44-63aa-d5b9b9d81736",
  "kind": "theorem",
  "lexical_name": "source_characteristic_fiber_jacobson",
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
  "slug": "source-characteristic-fiber-jacobson--610b6742a2f206e53f606227",
  "source": {
    "blob": "e599976f5ca7bcd0f6a97508b75d631c51161e4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444bSourceInventoryA/Variant5591d15d8e16a750fe2222f9fdeab717e997dd3bdc24b72f7d251a316412af06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:610b6742a2f206e53f606227859397e28e949c4cfc003d6bd54d0e7c12d5fb87",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444bSourceInventoryA/Variant5591d15d8e16a750fe2222f9fdeab717e997dd3bdc24b72f7d251a316412af06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dacccfb-3427-2a44-63aa-d5b9b9d81736`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_characteristic_fiber_jacobson (A ξ : ℝ) :
    Ring.jacobson (LowerPowerCharacteristicFiber A ξ) =
      Ideal.pi fun n : LowerPowerLabel A ↦
        Ring.jacobson (CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ)) := by
  apply le_antisymm
  · intro x hx
    change ∀ n : LowerPowerLabel A,
      x n ∈ Ring.jacobson (CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ))
    intro n
    exact Ring.le_comap_jacobson
      (Pi.evalRingHom (fun n : LowerPowerLabel A ↦
        CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ)) n) hx
  · intro x hx
    have hs : x ^ 2 = 0 := by
      funext n
      by_cases hc : ((chi ξ (n : ℕ)).re : ℂ) ^ 2 = 1
      · apply repeated_kernel_square_zero _ hc
        rw [repeated_kernel_eq_jacobson]
        exact hx n
      · have hn : x n = 0 := by
          have hm := hx n
          change x n ∈ Ring.jacobson (CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ)) at hm
          rw [jacobson_eq_bot_of_parameter_sq_ne_one _ hc, Ideal.mem_bot] at hm
          exact hm
        simp [hn]
    rw [← Ideal.jacobson_bot]
    exact Ideal.radical_le_jacobson (mem_nilradical.mpr ⟨2, hs⟩)

/-- Actual matrix evaluation removes exactly these coordinatewise characteristic radicals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444bSourceInventoryA/Variant5591d15d8e16a750fe2222f9fdeab717e997dd3bdc24b72f7d251a316412af06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444bSourceInventoryA/Variant5591d15d8e16a750fe2222f9fdeab717e997dd3bdc24b72f7d251a316412af06.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e599976f5ca7bcd0f6a97508b75d631c51161e4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
