# awayToSection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f35ddab6fdc7ec13428b9e71003c7a79c65eee8d308e8897d7507d216305d646",
  "kind": "def",
  "lexical_name": "awayToSection",
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
  "slug": "awaytosection--8597ec7310e03b83e9766de9",
  "source": {
    "blob": "101f00dc8f8be4e93d24cab460a9d6cba83ee260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 124,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8597ec7310e03b83e9766de9cca15e2d18f99b8cda1c3a1e874e16c5c33fa466",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f35ddab6fdc7ec13428b9e71003c7a79c65eee8d308e8897d7507d216305d646`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def awayToSection : CommRingCat.of (Away 𝒜 f) ⟶ Γ(Proj 𝒜, basicOpen 𝒜 f) :=
  ProjectiveSpectrum.Proj.awayToSection ..

/-- The canonical map `Proj A |_ D₊(f) ⟶ Spec (A_f)₀`.
This is an isomorphism when `f` is homogeneous of positive degree. See `basicOpenIsoSpec` below. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant88272aaba08f9241fcc03b61b04e15c28d0effaacc58c12103dd3343496c97a9.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `101f00dc8f8be4e93d24cab460a9d6cba83ee260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
