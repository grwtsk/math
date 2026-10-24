# of_iUnion_eq_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67a8a0a0942dce9c72d5f63c1e238a04dfdfbfea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2dd93ec7-e766-4352-195c-913b477fa670",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9915ce6e-08d0-4c0f-7094-0fdb800fb68f",
  "kind": "lemma",
  "lexical_name": "of_iUnion_eq_of_finite",
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
  "slug": "of-iunion-eq-of-finite--5c9946903083582bca2ad6fb",
  "source": {
    "blob": "67a8a0a0942dce9c72d5f63c1e238a04dfdfbfea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c9946903083582bca2ad6fb01f81de2712388a2e1995efc08ec211acf21e397",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9915ce6e-08d0-4c0f-7094-0fdb800fb68f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_iUnion_eq_of_finite {κ : Type*} [Finite κ] (s : κ → Set S) (hs : ⋃ i, s i = U)
    (H : ∀ i, IsCompactOpenCovered f (s i)) : IsCompactOpenCovered f U := by
  rw [iff_isCompactOpenCovered_sigmaMk, iff_of_unique]
  have (i : κ) : ∃ (V : Opens (Σ i, X i)), IsCompact V.1 ∧ (f _ ·.snd) '' V.1 = s i := by
    convert! H i; rw [iff_isCompactOpenCovered_sigmaMk, iff_of_unique]
  choose V hVeq hVc using this
  exact ⟨⨆ i, V i, by simpa using isCompact_iUnion hVeq, by simp_all [Set.image_iUnion, ← hs]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67a8a0a0942dce9c72d5f63c1e238a04dfdfbfea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
