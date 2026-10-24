# card_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d551be95-3afe-aeb4-3549-6176961ea237",
  "kind": "lemma",
  "lexical_name": "card_eq",
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
  "slug": "card-eq--9572c1e14d0c7d0cedce31b3",
  "source": {
    "blob": "58bd84ccac8ac366e0c35745471db38ea7474381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9572c1e14d0c7d0cedce31b3bcdfeff7dce338e79c85ee8c335114c061a163ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d551be95-3afe-aeb4-3549-6176961ea237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma card_eq [Fintype α] : card (AddChar α ℂ) = card α := by
  obtain ⟨ι, _, n, hn, ⟨e⟩⟩ := AddCommGroup.equiv_directSum_zmod_of_finite' α
  classical
  have hn' i : NeZero (n i) := by have := hn i; exact ⟨by positivity⟩
  let f : α → AddChar α ℂ := fun a ↦ coeHom.compAddChar ((mkZModAux n <| e a).compAddMonoidHom e)
  have hf : Injective f := circleEquivComplex.injective.comp
    ((compAddMonoidHom_injective_left _ e.surjective).comp <| mkZModAux_injective.comp <|
      DFunLike.coe_injective.comp <| e.injective.comp Additive.ofMul.injective)
  exact (card_addChar_le _ _).antisymm (Fintype.card_le_of_injective _ hf)

/-- `ZMod n` is (noncanonically) isomorphic to its group of characters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58bd84ccac8ac366e0c35745471db38ea7474381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
