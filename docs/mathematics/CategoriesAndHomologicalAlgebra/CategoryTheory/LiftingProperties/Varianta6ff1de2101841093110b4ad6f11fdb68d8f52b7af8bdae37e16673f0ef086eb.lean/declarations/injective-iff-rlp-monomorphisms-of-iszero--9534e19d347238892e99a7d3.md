# injective_iff_rlp_monomorphisms_of_isZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c25021a-d971-b105-77ab-7e240285760a",
  "kind": "lemma",
  "lexical_name": "injective_iff_rlp_monomorphisms_of_isZero",
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
  "slug": "injective-iff-rlp-monomorphisms-of-iszero--9534e19d347238892e99a7d3",
  "source": {
    "blob": "d7ebfd0c9a9b4b2946e667bc45b077da0244ffeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9534e19d347238892e99a7d3a14ae070dbcf05f2d639c6a887a1d9968f2960a2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c25021a-d971-b105-77ab-7e240285760a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injective_iff_rlp_monomorphisms_of_isZero
    [HasZeroMorphisms C] {I Z : C} (p : I ⟶ Z) (hZ : IsZero Z) :
    Injective I ↔ (MorphismProperty.monomorphisms C).rlp p := by
  obtain rfl := hZ.eq_of_tgt p 0
  constructor
  · intro _ A B i (_ : Mono i)
    exact Injective.hasLiftingProperty_of_isZero i 0 hZ
  · intro h
    constructor
    intro A B f i hi
    have := h _ hi
    have sq : CommSq f i (0 : I ⟶ Z) 0 := ⟨by simp⟩
    exact ⟨sq.lift, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperties/Varianta6ff1de2101841093110b4ad6f11fdb68d8f52b7af8bdae37e16673f0ef086eb.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7ebfd0c9a9b4b2946e667bc45b077da0244ffeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
