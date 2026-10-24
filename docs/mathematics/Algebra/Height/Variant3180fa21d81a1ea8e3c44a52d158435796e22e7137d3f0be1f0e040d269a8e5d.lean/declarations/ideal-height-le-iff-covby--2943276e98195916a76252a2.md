# Ideal.height_le_iff_covBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcd33cc9b8542f4a297a304e1fb55c2e4762f203",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cae4ea7b-1e1d-80da-a9df-f29269219a6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9690a08f-c428-f18f-2a51-9d26052b35be",
  "kind": "lemma",
  "lexical_name": "Ideal.height_le_iff_covBy",
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
  "slug": "ideal-height-le-iff-covby--2943276e98195916a76252a2",
  "source": {
    "blob": "dcd33cc9b8542f4a297a304e1fb55c2e4762f203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 216,
    "path": "GRWTSK/Algebra/Height/Variant3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2943276e98195916a76252a2c1ed692433b86e79d63e3c7447a242503059c534",
  "verification": {
    "reference": "docs/verification/Algebra/Height/Variant3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9690a08f-c428-f18f-2a51-9d26052b35be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.height_le_iff_covBy {p : Ideal R} {n : ℕ} [p.IsPrime] [IsNoetherianRing R] :
    p.height ≤ n ↔ ∀ q : Ideal R, q.IsPrime → q < p →
      (∀ q' : Ideal R, q'.IsPrime → q < q' → ¬ q' < p) → q.height < n := by
  rw [Ideal.height_le_iff]
  constructor
  · intro H q hq e _
    exact H q hq e
  · intro H q hq e
    obtain ⟨⟨x, hx⟩, hqx, hxp⟩ :=
      @exists_le_covBy_of_lt { I : Ideal R // I.IsPrime } ⟨q, hq⟩ ⟨p, ‹_›⟩ _ _ e
    exact (Ideal.height_mono hqx).trans_lt
      (H _ hx hxp.1 (fun I hI e ↦ hxp.2 (show Subtype.mk x hx < ⟨I, hI⟩ from e)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Height/Variant3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Height/Variant3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd33cc9b8542f4a297a304e1fb55c2e4762f203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
