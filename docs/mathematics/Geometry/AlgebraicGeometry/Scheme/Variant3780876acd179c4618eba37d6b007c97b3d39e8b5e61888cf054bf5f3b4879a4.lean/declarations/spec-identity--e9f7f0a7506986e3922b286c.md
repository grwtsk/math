# SpecΓIdentity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c993eb2aebe29dd1d905a2527c885997b8b3f41f55fdfba20feb7720b4d8420b",
  "kind": "def",
  "lexical_name": "SpecΓIdentity",
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
  "slug": "spec-identity--e9f7f0a7506986e3922b286c",
  "source": {
    "blob": "28a8477ec14111170a566fd8e0b59db66b55fefa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 527,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3780876acd179c4618eba37d6b007c97b3d39e8b5e61888cf054bf5f3b4879a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9f7f0a7506986e3922b286cfdd6e31b500623e6afcffe15da7a19b6b5d77109",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant3780876acd179c4618eba37d6b007c97b3d39e8b5e61888cf054bf5f3b4879a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c993eb2aebe29dd1d905a2527c885997b8b3f41f55fdfba20feb7720b4d8420b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SpecΓIdentity : Scheme.Spec.rightOp ⋙ Scheme.Γ ≅ 𝟭 _ :=
  Iso.symm <| NatIso.ofComponents.{u,u,u+1,u+1}
    (fun R => asIso (StructureSheaf.toOpen R ⊤))
    (fun {X Y} f => by convert Spec_Γ_naturality (R := X) (S := Y) f)

variable (R : CommRingCat.{u})

/-- The global sections of `Spec R` is isomorphic to `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant3780876acd179c4618eba37d6b007c97b3d39e8b5e61888cf054bf5f3b4879a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3780876acd179c4618eba37d6b007c97b3d39e8b5e61888cf054bf5f3b4879a4.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28a8477ec14111170a566fd8e0b59db66b55fefa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
