# ModelWithCorners.pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91459c77b9e86a883ed0c2fff4240378f1d4d01e8f8345525e4a2d73920c5048",
  "kind": "def",
  "lexical_name": "ModelWithCorners.pi",
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
  "slug": "modelwithcorners-pi--ce5f6ec5e647b01339fe5aca",
  "source": {
    "blob": "680c70c7452343c30c386f7b04c79ff48cd7f3ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 523,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce5f6ec5e647b01339fe5aca5f497c4b35b782e75b3e28188d2b6a571721e0ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91459c77b9e86a883ed0c2fff4240378f1d4d01e8f8345525e4a2d73920c5048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ModelWithCorners.pi {𝕜 : Type u} [NontriviallyNormedField 𝕜] {ι : Type v} [Fintype ι]
    {E : ι → Type w} [∀ i, NormedAddCommGroup (E i)] [∀ i, NormedSpace 𝕜 (E i)] {H : ι → Type u'}
    [∀ i, TopologicalSpace (H i)] (I : ∀ i, ModelWithCorners 𝕜 (E i) (H i)) :
    ModelWithCorners 𝕜 (∀ i, E i) (ModelPi H) where
  toPartialEquiv := PartialEquiv.pi fun i => (I i).toPartialEquiv
  source_eq := by simp only [pi_univ, mfld_simps]
  convex_range' := by
    rw [PartialEquiv.pi_apply, Set.range_piMap]
    split_ifs with h
    · let := h.rclike
      let := fun i ↦ NormedSpace.restrictScalars ℝ 𝕜 (E i)
      exact convex_pi fun i _hi ↦ (I i).convex_range
    · simp [range_eq_univ_of_not_isRCLikeNormedField, h]
  nonempty_interior' := by
    rw [PartialEquiv.pi_apply, Set.range_piMap]
    simp [interior_pi_set finite_univ, univ_pi_nonempty_iff, nonempty_interior]
  continuous_toFun := continuous_pi fun i => (I i).continuous.comp (continuous_apply i)
  continuous_invFun := continuous_pi fun i => (I i).continuous_symm.comp (continuous_apply i)

/-- Special case of product model with corners, which is trivial on the second factor. This shows up
as the model to tangent bundles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `680c70c7452343c30c386f7b04c79ff48cd7f3ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
