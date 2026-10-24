# restrictScalars'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d026365c2785598b2bd21bf595adea5a2ccedeb9556faa08b98e5e69fa11fd40",
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
  "slug": "restrictscalars--565c8ffcf63c2b26dd89b96e",
  "source": {
    "blob": "a79c7c15d4cf14bcb10f6afba71d05b565755d00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:565c8ffcf63c2b26dd89b96e77f2404aca7a08fe75cf4dd9b90aee05aae57820",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d026365c2785598b2bd21bf595adea5a2ccedeb9556faa08b98e5e69fa11fd40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–96.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a79c7c15d4cf14bcb10f6afba71d05b565755d00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
