# restrictScalars'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4da7d40c4ff17901618c61c092a0f86abd564617907694c774bf4154d320d79",
  "kind": "def",
  "lexical_name": "restrictScalars'",
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
  "slug": "restrictscalars--898d8dde3f7af7cf15007879",
  "source": {
    "blob": "4468c5270ec16b4ae7af7c9d53cd963fd9658d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:898d8dde3f7af7cf1500787945782e30973f51b2fa1a2c8bd7b63752c30562ad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4da7d40c4ff17901618c61c092a0f86abd564617907694c774bf4154d320d79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictScalars' :
    RootSystem ι K (span K (range P.root)) (span K (range P.coroot)) :=
  { toPerfectPairing := (P.toPerfectPairing.restrictScalarsField _ _
      (injective_subtype _) (injective_subtype _) (by simpa using IsBalanced.isPerfectCompl)
      (fun x y ↦ LinearMap.BilinMap.apply_apply_mem_of_mem_span
        (LinearMap.range (Algebra.linearMap K L)) (range P.root) (range P.coroot)
        (LinearMap.restrictScalarsₗ K L _ _ _ ∘ₗ P.toPerfectPairing.toLinearMap.restrictScalars K)
        (by rintro - ⟨i, rfl⟩ - ⟨j, rfl⟩; exact hP i j) _ _ x.property y.property))
    root := ⟨fun i ↦ ⟨_, subset_span (mem_range_self i)⟩, fun i j h ↦ by simpa using h⟩
    coroot := ⟨fun i ↦ ⟨_, subset_span (mem_range_self i)⟩, fun i j h ↦ by simpa using h⟩
    root_coroot_two i := by
      have : algebraMap K L 2 = 2 := by
        rw [← Int.cast_two (R := K), ← Int.cast_two (R := L), map_intCast]
      exact FaithfulSMul.algebraMap_injective K L <| by simp [this]
    reflection_perm := P.reflection_perm
    reflection_perm_root i j := by
      ext; simpa [algebra_compatible_smul L] using P.reflection_perm_root i j
    reflection_perm_coroot i j := by
      ext; simpa [algebra_compatible_smul L] using P.reflection_perm_coroot i j
    span_root_eq_top := by
      rw [← span_setOf_mem_eq_top]
      congr
      ext ⟨x, hx⟩
      simp
    span_coroot_eq_top := by
      rw [← span_setOf_mem_eq_top]
      congr
      ext ⟨x, hx⟩
      simp }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant50e0d278101008b61f03b9676a3dcea2d44c51b6e34d311353b6dd314d399a75.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4468c5270ec16b4ae7af7c9d53cd963fd9658d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
