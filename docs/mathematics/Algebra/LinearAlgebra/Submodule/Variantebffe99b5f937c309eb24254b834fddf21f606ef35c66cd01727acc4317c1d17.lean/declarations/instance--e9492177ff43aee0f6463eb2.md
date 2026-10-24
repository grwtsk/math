# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:492916b07b561a9cbccdcfa07c9646681c63bc38ec1b762051c49e0db240c0c2",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e9492177ff43aee0f6463eb2",
  "source": {
    "blob": "a65a0b92faf8aced596a8c96e83d0f55ea53f0cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 108,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantebffe99b5f937c309eb24254b834fddf21f606ef35c66cd01727acc4317c1d17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9492177ff43aee0f6463eb2c93bd3d48ef77245e77ce7e53062cf91f6e15477",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variantebffe99b5f937c309eb24254b834fddf21f606ef35c66cd01727acc4317c1d17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:492916b07b561a9cbccdcfa07c9646681c63bc38ec1b762051c49e0db240c0c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : CompleteLattice M.Submodule where
  __ := completeLatticeOfInf M.Submodule fun s ↦
    ⟨fun _ hN ↦ le_iff.mpr (sInf_le (Set.mem_image_of_mem _ hN)),
      fun _ hb ↦ le_iff.mpr <| le_sInf <| by
        rintro _ ⟨N', hN', rfl⟩
        exact le_iff.mp (hb hN')⟩
  inf := (· ⊓ ·)
  inf_le_left := fun _ _ ↦ le_iff.mpr inf_le_left
  inf_le_right := fun _ _ ↦ le_iff.mpr inf_le_right
  le_inf := fun _ _ _ h₁ h₂ ↦ le_iff.mpr (le_inf (le_iff.mp h₁) (le_iff.mp h₂))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variantebffe99b5f937c309eb24254b834fddf21f606ef35c66cd01727acc4317c1d17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variantebffe99b5f937c309eb24254b834fddf21f606ef35c66cd01727acc4317c1d17.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a65a0b92faf8aced596a8c96e83d0f55ea53f0cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
