# LocallyRingedSpace.SpecΓIdentity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:959543cbbae0115998f9ccbedfaf5c1cbd1c15f10951d55edcb2c8d13839c7c8",
  "kind": "def",
  "lexical_name": "LocallyRingedSpace.SpecΓIdentity",
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
  "slug": "locallyringedspace-spec-identity--2dcc7d554c2bcc29770de238",
  "source": {
    "blob": "dbc1a71d05448912e16895aa2debc5c7eacc28d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 301,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2dcc7d554c2bcc29770de2380a4a3cc1da9367fce6ed8942259b540355907d79",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:959543cbbae0115998f9ccbedfaf5c1cbd1c15f10951d55edcb2c8d13839c7c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LocallyRingedSpace.SpecΓIdentity : Spec.toLocallyRingedSpace.rightOp ⋙ Γ ≅ 𝟭 _ :=
  Iso.symm <| NatIso.ofComponents.{u,u,u+1,u+1} (fun R =>
    -- Porting note: In Lean3, this `IsIso` is synthesized automatically
    letI : IsIso (toSpecΓ R) := StructureSheaf.isIso_to_global _
    asIso (toSpecΓ R)) fun {X Y} f => by convert Spec_Γ_naturality (R := X) (S := Y) f

end SpecΓ

/-- The stalk map of `Spec M⁻¹R ⟶ Spec R` is an iso for each `p : Spec M⁻¹R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbc1a71d05448912e16895aa2debc5c7eacc28d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
