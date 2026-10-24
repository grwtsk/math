# source_characteristic_fiber_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:370065ec-0177-d008-c94b-a32497ec341d",
  "kind": "theorem",
  "lexical_name": "source_characteristic_fiber_finrank",
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
  "slug": "source-characteristic-fiber-finrank--c8a204fa02a9ec60e115aa5a",
  "source": {
    "blob": "e599976f5ca7bcd0f6a97508b75d631c51161e4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444bSourceInventoryA/Variant5591d15d8e16a750fe2222f9fdeab717e997dd3bdc24b72f7d251a316412af06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8a204fa02a9ec60e115aa5a913f85fd65f740d8b4fa9b8a4e45cd20ac7ba8b5",
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

Occurrence: `result:370065ec-0177-d008-c94b-a32497ec341d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_characteristic_fiber_finrank (A ξ : ℝ) :
    Module.finrank ℂ (LowerPowerCharacteristicFiber A ξ) =
      2 * (lowerPowerInventory A).card := by
  classical
  let : ∀ n : LowerPowerLabel A,
      Module.Finite ℂ (CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ)) :=
    fun _ ↦ characteristic_fiber_finite _
  rw [Module.finrank_pi_fintype]
  simp [characteristic_fiber_finrank, mul_comm]

/-- The canonical simultaneous phase-one equivalence transports the native radical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444bSourceInventoryA/Variant5591d15d8e16a750fe2222f9fdeab717e997dd3bdc24b72f7d251a316412af06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444bSourceInventoryA/Variant5591d15d8e16a750fe2222f9fdeab717e997dd3bdc24b72f7d251a316412af06.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e599976f5ca7bcd0f6a97508b75d631c51161e4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
