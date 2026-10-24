# nonempty_isColimit_binaryCofanMk_of_isCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b93e188d-6545-f871-3631-762e1a9ee3eb",
  "kind": "lemma",
  "lexical_name": "nonempty_isColimit_binaryCofanMk_of_isCompl",
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
  "slug": "nonempty-iscolimit-binarycofanmk-of-iscompl--d736bc1cc6fa33c6aec027b9",
  "source": {
    "blob": "0dacb8a8190e7d397c53f5d9348910f99d156968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 487,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d736bc1cc6fa33c6aec027b9cf658420cf070e32e8f3bde45ffafedeb7a22fec",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b93e188d-6545-f871-3631-762e1a9ee3eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonempty_isColimit_binaryCofanMk_of_isCompl {X Y S : Scheme.{u}}
    (f : X ⟶ S) (g : Y ⟶ S) [IsOpenImmersion f] [IsOpenImmersion g]
    (hf : IsCompl f.opensRange g.opensRange) :
    Nonempty (IsColimit <| BinaryCofan.mk f g) := by
  let c' : Cofan fun j ↦ (WalkingPair.casesOn j X Y : Scheme.{u}) :=
    .mk S fun j ↦ WalkingPair.casesOn j f g
  let i : BinaryCofan.mk f g ≅ c' := Cofan.ext (Iso.refl _) (by rintro (b|b) <;> rfl)
  refine ⟨IsColimit.ofIsoColimit (Nonempty.some ?_) i.symm⟩
  let fi (j : WalkingPair) : WalkingPair.casesOn j X Y ⟶ S := WalkingPair.casesOn j f g
  convert nonempty_isColimit_cofanMk_of fi _ _
  · intro i
    cases i <;> (simp [fi]; infer_instance)
  · simpa [← WalkingPair.equivBool.symm.iSup_comp, iSup_bool_eq, ← codisjoint_iff] using hf.2
  · intro i j hij
    match i, j with
    | .left, .right => simpa [fi] using hf.1
    | .right, .left => simpa [fi] using hf.1.symm

variable (R S : Type u) [CommRing R] [CommRing S]

/-- The map `Spec R ⨿ Spec S ⟶ Spec (R × S)`.
This is an isomorphism as witnessed by an `IsIso` instance provided below. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dacb8a8190e7d397c53f5d9348910f99d156968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
