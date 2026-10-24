# pullbackObjObjOfImageOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21994c0285dfebd40957a0d6be2781d1bd2b5605c07d0664940aa6e2b7ef40c4",
  "kind": "def",
  "lexical_name": "pullbackObjObjOfImageOpen",
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
  "slug": "pullbackobjobjofimageopen--14481fdd44b7ef5e802ac2eb",
  "source": {
    "blob": "624ac71332f87878b5a09ffb110b5adc6acb864c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 335,
    "path": "GRWTSK/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14481fdd44b7ef5e802ac2ebfa75cad129f0231753c9919d44c885972405659b",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21994c0285dfebd40957a0d6be2781d1bd2b5605c07d0664940aa6e2b7ef40c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackObjObjOfImageOpen {X Y : TopCat.{v}} (f : X ⟶ Y) (ℱ : Y.Presheaf C) (U : Opens X)
    (H : IsOpen (f '' SetLike.coe U)) : (pullbackObj f ℱ).obj (op U) ≅ ℱ.obj (op ⟨_, H⟩) := by
  let x : CostructuredArrow (Opens.map f).op (op U) := CostructuredArrow.mk
    (@homOfLE _ _ _ ((Opens.map f).obj ⟨_, H⟩) (Set.image_preimage.le_u_l _)).op
  have hx : IsTerminal x :=
    { lift := fun s ↦ by
        fapply CostructuredArrow.homMk
        change op (unop _) ⟶ op (⟨_, H⟩ : Opens _)
        · refine' (homOfLE _).op
          apply (Set.image_subset f s.pt.hom.unop.le).trans
          exact Set.image_preimage.l_u_le (SetLike.coe s.pt.left.unop)
        · simp
      -- porting note : add `fac`, `uniq` manually
      fac := fun _ _ => by ext; simp
      uniq := fun _ _ _ => by ext; simp }
  exact IsColimit.coconePointUniqueUpToIso (colimit.isColimit _) (colimitOfDiagramTerminal hx _)
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pullback_obj_obj_of_image_open TopCat.Presheaf.pullbackObjObjOfImageOpen

namespace Pullback

variable {X Y : TopCat.{v}} (ℱ : Y.Presheaf C)

/-- The pullback along the identity is isomorphic to the original presheaf. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624ac71332f87878b5a09ffb110b5adc6acb864c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
