# dite_comp_equiv_update

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f925993ca721d0128819a2bf98f922708842507",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 621,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90eaaedccc63f81347c8918ffa50665fd01c8bca02585c104b3d3f484db673a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2af58bcf-22a4-1539-8418-d24fe96b568c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1fb76c6-25c5-0de6-0201-1ae87d5e4f99",
  "kind": "theorem",
  "lexical_name": "dite_comp_equiv_update",
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
  "slug": "dite-comp-equiv-update--0986d8a1e9bd87dfd9e9bdb6",
  "source": {
    "blob": "4f925993ca721d0128819a2bf98f922708842507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 636,
    "line": 621,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant90eaaedccc63f81347c8918ffa50665fd01c8bca02585c104b3d3f484db673a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0986d8a1e9bd87dfd9e9bdb6799b3d092e0169eb7beb62190f4e723e23d127b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant90eaaedccc63f81347c8918ffa50665fd01c8bca02585c104b3d3f484db673a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1fb76c6-25c5-0de6-0201-1ae87d5e4f99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–636.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dite_comp_equiv_update
    {α E : Type*} {β γ : Sort*} {p : α → Prop} [EquivLike E {x // p x} β]
    (e : E) (v : β → γ) (w : α → γ) (j : β) (x : γ)
    [DecidableEq β] [DecidableEq α] [∀ j, Decidable (p j)] :
    (fun i : α => if h : p i then (update v j x) (e ⟨i, h⟩) else w i) =
      update (fun i : α => if h : p i then v (e ⟨i, h⟩) else w i) (EquivLike.inv e j) x := by
  ext i
  by_cases h : p i
  · simp only [h, update_apply]
    aesop
  · grind

section Swap

variable {α : Type*} [DecidableEq α] {a b : α} {s : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant90eaaedccc63f81347c8918ffa50665fd01c8bca02585c104b3d3f484db673a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant90eaaedccc63f81347c8918ffa50665fd01c8bca02585c104b3d3f484db673a7.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f925993ca721d0128819a2bf98f922708842507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
