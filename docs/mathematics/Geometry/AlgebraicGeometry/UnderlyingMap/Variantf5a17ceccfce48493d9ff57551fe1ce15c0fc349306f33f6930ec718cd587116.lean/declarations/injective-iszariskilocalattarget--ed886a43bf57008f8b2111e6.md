# injective_isZariskiLocalAtTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a74200f6f87460bb1cc7310a94e6795bf5a8313ce797669bc544f4fa68f69952",
  "kind": "instance",
  "lexical_name": "injective_isZariskiLocalAtTarget",
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
  "slug": "injective-iszariskilocalattarget--ed886a43bf57008f8b2111e6",
  "source": {
    "blob": "a342e3c6e8d2060420121f7c881360e7a7306423",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 44,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variantf5a17ceccfce48493d9ff57551fe1ce15c0fc349306f33f6930ec718cd587116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed886a43bf57008f8b2111e612fe8ed156167588001f7e7abe30add77d2bc61c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UnderlyingMap/Variantf5a17ceccfce48493d9ff57551fe1ce15c0fc349306f33f6930ec718cd587116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a74200f6f87460bb1cc7310a94e6795bf5a8313ce797669bc544f4fa68f69952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance injective_isZariskiLocalAtTarget :
    IsZariskiLocalAtTarget (topologically Function.Injective) := by
  refine topologically_isZariskiLocalAtTarget _ (fun _ s _ _ h ↦ h.restrictPreimage s)
    fun f ι U H _ hf x₁ x₂ e ↦ ?_
  obtain ⟨i, hxi⟩ : ∃ i, f x₁ ∈ U i := by simpa using congr(f x₁ ∈ $H)
  exact congr(($(@hf i ⟨x₁, hxi⟩ ⟨x₂, show f x₂ ∈ U i from e ▸ hxi⟩ (Subtype.ext e))).1)

end Injective

section Surjective

variable {X Y Z : Scheme.{u}} (f : X ⟶ Y) (g : Y ⟶ Z)

/-- A morphism of schemes is surjective if the underlying map is. -/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UnderlyingMap/Variantf5a17ceccfce48493d9ff57551fe1ce15c0fc349306f33f6930ec718cd587116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variantf5a17ceccfce48493d9ff57551fe1ce15c0fc349306f33f6930ec718cd587116.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a342e3c6e8d2060420121f7c881360e7a7306423` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
