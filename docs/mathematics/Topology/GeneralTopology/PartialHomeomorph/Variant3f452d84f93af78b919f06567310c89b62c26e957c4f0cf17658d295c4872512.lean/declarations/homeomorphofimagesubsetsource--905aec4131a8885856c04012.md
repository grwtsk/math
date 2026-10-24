# homeomorphOfImageSubsetSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3b5e6d48cdcf3ab4fdb4e043830281efc9e04fd89eebd3ad171dbdbcfca75ea",
  "kind": "def",
  "lexical_name": "homeomorphOfImageSubsetSource",
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
  "slug": "homeomorphofimagesubsetsource--905aec4131a8885856c04012",
  "source": {
    "blob": "6ed8d3594edf3162ca7425de036e216ba5b9077f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1098,
    "line": 1084,
    "path": "GRWTSK/Topology/GeneralTopology/PartialHomeomorph/Variant3f452d84f93af78b919f06567310c89b62c26e957c4f0cf17658d295c4872512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:905aec4131a8885856c04012e24fdcba3e3efaa7d4347e51bdf9acd8417fe3f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartialHomeomorph/Variant3f452d84f93af78b919f06567310c89b62c26e957c4f0cf17658d295c4872512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3b5e6d48cdcf3ab4fdb4e043830281efc9e04fd89eebd3ad171dbdbcfca75ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1084–1098.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homeomorphOfImageSubsetSource {s : Set X} {t : Set Y} (hs : s ⊆ e.source) (ht : e '' s = t) :
    s ≃ₜ t :=
  have h₁ : MapsTo e s t := mapsTo'.2 ht.subset
  have h₂ : t ⊆ e.target := ht ▸ e.image_source_eq_target ▸ image_subset e hs
  have h₃ : MapsTo e.symm t s := ht ▸ forall_mem_image.2 fun _x hx =>
      (e.left_inv (hs hx)).symm ▸ hx
  { toFun := MapsTo.restrict e s t h₁
    invFun := MapsTo.restrict e.symm t s h₃
    left_inv := fun a => Subtype.ext (e.left_inv (hs a.2))
    right_inv := fun b => Subtype.eq <| e.right_inv (h₂ b.2)
    continuous_toFun := (e.continuousOn.mono hs).restrict_mapsTo h₁
    continuous_invFun := (e.continuousOn_symm.mono h₂).restrict_mapsTo h₃ }

/-- A partial homeomorphism defines a homeomorphism between its source and target. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartialHomeomorph/Variant3f452d84f93af78b919f06567310c89b62c26e957c4f0cf17658d295c4872512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartialHomeomorph/Variant3f452d84f93af78b919f06567310c89b62c26e957c4f0cf17658d295c4872512.lean#L1084).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed8d3594edf3162ca7425de036e216ba5b9077f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
