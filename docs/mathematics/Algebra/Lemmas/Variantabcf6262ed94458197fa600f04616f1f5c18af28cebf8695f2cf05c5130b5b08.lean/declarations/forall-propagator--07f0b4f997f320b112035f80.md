# forall_propagator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa45781acb3514380b89cbe57f048e0403f59999",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:460ab9d5-ffbd-7a50-ccd3-05ca34a306f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d85172e3-c2e9-dc1b-49ff-8f70b6505c99",
  "kind": "theorem",
  "lexical_name": "forall_propagator",
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
  "slug": "forall-propagator--07f0b4f997f320b112035f80",
  "source": {
    "blob": "aa45781acb3514380b89cbe57f048e0403f59999",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 148,
    "path": "GRWTSK/Algebra/Lemmas/Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07f0b4f997f320b112035f80d8e0b364f5c08aa69401462855f3dc87a28bcccd",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d85172e3-c2e9-dc1b-49ff-8f70b6505c99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall_propagator (p : Prop) (q : p → Prop) (q' : Prop) (h₁ : p = True) (h₂ : q (of_eq_true h₁) = q') : (∀ hp : p, q hp) = q' := by
  apply propext; apply Iff.intro
  · intro h'; exact Eq.mp h₂ (h' (of_eq_true h₁))
  · intro h'; intros; exact Eq.mpr h₂ h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variantabcf6262ed94458197fa600f04616f1f5c18af28cebf8695f2cf05c5130b5b08.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa45781acb3514380b89cbe57f048e0403f59999` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
