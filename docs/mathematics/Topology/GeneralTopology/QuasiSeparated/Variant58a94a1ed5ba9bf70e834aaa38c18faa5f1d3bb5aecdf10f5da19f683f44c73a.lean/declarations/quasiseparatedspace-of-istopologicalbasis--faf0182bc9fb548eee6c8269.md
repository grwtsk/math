# QuasiSeparatedSpace.of_isTopologicalBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5968738a-34d1-908c-9030-aa9f91628cc4",
  "kind": "lemma",
  "lexical_name": "QuasiSeparatedSpace.of_isTopologicalBasis",
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
  "slug": "quasiseparatedspace-of-istopologicalbasis--faf0182bc9fb548eee6c8269",
  "source": {
    "blob": "6105ae8fd9b16eb5829729a3df4562fdfefd60f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faf0182bc9fb548eee6c8269b4eb40d219ca46c7e17bad3e0d997aacae75beca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5968738a-34d1-908c-9030-aa9f91628cc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuasiSeparatedSpace.of_isTopologicalBasis {ι : Type*} {b : ι → Set α}
    (basis : IsTopologicalBasis (range b)) (isCompact_inter : ∀ i j, IsCompact (b i ∩ b j)) :
    QuasiSeparatedSpace α where
  inter_isCompact U V hUopen hUcomp hVopen hVcomp := by
    have aux := isCompact_open_iff_eq_finite_iUnion_of_isTopologicalBasis b basis fun i ↦ by
      simpa using isCompact_inter i i
    obtain ⟨s, hs, rfl⟩ := (aux _).1 ⟨hUcomp, hUopen⟩
    obtain ⟨t, ht, rfl⟩ := (aux _).1 ⟨hVcomp, hVopen⟩
    rw [iUnion₂_inter_iUnion₂]
    exact hs.isCompact_biUnion fun i hi ↦ ht.isCompact_biUnion fun j hj ↦ isCompact_inter ..

section QuasiSeparatedSpace
variable [QuasiSeparatedSpace α] {U V : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant58a94a1ed5ba9bf70e834aaa38c18faa5f1d3bb5aecdf10f5da19f683f44c73a.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6105ae8fd9b16eb5829729a3df4562fdfefd60f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
