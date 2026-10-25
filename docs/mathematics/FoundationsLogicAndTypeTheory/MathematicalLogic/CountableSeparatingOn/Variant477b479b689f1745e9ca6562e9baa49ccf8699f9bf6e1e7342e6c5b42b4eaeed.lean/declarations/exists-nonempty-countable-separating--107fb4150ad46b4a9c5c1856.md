# exists_nonempty_countable_separating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24ceaf68-b6b5-f771-813a-14e35765ff47",
  "kind": "theorem",
  "lexical_name": "exists_nonempty_countable_separating",
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
  "slug": "exists-nonempty-countable-separating--107fb4150ad46b4a9c5c1856",
  "source": {
    "blob": "b5425c59f5619923ce068cce2e4eb8f915e5e63a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant477b479b689f1745e9ca6562e9baa49ccf8699f9bf6e1e7342e6c5b42b4eaeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:107fb4150ad46b4a9c5c185651ab3ec658065cb7fbc46d059d12a8c747436591",
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

Occurrence: `result:24ceaf68-b6b5-f771-813a-14e35765ff47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nonempty_countable_separating (α : Type*) {p : Set α → Prop} {s₀} (hp : p s₀)
    (t : Set α) [HasCountableSeparatingOn α p t] :
    ∃ S : Set (Set α), S.Nonempty ∧ S.Countable ∧ (∀ s ∈ S, p s) ∧
      ∀ x ∈ t, ∀ y ∈ t, (∀ s ∈ S, x ∈ s ↔ y ∈ s) → x = y :=
  let ⟨S, hSc, hSp, hSt⟩ := exists_countable_separating α p t
  ⟨insert s₀ S, insert_nonempty _ _, hSc.insert _, forall_insert_of_forall hSp hp,
    fun x hx y hy hxy ↦ hSt x hx y hy <| forall_of_forall_insert hxy⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant477b479b689f1745e9ca6562e9baa49ccf8699f9bf6e1e7342e6c5b42b4eaeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CountableSeparatingOn/Variant477b479b689f1745e9ca6562e9baa49ccf8699f9bf6e1e7342e6c5b42b4eaeed.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5425c59f5619923ce068cce2e4eb8f915e5e63a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
