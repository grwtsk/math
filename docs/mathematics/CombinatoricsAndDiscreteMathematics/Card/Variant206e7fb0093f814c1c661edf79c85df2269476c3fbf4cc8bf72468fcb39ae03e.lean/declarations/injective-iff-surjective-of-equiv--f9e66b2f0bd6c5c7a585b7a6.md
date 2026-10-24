# injective_iff_surjective_of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f316ca6c-b6bb-118c-c969-a64a65493992",
  "kind": "theorem",
  "lexical_name": "injective_iff_surjective_of_equiv",
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
  "slug": "injective-iff-surjective-of-equiv--f9e66b2f0bd6c5c7a585b7a6",
  "source": {
    "blob": "0a3b63ab14d3111c4b55f4703c466716a2365405",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 646,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant206e7fb0093f814c1c661edf79c85df2269476c3fbf4cc8bf72468fcb39ae03e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9e66b2f0bd6c5c7a585b7a6db23fd032b8a956b655c9fbfe038355ee9736775",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant206e7fb0093f814c1c661edf79c85df2269476c3fbf4cc8bf72468fcb39ae03e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f316ca6c-b6bb-118c-c969-a64a65493992`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_iff_surjective_of_equiv {f : α → β} (e : α ≃ β) : Injective f ↔ Surjective f :=
  have : Injective (e.symm ∘ f) ↔ Surjective (e.symm ∘ f) := injective_iff_surjective
  ⟨fun hinj => by
    simpa [Function.comp] using e.surjective.comp (this.1 (e.symm.injective.comp hinj)),
    fun hsurj => by
    simpa [Function.comp] using e.injective.comp (this.2 (e.symm.surjective.comp hsurj))⟩
#align finite.injective_iff_surjective_of_equiv Finite.injective_iff_surjective_of_equiv

alias ⟨_root_.Function.Injective.bijective_of_finite, _⟩ := injective_iff_bijective
#align function.injective.bijective_of_finite Function.Injective.bijective_of_finite

alias ⟨_root_.Function.Surjective.bijective_of_finite, _⟩ := surjective_iff_bijective
#align function.surjective.bijective_of_finite Function.Surjective.bijective_of_finite

alias ⟨_root_.Function.Injective.surjective_of_fintype,
    _root_.Function.Surjective.injective_of_fintype⟩ :=
  injective_iff_surjective_of_equiv
#align function.injective.surjective_of_fintype Function.Injective.surjective_of_fintype
#align function.surjective.injective_of_fintype Function.Surjective.injective_of_fintype

end Finite

namespace Fintype

variable [Fintype α] [Fintype β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant206e7fb0093f814c1c661edf79c85df2269476c3fbf4cc8bf72468fcb39ae03e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant206e7fb0093f814c1c661edf79c85df2269476c3fbf4cc8bf72468fcb39ae03e.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a3b63ab14d3111c4b55f4703c466716a2365405` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
