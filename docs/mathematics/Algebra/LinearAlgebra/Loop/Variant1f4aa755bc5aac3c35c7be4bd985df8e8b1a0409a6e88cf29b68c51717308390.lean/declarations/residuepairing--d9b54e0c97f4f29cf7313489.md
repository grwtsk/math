# residuePairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c240ec0af52d7a509bf40cbe70232665a4f8341b2357b661c9e20cff8f30750",
  "kind": "def",
  "lexical_name": "residuePairing",
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
  "slug": "residuepairing--d9b54e0c97f4f29cf7313489",
  "source": {
    "blob": "61609a9a4cfc301e38ad21bf4c1fe84d250019ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 135,
    "path": "GRWTSK/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9b54e0c97f4f29cf7313489526efe572dfc1a410c103df8a1c7117c0a7ad539",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c240ec0af52d7a509bf40cbe70232665a4f8341b2357b661c9e20cff8f30750`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def residuePairing [AddCommGroup A] [DistribSMul A R] [SMulCommClass A R R]
    (Φ : LinearMap.BilinForm R L) :
    LinearMap.BilinForm R (loopAlgebra R A L) where
  toFun f :=
    letI F := toFinsupp R A L
    { toFun g := (F g).sum fun a v ↦ a • Φ (F f (-a)) v
      map_add' x y := by
        classical
        let u : Finset A := (F x).support ∪ (F y).support
        have hu₁ : (F x).support ⊆ u := Finset.subset_union_left
        have hu₂ : (F y).support ⊆ u := Finset.subset_union_right
        have hu₃ : (F (x + y)).support ⊆ u := fun a ha ↦ by
          replace ha : F x a + F y a ≠ 0 := by simpa using ha
          grind
        rw [sum_of_support_subset _ hu₃ _ (by simp), sum_of_support_subset _ hu₁ _ (by simp),
          sum_of_support_subset _ hu₂ _ (by simp)]
        simp [Finset.sum_add_distrib, u]
      map_smul' r x := by
        rw [map_smul, sum_of_support_subset _ support_smul _ (by simp), sum, Finset.smul_sum]
        simp [-smul_eq_mul, smul_comm] }
  map_add' x y := by ext; simp [sum_add]
  map_smul' r x := by ext; simp [-smul_eq_mul, smul_comm]

open LieModule in
/-- A 2-cochain on a loop algebra given by an invariant bilinear form. When `A = ℤ`, the alternating
condition amounts to the fact that Res f df = 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61609a9a4cfc301e38ad21bf4c1fe84d250019ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
