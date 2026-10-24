# starLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2ddcd6db7593795e72212de1481a2b504994a0c4d886f2f03a44d14e8b69fdd",
  "kind": "def",
  "lexical_name": "starLift",
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
  "slug": "starlift--fb64893d702da1863c1c3ae6",
  "source": {
    "blob": "016ae7132182e92fb3ccd4618358a2e9bef2e9fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 785,
    "line": 775,
    "path": "GRWTSK/Algebra/LinearAlgebra/Unitization/Variant65b7675cfa819b1841621655dd140a83f7e39a44f41df5a396d20b3a020d0f64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb64893d702da1863c1c3ae6b2b7f82eb5d2a341b62c7e8daf846f3d663b9490",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Unitization/Variant65b7675cfa819b1841621655dd140a83f7e39a44f41df5a396d20b3a020d0f64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2ddcd6db7593795e72212de1481a2b504994a0c4d886f2f03a44d14e8b69fdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 775–785.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def starLift : (A →⋆ₙₐ[R] C) ≃ (Unitization R A →⋆ₐ[R] C) :=
{ toFun := fun φ ↦
  { toAlgHom := Unitization.lift φ.toNonUnitalAlgHom
    map_star' := fun x => by
      induction x using Unitization.ind
      simp [map_star] }
  invFun := fun φ ↦ φ.toNonUnitalStarAlgHom.comp (inrNonUnitalStarAlgHom R A),
  left_inv := fun φ => by ext; simp,
  right_inv := fun φ => Unitization.algHom_ext'' <| by simp }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Unitization/Variant65b7675cfa819b1841621655dd140a83f7e39a44f41df5a396d20b3a020d0f64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Unitization/Variant65b7675cfa819b1841621655dd140a83f7e39a44f41df5a396d20b3a020d0f64.lean#L775).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `016ae7132182e92fb3ccd4618358a2e9bef2e9fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
