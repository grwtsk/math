# homeomorphOfImageSubsetSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5295888bd1af326423963fa1ce7eaa0834e7f543d7a7f11caa78faa6ce5e4cc",
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
  "slug": "homeomorphofimagesubsetsource--85da88b3e8bb1c95f6578789",
  "source": {
    "blob": "5679fab1dc08ab37d499cd0526f2d09e1bf09e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85da88b3e8bb1c95f6578789faa1ec36b649e0cd7e045ceb79d100422d337a28",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5295888bd1af326423963fa1ce7eaa0834e7f543d7a7f11caa78faa6ce5e4cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homeomorphOfImageSubsetSource {s : Set X} {t : Set Y} (hs : s ⊆ e.source) (ht : e '' s = t) :
    s ≃ₜ t :=
  have h₁ : MapsTo e s t := mapsTo_iff_image_subset.2 ht.subset
  have h₂ : t ⊆ e.target := ht ▸ e.image_source_eq_target ▸ image_mono hs
  have h₃ : MapsTo e.symm t s := ht ▸ forall_mem_image.2 fun _x hx =>
      (e.left_inv (hs hx)).symm ▸ hx
  { toFun := MapsTo.restrict e s t h₁
    invFun := MapsTo.restrict e.symm t s h₃
    left_inv := fun a => Subtype.ext (e.left_inv (hs a.2))
    right_inv := fun b => Subtype.ext <| e.right_inv (h₂ b.2)
    continuous_toFun := (e.continuousOn.mono hs).mapsToRestrict h₁
    continuous_invFun := (e.continuousOn_symm.mono h₂).mapsToRestrict h₃ }

/-- A partial homeomorphism defines a homeomorphism between its source and target. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5679fab1dc08ab37d499cd0526f2d09e1bf09e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
