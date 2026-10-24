# filter_image_quotient_mk''_isDiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd109e582358b0055407f41912a3327d6eb7d1c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 729,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f180f7a92d13131925dc728c6922fc42e973236b945f8f1134bcfcb53f1a0e65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9081daf1-9b43-cbf3-ccb2-d7e0ad5b6f12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd8fbcb3-e302-b4bd-8a82-125172ed0ee0",
  "kind": "theorem",
  "lexical_name": "filter_image_quotient_mk''_isDiag",
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
  "slug": "filter-image-quotient-mk-isdiag--33edf3896a2abb06aa5dabec",
  "source": {
    "blob": "dd109e582358b0055407f41912a3327d6eb7d1c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 729,
    "path": "GRWTSK/Topology/GeneralTopology/Sym2/Variantf180f7a92d13131925dc728c6922fc42e973236b945f8f1134bcfcb53f1a0e65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33edf3896a2abb06aa5dabec94f36e5916cb74a0464c8641a270f98394af3ea1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sym2/Variantf180f7a92d13131925dc728c6922fc42e973236b945f8f1134bcfcb53f1a0e65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd8fbcb3-e302-b4bd-8a82-125172ed0ee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 729–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_image_quotient_mk''_isDiag [DecidableEq α] (s : Finset α) :
    ((s ×ˢ s).image Quotient.mk'').filter IsDiag = s.diag.image Quotient.mk'' := by
  ext z
  induction' z using Sym2.inductionOn
  simp only [mem_image, mem_diag, exists_prop, mem_filter, Prod.exists, mem_product]
  constructor
  · rintro ⟨⟨a, b, ⟨ha, hb⟩, (h : Quotient.mk _ _ = _)⟩, hab⟩
    rw [← h, Sym2.mk''_isDiag_iff] at hab
    exact ⟨a, b, ⟨ha, hab⟩, h⟩
  · rintro ⟨a, b, ⟨ha, rfl⟩, h⟩
    rw [← h]
    exact ⟨⟨a, a, ⟨ha, ha⟩, rfl⟩, rfl⟩
#align sym2.filter_image_quotient_mk_is_diag Sym2.filter_image_quotient_mk''_isDiag

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sym2/Variantf180f7a92d13131925dc728c6922fc42e973236b945f8f1134bcfcb53f1a0e65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sym2/Variantf180f7a92d13131925dc728c6922fc42e973236b945f8f1134bcfcb53f1a0e65.lean#L729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd109e582358b0055407f41912a3327d6eb7d1c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
