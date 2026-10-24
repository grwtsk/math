# ι_range_map_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbcf362039a1c89e3e3344372fc6f723435d003e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/cefa351b49e8108fa79963ca126e6df11d0a278f5ad76862b717b137c53663e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb0eb4dc-c41c-3efb-a006-a61817b6777c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:117e298c-eb5c-2104-6ee5-200c91d691b8",
  "kind": "theorem",
  "lexical_name": "ι_range_map_lift",
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
  "slug": "range-map-lift--98b4e8b57d2ba8cd1eba4e8f",
  "source": {
    "blob": "fbcf362039a1c89e3e3344372fc6f723435d003e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 314,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcefa351b49e8108fa79963ca126e6df11d0a278f5ad76862b717b137c53663e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98b4e8b57d2ba8cd1eba4e8f6ddc8cc8bb9f20c443c2da29fd5e7e0e9e32e4a9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantcefa351b49e8108fa79963ca126e6df11d0a278f5ad76862b717b137c53663e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:117e298c-eb5c-2104-6ee5-200c91d691b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_range_map_lift (f : M →ₗ[R] A) (cond : ∀ m, f m * f m = algebraMap _ _ (Q m)) :
    (LinearMap.range (ι Q)).map (lift Q ⟨f, cond⟩).toLinearMap = LinearMap.range f := by
  rw [← LinearMap.range_comp, ι_comp_lift]

section Map

variable {M₁ M₂ M₃ : Type*}
variable [AddCommGroup M₁] [AddCommGroup M₂] [AddCommGroup M₃]
variable [Module R M₁] [Module R M₂] [Module R M₃]
variable {Q₁ : QuadraticForm R M₁} {Q₂ : QuadraticForm R M₂} {Q₃ : QuadraticForm R M₃}

/-- Any linear map that preserves the quadratic form lifts to an `AlgHom` between algebras.

See `CliffordAlgebra.equivOfIsometry` for the case when `f` is a `QuadraticForm.IsometryEquiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantcefa351b49e8108fa79963ca126e6df11d0a278f5ad76862b717b137c53663e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantcefa351b49e8108fa79963ca126e6df11d0a278f5ad76862b717b137c53663e7.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbcf362039a1c89e3e3344372fc6f723435d003e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
