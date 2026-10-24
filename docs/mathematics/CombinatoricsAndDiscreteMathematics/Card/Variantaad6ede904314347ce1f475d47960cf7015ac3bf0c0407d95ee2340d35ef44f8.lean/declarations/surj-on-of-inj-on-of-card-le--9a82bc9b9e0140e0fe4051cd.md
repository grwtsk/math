# surj_on_of_inj_on_of_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25f308b9-e648-d645-0efc-341b3e2f81e0",
  "kind": "lemma",
  "lexical_name": "surj_on_of_inj_on_of_card_le",
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
  "slug": "surj-on-of-inj-on-of-card-le--9a82bc9b9e0140e0fe4051cd",
  "source": {
    "blob": "ed53afe32a81d57228bcb2de64cf59329f758b5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 449,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantaad6ede904314347ce1f475d47960cf7015ac3bf0c0407d95ee2340d35ef44f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a82bc9b9e0140e0fe4051cda22ff901a217bb16026af0c2fdc9a08e5b99efb3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variantaad6ede904314347ce1f475d47960cf7015ac3bf0c0407d95ee2340d35ef44f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25f308b9-e648-d645-0efc-341b3e2f81e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surj_on_of_inj_on_of_card_le (f : ∀ a ∈ s, β) (hf : ∀ a ha, f a ha ∈ t)
    (hinj : ∀ a₁ a₂ ha₁ ha₂, f a₁ ha₁ = f a₂ ha₂ → a₁ = a₂) (hst : #t ≤ #s) :
    ∀ b ∈ t, ∃ a ha, b = f a ha := by
  let f' : s → β := fun a ↦ f a a.2
  have hinj' : Set.InjOn f' s.attach := fun x hx y hy hxy ↦ Subtype.ext (hinj _ _ x.2 y.2 hxy)
  have hmapsto' : Set.MapsTo f' s.attach t := fun x hx ↦ hf _ _
  intro b hb
  obtain ⟨a, ha, rfl⟩ := surjOn_of_injOn_of_card_le _ hmapsto' hinj' (by rwa [card_attach]) hb
  exact ⟨a, a.2, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variantaad6ede904314347ce1f475d47960cf7015ac3bf0c0407d95ee2340d35ef44f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantaad6ede904314347ce1f475d47960cf7015ac3bf0c0407d95ee2340d35ef44f8.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed53afe32a81d57228bcb2de64cf59329f758b5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
