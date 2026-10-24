# triangleMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3afeeedd48bb17c8af1e4fd01f2476bcd1c22da65cf2aa4f134309449687808",
  "kind": "def",
  "lexical_name": "triangleMap",
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
  "slug": "trianglemap--3083bc4adcaa915b287e48c0",
  "source": {
    "blob": "3a70a7e43b10658f52750010d47b0b1ff6bec02a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 233,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3083bc4adcaa915b287e48c08bb14c52aa4bcb31f01c0b2dad5de18b6fd612c5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3afeeedd48bb17c8af1e4fd01f2476bcd1c22da65cf2aa4f134309449687808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def triangleMap {Y : SpectralObject C ι} (φ : X ⟶ Y)
    {i j k : ι} (f : i ⟶ j) (g : j ⟶ k) :
    X.triangle f g ⟶ Y.triangle f g where
  hom₁ := φ.hom.app _
  hom₂ := φ.hom.app _
  hom₃ := φ.hom.app _

section

variable {A : Type*} [Category* A] [Abelian A]

/-- If `X` is a spectral object indexed by `ι` in a triangulated category `C`, and
`F : C ⥤ A` is a homological functor, this is the spectral object in the
abelian category `A` that is obtained by applying `F` to `X`. -/
@[implicit_reducible, simps H]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a70a7e43b10658f52750010d47b0b1ff6bec02a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
