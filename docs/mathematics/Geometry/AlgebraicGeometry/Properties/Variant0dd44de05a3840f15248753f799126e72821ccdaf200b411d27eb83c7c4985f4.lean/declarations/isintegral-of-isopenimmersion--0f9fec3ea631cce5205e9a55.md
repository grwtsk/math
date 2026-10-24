# isIntegral_of_isOpenImmersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:056bd494-913a-3829-5240-0711c8d23748",
  "kind": "theorem",
  "lexical_name": "isIntegral_of_isOpenImmersion",
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
  "slug": "isintegral-of-isopenimmersion--0f9fec3ea631cce5205e9a55",
  "source": {
    "blob": "41e1c8984029eda620242bb284655f4e5074b953",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 268,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f9fec3ea631cce5205e9a556c0bcb1503d72a8e5c17ec9837a52fcece7b2620",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:056bd494-913a-3829-5240-0711c8d23748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_of_isOpenImmersion {X Y : Scheme} (f : X ⟶ Y) [H : IsOpenImmersion f]
    [IsIntegral Y] [Nonempty X] : IsIntegral X := by
  constructor; · infer_instance
  intro U hU
  have : U = f ⁻¹ᵁ f ''ᵁ U := by ext1; exact (Set.preimage_image_eq _ H.base_open.injective).symm
  rw [this]
  have : IsDomain Γ(Y, f ''ᵁ U) := by
    apply (config := { allowSynthFailures := true }) IsIntegral.component_integral
    exact ⟨⟨_, _, hU.some.prop, rfl⟩⟩
  exact (asIso <| f.app (f ''ᵁ U) :
    Γ(Y, f ''ᵁ U) ≅ _).symm.commRingCatIsoToRingEquiv.toMulEquiv.isDomain _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41e1c8984029eda620242bb284655f4e5074b953` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
