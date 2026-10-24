# isStableUnderCobaseChange_toMorphismProperty_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20ab6e8a-a641-398e-7505-4a1893656b3d",
  "kind": "lemma",
  "lexical_name": "isStableUnderCobaseChange_toMorphismProperty_iff",
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
  "slug": "isstableundercobasechange-tomorphismproperty-iff--4a3497f3f7ed61aa5424f422",
  "source": {
    "blob": "1061336f6eba0d704ee753837555d406829d62a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 215,
    "path": "GRWTSK/Algebra/LinearAlgebra/RingHomProperties/Variantadc43a8b74ec94eb811101cad7ed7693dbdf7eeb02c293031071f97843f6988b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a3497f3f7ed61aa5424f4225963cf8906d7c92bfb0126f2fd7d36762017fc5d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RingHomProperties/Variantadc43a8b74ec94eb811101cad7ed7693dbdf7eeb02c293031071f97843f6988b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20ab6e8a-a641-398e-7505-4a1893656b3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isStableUnderCobaseChange_toMorphismProperty_iff :
    (toMorphismProperty P).IsStableUnderCobaseChange ↔ IsStableUnderBaseChange P := by
  refine ⟨fun h R S R' S' _ _ _ _ _ _ _ _ _ _ _ hsq hRS ↦ ?_,
      fun h ↦ ⟨fun {R} S R' S' f g f' g' hsq hf ↦ ?_⟩⟩
  · rw [← CommRingCat.isPushout_iff_isPushout] at hsq
    exact h.1 (f := CommRingCat.ofHom (algebraMap R S)) hsq.flip hRS
  · algebraize [f.hom, g.hom, f'.hom, g'.hom, f'.hom.comp g.hom]
    have : IsScalarTower R S S' := .of_algebraMap_eq fun x ↦ congr($(hsq.1.1).hom x)
    have : Algebra.IsPushout R S R' S' := (CommRingCat.isPushout_iff_isPushout.mp hsq).symm
    exact h (R := R) (S := S) _ _ hf

/-- Variant of `MorphismProperty.arrow_mk_iso_iff` specialized to morphism properties in
`CommRingCat` given by ring hom properties. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RingHomProperties/Variantadc43a8b74ec94eb811101cad7ed7693dbdf7eeb02c293031071f97843f6988b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RingHomProperties/Variantadc43a8b74ec94eb811101cad7ed7693dbdf7eeb02c293031071f97843f6988b.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1061336f6eba0d704ee753837555d406829d62a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
