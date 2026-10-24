# comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e637e5f04a7b9a64352a8dbd27f91e79ae93e90f821f13d694aa11f44f38cd97",
  "kind": "def",
  "lexical_name": "comap",
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
  "slug": "comap--cfadb0589c8b62fba2ecd02f",
  "source": {
    "blob": "9ba95e0ca6739fb5e4e9b6f561c9da81ef9e5fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1019,
    "line": 990,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfadb0589c8b62fba2ecd02f89e502205f075cc22cde45d7bff5799fc77bb3d7",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e637e5f04a7b9a64352a8dbd27f91e79ae93e90f821f13d694aa11f44f38cd97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 990–1019.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comap (f : R →+* S) (U : Opens (PrimeSpectrum.Top R)) (V : Opens (PrimeSpectrum.Top S))
    (hUV : V.1 ⊆ PrimeSpectrum.comap f ⁻¹' U.1) :
    (structureSheaf R).1.obj (op U) →+* (structureSheaf S).1.obj (op V) where
  toFun s := ⟨comapFun f U V hUV s.1, comapFunIsLocallyFraction f U V hUV s.1 s.2⟩
  map_one' :=
    Subtype.ext <|
      funext fun p => by
        dsimp
        rw [comapFun, (sectionsSubring R (op U)).coe_one, Pi.one_apply, RingHom.map_one]
        rfl
  map_zero' :=
    Subtype.ext <|
      funext fun p => by
        dsimp
        rw [comapFun, (sectionsSubring R (op U)).coe_zero, Pi.zero_apply, RingHom.map_zero]
        rfl
  map_add' s t :=
    Subtype.ext <|
      funext fun p => by
        dsimp
        rw [comapFun, (sectionsSubring R (op U)).coe_add, Pi.add_apply, RingHom.map_add]
        rfl
  map_mul' s t :=
    Subtype.ext <|
      funext fun p => by
        dsimp
        rw [comapFun, (sectionsSubring R (op U)).coe_mul, Pi.mul_apply, RingHom.map_mul]
        rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean#L990).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba95e0ca6739fb5e4e9b6f561c9da81ef9e5fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
