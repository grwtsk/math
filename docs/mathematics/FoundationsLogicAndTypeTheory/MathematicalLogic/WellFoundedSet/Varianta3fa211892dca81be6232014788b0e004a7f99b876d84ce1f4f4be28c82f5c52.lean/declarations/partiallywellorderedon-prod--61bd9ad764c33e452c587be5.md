# PartiallyWellOrderedOn.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e92c56b3bdbf3e5dea5b4bbb9ee92230d0fa75df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c56f0e90-f8aa-b726-3954-51f5ea7aab19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34c4ecaa-67dd-220e-fcd6-26fc614ac00f",
  "kind": "theorem",
  "lexical_name": "PartiallyWellOrderedOn.prod",
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
  "slug": "partiallywellorderedon-prod--61bd9ad764c33e452c587be5",
  "source": {
    "blob": "e92c56b3bdbf3e5dea5b4bbb9ee92230d0fa75df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 377,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61bd9ad764c33e452c587be556029c93796a6a3e69789d8b5f1a71a9da543b3a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34c4ecaa-67dd-220e-fcd6-26fc614ac00f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem PartiallyWellOrderedOn.prod {t : Set β} (hs : PartiallyWellOrderedOn s r)
    (ht : PartiallyWellOrderedOn t r') :
    PartiallyWellOrderedOn (s ×ˢ t) fun x y : α × β => r x.1 y.1 ∧ r' x.2 y.2 := by
  rw [partiallyWellOrderedOn_iff_exists_lt]
  intro f hf
  obtain ⟨g₁, h₁⟩ := hs.exists_monotone_subseq fun n => (hf n).1
  obtain ⟨m, n, hlt, hle⟩ := ht.exists_lt fun n => (hf _).2
  exact ⟨g₁ m, g₁ n, g₁.strictMono hlt, h₁ _ _ hlt.le, hle⟩

/-- A version of **Dickson's lemma** on finite product of well-quasi-ordered sets. See
`WellQuasiOrdered.pi` when the type `α i` is well-quasi-ordered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e92c56b3bdbf3e5dea5b4bbb9ee92230d0fa75df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
