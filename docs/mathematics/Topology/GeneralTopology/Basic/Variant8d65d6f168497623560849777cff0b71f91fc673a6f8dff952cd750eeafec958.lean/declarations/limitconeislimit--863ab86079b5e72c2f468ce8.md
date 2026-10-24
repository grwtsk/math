# limitConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:809f62bfafddc3d637187b54fe5249d7f49fefdb055350fc690ba942c576e912",
  "kind": "def",
  "lexical_name": "limitConeIsLimit",
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
  "slug": "limitconeislimit--863ab86079b5e72c2f468ce8",
  "source": {
    "blob": "efd9ff5274f66ea8a5ec2e755f95835393ddba10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 335,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:863ab86079b5e72c2f468ce869a66c529c93d4312bd623f42236276d0cd7f410",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:809f62bfafddc3d637187b54fe5249d7f49fefdb055350fc690ba942c576e912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limitConeIsLimit : Limits.IsLimit (limitCone F) where
  lift cone := ofHom
    { ((Profinite.limitConeIsLimit (F ⋙ (forget₂ ProfiniteGrp Profinite))).lift
        ((forget₂ ProfiniteGrp Profinite).mapCone cone)).hom with
      map_one' := Subtype.ext (funext fun j ↦ map_one (cone.π.app j).hom)
      -- TODO: investigate whether it's possible to set up `ext` lemmas for the `TopCat`-related
      -- categories so that `by ext j; exact map_one (cone.π.app j)` works here, similarly below.
      map_mul' := fun _ _ ↦ Subtype.ext (funext fun j ↦ map_mul (cone.π.app j).hom _ _) }
  uniq cone m h := by
    apply (forget₂ ProfiniteGrp Profinite).map_injective
    simpa using (Profinite.limitConeIsLimit (F ⋙ (forget₂ ProfiniteGrp Profinite))).uniq
      ((forget₂ ProfiniteGrp Profinite).mapCone cone) ((forget₂ ProfiniteGrp Profinite).map m)
      (fun j ↦ congrArg (forget₂ ProfiniteGrp Profinite).map (h j))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efd9ff5274f66ea8a5ec2e755f95835393ddba10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
