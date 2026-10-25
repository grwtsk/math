# mk_subtype_le_of_countable_eventually_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c9102d23a2089d73c823cfa2c2a13a4adfbef14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d8bc511-3dda-92e1-6703-5e5f368d6875",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6fef6e87-d848-a2fb-6824-39ead9282cd6",
  "kind": "lemma",
  "lexical_name": "mk_subtype_le_of_countable_eventually_mem",
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
  "slug": "mk-subtype-le-of-countable-eventually-mem--d1f93974b9314c266aff5fbf",
  "source": {
    "blob": "5c9102d23a2089d73c823cfa2c2a13a4adfbef14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1f93974b9314c266aff5fbf9c99d2164fef7c6de13f9eb4a11a4e9eef9f8a85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fef6e87-d848-a2fb-6824-39ead9282cd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_subtype_le_of_countable_eventually_mem {α : Type u} {ι : Type v} {a : Cardinal}
    [Countable ι] {f : ι → Set α} {l : Filter ι} [NeBot l]
    {t : Set α} (ht : ∀ x ∈ t, ∀ᶠ i in l, x ∈ f i)
    (h'f : ∀ i, #(f i) ≤ a) : #t ≤ a := by
  let g : ULift.{u, v} ι → Set (ULift.{v, u} α) := (ULift.down ⁻¹' ·) ∘ f ∘ ULift.down
  suffices #(ULift.down.{v} ⁻¹' t) ≤ Cardinal.lift.{v, u} a by simpa
  let l' : Filter (ULift.{u} ι) := Filter.map ULift.up l
  have : NeBot l' := map_neBot
  apply mk_subtype_le_of_countable_eventually_mem_aux (ι := ULift.{u} ι) (l := l') (f := g)
  · intro x hx
    simpa only [Function.comp_apply, mem_preimage, eventually_map] using ht _ hx
  · intro i
    simpa [g] using h'f i.down

/-- If a space is eventually covered by a countable family of sets, all with cardinality at
most `a`, then the cardinality of the space is also bounded by `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c9102d23a2089d73c823cfa2c2a13a4adfbef14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
