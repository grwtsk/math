# lemma_5

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c0d917841c2db6d7a2345900fd6b538cec7f2bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a57760b2-2ea8-6987-af35-147a2c8d7e4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a0390d5-d20c-7027-6c81-efac7e6dd3a0",
  "kind": "lemma",
  "lexical_name": "lemma_5",
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
  "slug": "lemma-5--1c5b5808ff5adada240362aa",
  "source": {
    "blob": "9c0d917841c2db6d7a2345900fd6b538cec7f2bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantda3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c5b5808ff5adada240362aa1738b5b68284dc4bac1d6c3602c6c9d485ed8b71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantda3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a0390d5-d20c-7027-6c81-efac7e6dd3a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lemma_5 : ∀ p q : Prop, (¬q → ¬p) → (p → q) :=
  fun p ↦ fun q ↦
  fun hNQNP ↦
  fun hP ↦
    Or.elim (Classical.em q)
    (fun hQ ↦ hQ)
    (fun hNQ ↦
      let hNP := hNQNP hNQ
      False.elim (hNP hP))

/--
info: lemma_5 : ∀ (p q : Prop), (¬q → ¬p) → p → q

0 │          │ p            ├ Prop
1 │          │ q            ├ Prop
2 │          │ hNQNP        ├ ¬q → ¬p
3 │          │ hP           ├ p
4 │          │ Classical.em │ q ∨ ¬q
5 │          │ hQ           │ ┌ q
6 │5,5       │ ∀I           │ q → q
7 │          │ hNQ          │ ┌ ¬q
8 │2,7       │ ∀E           │ │ ¬p
10│8,3       │ ∀E           │ │ False
11│10        │ False.elim   │ │ q
12│7,11      │ ∀I           │ ¬q → q
13│4,6,12    │ Or.elim      │ q
14│0,1,2,3,13│ ∀I           │ ∀ (p q : Prop), (¬q → ¬p) → p → q
-/
#guard_msgs in #explode lemma_5


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantda3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantda3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c0d917841c2db6d7a2345900fd6b538cec7f2bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
