# stoneCechEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6124c21f61b48265e8332d15cf05126b09bce15d999f4d423a74b4ab6c467e7a",
  "kind": "def",
  "lexical_name": "stoneCechEquivalence",
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
  "slug": "stonecechequivalence--0e0d81b0c67aed707eb254a9",
  "source": {
    "blob": "517a5db4594b3b8738d999242832aff3de83a8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e0d81b0c67aed707eb254a9b2f977957a80c5ec617257577b9f9fabd2074f05",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6124c21f61b48265e8332d15cf05126b09bce15d999f4d423a74b4ab6c467e7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def stoneCechEquivalence (X : TopCat.{u}) (Y : CompHaus.{u}) :
    (stoneCechObj X ⟶ Y) ≃ (X ⟶ compHausToTop.obj Y) where
  toFun f := TopCat.ofHom
    { toFun := f ∘ stoneCechUnit
      continuous_toFun := f.hom.2.comp (@continuous_stoneCechUnit X _) }
  invFun f := CompHausLike.ofHom _
    { toFun := stoneCechExtend f.hom.2
      continuous_toFun := continuous_stoneCechExtend f.hom.2 }
  left_inv := by
    rintro ⟨f : StoneCech X ⟶ Y, hf : Continuous f⟩
    ext x
    refine congr_fun ?_ x
    apply Continuous.ext_on denseRange_stoneCechUnit (continuous_stoneCechExtend _) hf
    · rintro _ ⟨y, rfl⟩
      apply congr_fun (stoneCechExtend_extends (hf.comp _)) y
      apply continuous_stoneCechUnit
  right_inv := by
    rintro ⟨f : (X : Type _) ⟶ Y, hf : Continuous f⟩
    ext
    exact congr_fun (stoneCechExtend_extends hf) _

/-- The Stone-Cech compactification functor from topological spaces to compact Hausdorff spaces,
left adjoint to the inclusion functor.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `517a5db4594b3b8738d999242832aff3de83a8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
