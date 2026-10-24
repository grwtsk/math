# flat_and_surjective_SpecMap_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8df1840034f03f6976335b08c21ed3f529cc0142",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d315ec85-40e2-7761-189d-47d801c4edb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75966bf4-36ae-357a-ca1e-1860ebe7b155",
  "kind": "lemma",
  "lexical_name": "flat_and_surjective_SpecMap_iff",
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
  "slug": "flat-and-surjective-specmap-iff--73ee0e0d8e000f1dec525744",
  "source": {
    "blob": "8df1840034f03f6976335b08c21ed3f529cc0142",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 182,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73ee0e0d8e000f1dec525744f8d8e1962fb10d7aa2aa956c8b9c8c6bb73e78c8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75966bf4-36ae-357a-ca1e-1860ebe7b155`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma flat_and_surjective_SpecMap_iff {R S : CommRingCat.{u}} (f : R ⟶ S) :
    Flat (Spec.map f) ∧ Surjective (Spec.map f) ↔ f.hom.FaithfullyFlat := by
  rw [HasRingHomProperty.Spec_iff (P := @Flat),
    RingHom.FaithfullyFlat.iff_flat_and_comap_surjective, surjective_iff]
  rfl

section sections

/-!
## Sections of fibered products

Suppose we are given the following cartesian square:
```
Y --g-→ X
|       |
iY      iX
↓       |
T --f-→ S
```
Let `Uₛ` be an open of `S`, `Uₓ` and `Uₜ` be opens of `X` and `T` mapping into `Uₛ`.
There is a canonical map `Γ(X, Uₓ) ⊗[Γ(S, Uₛ)] Γ(T, Uₜ) ⟶ Γ(X ×ₛ T, pr₁ ⁻¹ Uₓ ∩ pr₂ ⁻¹ Uₜ)`.

We show that this map is
1. `isIso_pushoutSection_of_isAffineOpen`:
  bijective when `Uₛ`, `Uₜ`, and `Uₓ` are all affine.
2. `mono_pushoutSection_of_isCompact_of_flat_right`:
  injective when `Uₛ`, `Uₜ` are affine, `Uₓ` is compact, and `f` is flat.
3. `isIso_pushoutSection_of_isQuasiSeparated_of_flat_right`:
  bijective when `Uₛ`, `Uₜ` are affine, `Uₓ` is qcqs, and `f` is flat.
4. `mono_pushoutSection_of_isCompact_of_flat_right_of_ringHomFlat`:
  injective when `Uₛ` is affine, `Uₜ` is compact, `Uₓ` is qcqs, `f` is flat,
  and `Γ(T, Uₜ)` is flat over `Γ(S, Uₛ)` (typically true when `S = Spec k`.)
5. `isIso_pushoutSection_of_isCompact_of_flat_right_of_ringHomFlat`:
  bijective when `Uₛ` is affine, `Uₜ` and `Uₓ` are qcqs, `f` is flat,
  and `Γ(T, Uₜ)` is flat over `Γ(S, Uₛ)` (typically true when `S = Spec k`.)

-/

variable {X Y S T : Scheme.{u}} {f : T ⟶ S} {g : Y ⟶ X} {iX : X ⟶ S} {iY : Y ⟶ T}
  (H : IsPullback g iY iX f)
  {US : S.Opens} {UT : T.Opens}
  {UX : X.Opens} (hUST : UT ≤ f ⁻¹ᵁ US) (hUSX : UX ≤ iX ⁻¹ᵁ US)
  {UY : Y.Opens} (hUY : UY = g ⁻¹ᵁ UX ⊓ iY ⁻¹ᵁ UT)

/-- The canonical map `Γ(X, Uₓ) ⊗[Γ(S, Uₛ)] Γ(T, Uₜ) ⟶ Γ(X ×ₛ T, pr₁ ⁻¹ Uₓ ∩ pr₂ ⁻¹ Uₜ)`.
This is an isomorphism under various circumstances. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df1840034f03f6976335b08c21ed3f529cc0142` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
