# HasCountableSeparatingOn.subtype_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9af7a87-5a82-72ef-bc16-d833ce3b490f",
  "kind": "theorem",
  "lexical_name": "HasCountableSeparatingOn.subtype_iff",
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
  "slug": "hascountableseparatingon-subtype-iff--f5c7fd5eb511db4ad35c0f9d",
  "source": {
    "blob": "b5425c59f5619923ce068cce2e4eb8f915e5e63a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant477b479b689f1745e9ca6562e9baa49ccf8699f9bf6e1e7342e6c5b42b4eaeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5c7fd5eb511db4ad35c0f9daeb4c5c12307f59dbbfbadf2fe836745861dc7e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant477b479b689f1745e9ca6562e9baa49ccf8699f9bf6e1e7342e6c5b42b4eaeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9af7a87-5a82-72ef-bc16-d833ce3b490f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasCountableSeparatingOn.subtype_iff {α : Type*} {p : Set α → Prop} {t : Set α} :
    HasCountableSeparatingOn t (fun u ↦ ∃ v, p v ∧ (↑) ⁻¹' v = u) univ ↔
    HasCountableSeparatingOn α p t := by
  constructor <;> intro h
  · exact h.of_subtype <| fun s ↦ id
  rcases h with ⟨S, Sct, Sp, hS⟩
  use {Subtype.val ⁻¹' s | s ∈ S}, Sct.image _, ?_, ?_
  · rintro u ⟨t, tS, rfl⟩
    exact ⟨t, Sp _ tS, rfl⟩
  rintro x - y - hxy
  exact Subtype.val_injective <| hS _ (Subtype.coe_prop _) _ (Subtype.coe_prop _)
    fun s hs ↦ hxy (Subtype.val ⁻¹' s) ⟨s, hs, rfl⟩

namespace Filter

variable {α β : Type*} {l : Filter α} [CountableInterFilter l] {f g : α → β}

/-!
### Filters supported on a (sub)singleton

In this section we prove several versions of the following theorem. Let `l : Filter α` be a filter
with countable intersections property. Let `p : Set α → Prop` be a property such that there exists a
countable family of sets satisfying `p` and separating points of `α`. Then `l` is supported on
a subsingleton: there exists a subsingleton `t` such that `t ∈ l`.

With extra `Nonempty`/`Set.Nonempty` assumptions one can ensure that `t` is a singleton `{x}`.

If `s ∈ l`, then it suffices to assume that the countable family separates only points of `s`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant477b479b689f1745e9ca6562e9baa49ccf8699f9bf6e1e7342e6c5b42b4eaeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant477b479b689f1745e9ca6562e9baa49ccf8699f9bf6e1e7342e6c5b42b4eaeed.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5425c59f5619923ce068cce2e4eb8f915e5e63a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
