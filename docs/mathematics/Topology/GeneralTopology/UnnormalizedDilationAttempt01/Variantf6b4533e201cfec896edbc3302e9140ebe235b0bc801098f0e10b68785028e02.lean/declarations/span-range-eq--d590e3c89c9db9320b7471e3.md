# span_range_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd71429a-c824-58d8-a212-f9c53bfd19c6",
  "kind": "theorem",
  "lexical_name": "span_range_eq",
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
  "slug": "span-range-eq--d590e3c89c9db9320b7471e3",
  "source": {
    "blob": "7960f32047be940ebcd1ce2276753faa837b0472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d590e3c89c9db9320b7471e336d1eb5e44b48633d35c60f3ebeb1489dabeae29",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd71429a-c824-58d8-a212-f9c53bfd19c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_range_eq {ι : Type*} (a : ι → ℝ) (ha : ∀ i, 0 < a i) (f : PositiveL2) :
    Submodule.span ℂ (range (fun i => unnormalized (a i) (ha i) f)) =
      Submodule.span ℂ (range (fun i => dilate (a i) (ha i) f)) := by
  apply le_antisymm
  · apply Submodule.span_le.mpr
    rintro _ ⟨i,rfl⟩
    rw [unnormalized_eq_inv_sqrt_smul]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i,rfl⟩)
  · apply Submodule.span_le.mpr
    rintro _ ⟨i,rfl⟩
    rw [dilate_eq_sqrt_smul]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i,rfl⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7960f32047be940ebcd1ce2276753faa837b0472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
