# recEmptyOption_of_card_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9d0df37c33750e31b378f9051558dac63145c0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e9bc665-a0f1-0b8c-7140-16f6ac146160",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af5bf7cf-2991-388f-b805-5747bac2f6b2",
  "kind": "theorem",
  "lexical_name": "recEmptyOption_of_card_pos",
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
  "slug": "recemptyoption-of-card-pos--01d3e130df5f9b24cd36a42b",
  "source": {
    "blob": "a9d0df37c33750e31b378f9051558dac63145c0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01d3e130df5f9b24cd36a42b69a59a0283d4640ce5dc72f9a934a70978eb16fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af5bf7cf-2991-388f-b805-5747bac2f6b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recEmptyOption_of_card_pos {P : Type u → Sort v}
    (finChoice : (n : ℕ) → Fin (n + 1))
    (congr : {α β : Type u} → (_ : FinEnum α) → (_ : FinEnum β) → card β = card α → P α → P β)
    (empty : P PEmpty.{u + 1})
    (option : {α : Type u} → FinEnum α → P α → P (Option α))
    (α : Type u) [FinEnum α] (h : 0 < card α) :
    recEmptyOption finChoice congr empty option α =
      congr (insertNone _ <| finChoice (card α - 1)) ‹_›
        (congrArg (· + 1) card_fin |>.trans <| (card α).succ_pred_eq_of_pos h).symm
        (option ULift.instFinEnum <|
          recEmptyOption finChoice congr empty option (ULift.{u} <| Fin (card α - 1))) := by
  conv => lhs; unfold recEmptyOption
  split
  · exact absurd (‹_› ▸ h) (card α).lt_irrefl
  · rcases Nat.succ.inj <| (card α).succ_pred_eq_of_pos h |>.trans ‹_› with rfl; rfl

/-- A recursor principle for finite-and-enumerable types, analogous to `Nat.recOn`.
It effectively says that every `FinEnum` is either `Empty` or `Option α`, up to an `Equiv` mediated
by `Fin`s of equal cardinality.
In contrast to the `Fintype` case, data can be transported along such an `Equiv`.
Also, since order matters, the choice of element that gets replaced by `Option.none` has
to be provided for every step.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant52fb1007a3f0018b7deb31995ea9bbf8dc6e07752fee27ee55d71b70af5b8677.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9d0df37c33750e31b378f9051558dac63145c0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
