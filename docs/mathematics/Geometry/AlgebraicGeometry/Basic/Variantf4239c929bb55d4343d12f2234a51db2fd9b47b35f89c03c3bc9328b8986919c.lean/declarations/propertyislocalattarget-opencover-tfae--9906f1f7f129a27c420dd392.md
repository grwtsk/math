# PropertyIsLocalAtTarget.openCover_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 385,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40a737c8-3cff-9cec-c282-58196c2ed3ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f43d4166-f08f-7a7c-2c32-d3f50c132a71",
  "kind": "theorem",
  "lexical_name": "PropertyIsLocalAtTarget.openCover_TFAE",
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
  "slug": "propertyislocalattarget-opencover-tfae--9906f1f7f129a27c420dd392",
  "source": {
    "blob": "a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 385,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9906f1f7f129a27c420dd392d27e4406af2941efa9998cfdfddffff90323bebb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f43d4166-f08f-7a7c-2c32-d3f50c132a71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PropertyIsLocalAtTarget.openCover_TFAE {P : MorphismProperty Scheme}
    (hP : PropertyIsLocalAtTarget P) {X Y : Scheme.{u}} (f : X ⟶ Y) :
    TFAE
      [P f,
        ∃ 𝒰 : Scheme.OpenCover.{u} Y,
          ∀ i : 𝒰.J, P (pullback.snd : (𝒰.pullbackCover f).obj i ⟶ 𝒰.obj i),
        ∀ (𝒰 : Scheme.OpenCover.{u} Y) (i : 𝒰.J),
          P (pullback.snd : (𝒰.pullbackCover f).obj i ⟶ 𝒰.obj i),
        ∀ U : Opens Y.carrier, P (f ∣_ U),
        ∀ {U : Scheme} (g : U ⟶ Y) [IsOpenImmersion g], P (pullback.snd : pullback f g ⟶ U),
        ∃ (ι : Type u) (U : ι → Opens Y.carrier) (_ : iSup U = ⊤), ∀ i, P (f ∣_ U i)] := by
  tfae_have 2 → 1
  · rintro ⟨𝒰, H⟩; exact hP.3 f 𝒰 H
  tfae_have 1 → 4
  · intro H U; exact hP.2 f U H
  tfae_have 4 → 3
  · intro H 𝒰 i
    rw [← hP.1.arrow_mk_iso_iff (morphismRestrictOpensRange f _)]
    exact H <| Scheme.Hom.opensRange (𝒰.map i)
  tfae_have 3 → 2
  · exact fun H => ⟨Y.affineCover, H Y.affineCover⟩
  tfae_have 4 → 5
  · intro H U g hg
    rw [← hP.1.arrow_mk_iso_iff (morphismRestrictOpensRange f _)]
    apply H
  tfae_have 5 → 4
  · intro H U
    erw [hP.1.cancel_left_isIso]
    apply H
  tfae_have 4 → 6
  · intro H; exact ⟨PUnit, fun _ => ⊤, ciSup_const, fun _ => H _⟩
  tfae_have 6 → 2
  · rintro ⟨ι, U, hU, H⟩
    refine' ⟨Y.openCoverOfSuprEqTop U hU, _⟩
    intro i
    rw [← hP.1.arrow_mk_iso_iff (morphismRestrictOpensRange f _)]
    convert H i
    all_goals ext1; exact Subtype.range_coe
  tfae_finish
#align algebraic_geometry.property_is_local_at_target.open_cover_tfae AlgebraicGeometry.PropertyIsLocalAtTarget.openCover_TFAE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
