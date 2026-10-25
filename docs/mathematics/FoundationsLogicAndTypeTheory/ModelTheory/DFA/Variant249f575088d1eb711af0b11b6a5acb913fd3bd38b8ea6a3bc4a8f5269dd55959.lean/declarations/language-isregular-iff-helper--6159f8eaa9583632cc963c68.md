# Language.isRegular_iff.helper.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c875c356-4401-2e05-d1f1-2e71ed1cfe39",
  "kind": "lemma",
  "lexical_name": "Language.isRegular_iff.helper.",
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
  "slug": "language-isregular-iff-helper--6159f8eaa9583632cc963c68",
  "source": {
    "blob": "ddce8cb42ee91c7093d0ee6b461bc77f5456189c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 278,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6159f8eaa9583632cc963c682c7826e20897e52fd155c2344913547397e83abf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c875c356-4401-2e05-d1f1-2e71ed1cfe39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma Language.isRegular_iff.helper.{v'} {T : Type u} {L : Language T}
    (hL : ∃ σ : Type v, ∃ _ : Fintype σ, ∃ M : DFA T σ, M.accepts = L) :
    ∃ σ' : Type v', ∃ _ : Fintype σ', ∃ M : DFA T σ', M.accepts = L :=
  have ⟨σ, _, M, hM⟩ := hL
  have ⟨σ', ⟨f⟩⟩ := Small.equiv_small.{v', v} (α := σ)
  ⟨σ', Fintype.ofEquiv σ f, M.reindex f, hM ▸ DFA.accepts_reindex M f⟩

/--
A language is regular if and only if it is defined by a DFA with finite states.

This is more general than using the definition of `Language.IsRegular` directly, as the state type
`σ` is universe-polymorphic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddce8cb42ee91c7093d0ee6b461bc77f5456189c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
