# iff_isCompactOpenCovered_sigmaMk

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
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fccd19c0-3936-8f86-7836-888bd9986be3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5defd02-167c-ec95-a982-cd7605fc3740",
  "kind": "lemma",
  "lexical_name": "iff_isCompactOpenCovered_sigmaMk",
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
  "slug": "iff-iscompactopencovered-sigmamk--368913c37a3189e63b362317",
  "source": {
    "blob": "67a8a0a0942dce9c72d5f63c1e238a04dfdfbfea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:368913c37a3189e63b362317e235a295a657015179828d361d6a1e1dcc8d635c",
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

Occurrence: `result:a5defd02-167c-ec95-a982-cd7605fc3740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_isCompactOpenCovered_sigmaMk :
    IsCompactOpenCovered f U ↔
      IsCompactOpenCovered (fun (_ : Unit) (p : Σ i : ι, X i) ↦ f p.1 p.2) U := by
  classical
  rw [iff_of_unique (ι := Unit)]
  refine ⟨fun ⟨s, hs, V, hc, hU⟩ ↦ ?_, fun ⟨V, hc, heq⟩ ↦ ?_⟩
  · refine ⟨⟨s.sigma fun i ↦ if h : i ∈ s then V i h else ∅, isOpen_sigma_iff.mpr ?_⟩, ?_, ?_⟩
    · intro i
      by_cases h : i ∈ s
      · simpa [h] using (V _ _).2
      · simp [h]
    · dsimp only
      exact Set.isCompact_sigma hs fun i ↦ (by simp_all)
    · aesop
  · obtain ⟨s, t, hs, hc, heq'⟩ := hc.sigma_exists_finite_sigma_eq
    have (i : ι) (hi : i ∈ s) : IsOpen (t i) := by
      rw [← Set.mk_preimage_sigma (t := t) hi]
      exact isOpen_sigma_iff.mp (heq' ▸ V.2) i
    refine ⟨s, hs, fun i hi ↦ ⟨t i, this i hi⟩, fun i _ ↦ hc i, ?_⟩
    simp_rw [coe_mk, ← heq, ← heq', Set.image_sigma_eq_iUnion, Function.comp_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67a8a0a0942dce9c72d5f63c1e238a04dfdfbfea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
