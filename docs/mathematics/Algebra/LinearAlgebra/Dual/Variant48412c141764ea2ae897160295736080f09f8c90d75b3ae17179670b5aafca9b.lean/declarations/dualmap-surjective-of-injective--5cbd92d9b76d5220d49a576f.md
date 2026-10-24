# dualMap_surjective_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0310d810-2acc-c421-e9db-f52dc212c6d0",
  "kind": "theorem",
  "lexical_name": "dualMap_surjective_of_injective",
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
  "slug": "dualmap-surjective-of-injective--5cbd92d9b76d5220d49a576f",
  "source": {
    "blob": "dd807fa9e8b679edb68bc14f586a9f79f282f9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1413,
    "line": 1401,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cbd92d9b76d5220d49a576f20fbbe59448f1a09d47f6e8e764c55c78d1abb8a",
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

Occurrence: `result:0310d810-2acc-c421-e9db-f52dc212c6d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1401–1413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dualMap_surjective_of_injective {f : V₁ →ₗ[K] V₂} (hf : Function.Injective f) :
    Function.Surjective f.dualMap := by
  intro φ
  let f' := LinearEquiv.ofInjective f hf
  use Subspace.dualLift (range f) (f'.symm.dualMap φ)
  ext x
  rw [LinearMap.dualMap_apply, Subspace.dualLift_of_mem (mem_range_self f x),
    LinearEquiv.dualMap_apply]
  congr 1
  exact LinearEquiv.symm_apply_apply f' x
#align linear_map.dual_map_surjective_of_injective LinearMap.dualMap_surjective_of_injective

  -- Porting note: broken dot notation lean4#1910 LinearMap.range
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean#L1401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd807fa9e8b679edb68bc14f586a9f79f282f9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
