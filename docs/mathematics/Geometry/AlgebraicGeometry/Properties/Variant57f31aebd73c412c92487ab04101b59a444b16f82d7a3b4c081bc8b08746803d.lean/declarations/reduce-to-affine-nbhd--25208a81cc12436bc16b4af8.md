# reduce_to_affine_nbhd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02f1b43c-64e9-de28-22e9-8264c4107c80",
  "kind": "theorem",
  "lexical_name": "reduce_to_affine_nbhd",
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
  "slug": "reduce-to-affine-nbhd--25208a81cc12436bc16b4af8",
  "source": {
    "blob": "dc765e828347772ace4c80a4b9424c2bb04b9a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 153,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant57f31aebd73c412c92487ab04101b59a444b16f82d7a3b4c081bc8b08746803d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25208a81cc12436bc16b4af80e11a6381df6114f9c6776bb78f9b53adcb943ca",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Properties/Variant57f31aebd73c412c92487ab04101b59a444b16f82d7a3b4c081bc8b08746803d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02f1b43c-64e9-de28-22e9-8264c4107c80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce_to_affine_nbhd (P : ∀ (X : Scheme) (_ : X.carrier), Prop)
    (h₁ : ∀ (R : CommRingCat) (x : PrimeSpectrum R), P (Scheme.Spec.obj <| op R) x)
    (h₂ : ∀ {X Y} (f : X ⟶ Y) [IsOpenImmersion f] (x : X.carrier), P X x → P Y (f.1.base x)) :
    ∀ (X : Scheme) (x : X.carrier), P X x := by
  intro X x
  obtain ⟨y, e⟩ := X.affineCover.Covers x
  convert h₂ (X.affineCover.map (X.affineCover.f x)) y _
  · rw [e]
  apply h₁
#align algebraic_geometry.reduce_to_affine_nbhd AlgebraicGeometry.reduce_to_affine_nbhd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Properties/Variant57f31aebd73c412c92487ab04101b59a444b16f82d7a3b4c081bc8b08746803d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant57f31aebd73c412c92487ab04101b59a444b16f82d7a3b4c081bc8b08746803d.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc765e828347772ace4c80a4b9424c2bb04b9a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
