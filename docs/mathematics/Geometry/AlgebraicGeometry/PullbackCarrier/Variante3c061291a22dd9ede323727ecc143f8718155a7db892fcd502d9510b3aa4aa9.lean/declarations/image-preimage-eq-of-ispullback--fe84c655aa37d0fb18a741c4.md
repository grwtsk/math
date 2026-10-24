# image_preimage_eq_of_isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34c102c3-2420-6f07-54ba-35ff38a27e75",
  "kind": "lemma",
  "lexical_name": "image_preimage_eq_of_isPullback",
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
  "slug": "image-preimage-eq-of-ispullback--fe84c655aa37d0fb18a741c4",
  "source": {
    "blob": "50f49d3f9d8021d6e1e3b37570beff003876f333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 426,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variante3c061291a22dd9ede323727ecc143f8718155a7db892fcd502d9510b3aa4aa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe84c655aa37d0fb18a741c44c4bc5ff20cfef2c469994fc26fb5f3261ea26e1",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variante3c061291a22dd9ede323727ecc143f8718155a7db892fcd502d9510b3aa4aa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34c102c3-2420-6f07-54ba-35ff38a27e75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma image_preimage_eq_of_isPullback {P X Y Z : Scheme.{u}} {fst : P ⟶ X} {snd : P ⟶ Y}
    {f : X ⟶ Z} {g : Y ⟶ Z} (h : IsPullback fst snd f g) (s : Set X) :
    snd.base '' fst.base ⁻¹' s = g.base ⁻¹' f.base '' s := by
  refine subset_antisymm ?_ (fun x hx ↦ ?_)
  · rw [Set.image_subset_iff, ← Set.preimage_comp, ← TopCat.coe_comp, ← Hom.comp_base, ← h.1.1]
    rw [Hom.comp_base, TopCat.coe_comp, ← Set.image_subset_iff, Set.image_comp]
    exact Set.image_mono (Set.image_preimage_subset _ _)
  · obtain ⟨y, hy, heq⟩ := hx
    obtain ⟨o, hl, hr⟩ := exists_preimage_of_isPullback h y x heq
    use o
    simpa [hl, hr]

end Scheme

namespace Surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variante3c061291a22dd9ede323727ecc143f8718155a7db892fcd502d9510b3aa4aa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variante3c061291a22dd9ede323727ecc143f8718155a7db892fcd502d9510b3aa4aa9.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f49d3f9d8021d6e1e3b37570beff003876f333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
