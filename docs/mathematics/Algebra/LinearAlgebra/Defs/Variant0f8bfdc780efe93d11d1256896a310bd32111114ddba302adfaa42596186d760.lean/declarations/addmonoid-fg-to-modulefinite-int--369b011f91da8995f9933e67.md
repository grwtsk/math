# AddMonoid.FG.to_moduleFinite_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b70c2ec1fdc47eb7e666aa5cdf4ffa661b7dce8f01234978627ef09cc11b2834",
  "kind": "instance",
  "lexical_name": "AddMonoid.FG.to_moduleFinite_int",
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
  "slug": "addmonoid-fg-to-modulefinite-int--369b011f91da8995f9933e67",
  "source": {
    "blob": "07ea2c832a16c963165b95efa4068d57642abb01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 158,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:369b011f91da8995f9933e6701ee3d7b323a43a14a49d3ac4ea283fcae17715d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b70c2ec1fdc47eb7e666aa5cdf4ffa661b7dce8f01234978627ef09cc11b2834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance AddMonoid.FG.to_moduleFinite_int {G : Type*} [AddCommGroup G] [FG G] :
    Module.Finite ℤ G :=
  Module.Finite.iff_addGroup_fg.mpr <| AddGroup.fg_iff_addMonoid_fg.mpr ‹_›

end ModuleAndAlgebra

namespace RingHom

variable {A B : Type*} [CommRing A] [CommRing B]

/-- A ring morphism `A →+* B` is `RingHom.Finite` if `B` is finitely generated as `A`-module. -/
@[algebraize Module.Finite, stacks 0563]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07ea2c832a16c963165b95efa4068d57642abb01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
