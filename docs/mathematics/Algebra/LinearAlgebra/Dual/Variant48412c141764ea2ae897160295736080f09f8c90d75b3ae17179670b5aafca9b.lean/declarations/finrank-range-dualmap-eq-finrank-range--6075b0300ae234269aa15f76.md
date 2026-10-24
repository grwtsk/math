# finrank_range_dualMap_eq_finrank_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8adde6cd-ba95-15e0-1cd9-e90e30f2bace",
  "kind": "theorem",
  "lexical_name": "finrank_range_dualMap_eq_finrank_range",
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
  "slug": "finrank-range-dualmap-eq-finrank-range--6075b0300ae234269aa15f76",
  "source": {
    "blob": "dd807fa9e8b679edb68bc14f586a9f79f282f9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1551,
    "line": 1534,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6075b0300ae234269aa15f7669534f127a40c7fe30b9aeb8fe5ef3a9e1863808",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8adde6cd-ba95-15e0-1cd9-e90e30f2bace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1534–1551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_range_dualMap_eq_finrank_range (f : V₁ →ₗ[K] V₂) :
  -- Porting note: broken dot notation lean4#1910
    finrank K (LinearMap.range f.dualMap) = finrank K (LinearMap.range f) := by
  have that := Submodule.finrank_quotient_add_finrank (LinearMap.range f)
  -- Porting note: Again LinearEquiv.finrank_eq needs help
  let equiv := (Subspace.quotEquivAnnihilator <| LinearMap.range f)
  have eq := LinearEquiv.finrank_eq (R := K) (M := (V₂ ⧸ range f))
    (M₂ := { x // x ∈ Submodule.dualAnnihilator (range f) }) equiv
  rw [eq, ←ker_dualMap_eq_dualAnnihilator_range] at that
  -- Porting note: cannot convert at `this`?
  conv_rhs at that => rw [← Subspace.dual_finrank_eq]
  refine' add_left_injective (finrank K <| LinearMap.ker f.dualMap) _
  change _ + _ = _ + _
  rw [finrank_range_add_finrank_ker f.dualMap, add_comm, that]
#align linear_map.finrank_range_dual_map_eq_finrank_range LinearMap.finrank_range_dualMap_eq_finrank_range

/-- `f.dualMap` is injective if and only if `f` is surjective -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean#L1534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd807fa9e8b679edb68bc14f586a9f79f282f9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
